import 'package:ai_project/Models/Pair.dart';
import 'package:ai_project/Models/rock.dart';
import 'package:ai_project/constants.dart';
import 'GameModel.dart';

class State implements Comparable<State> {
  State? parent;
  List<Pair<State, double>> children = [];
  late GameModel value;
  int cost = 1;
  int h = 0;

  State(this.value);

  State.withParent(this.parent, this.value);

  State.withCost(this.parent, this.value, this.cost);

  bool hasPrevious() {
    return parent != null;
  }

  State? getParent() {
    return parent;
  }

  void setParent(State? parent) {
    this.parent = parent;
  }

  GameModel getValue() {
    return value;
  }

  void setValue(GameModel value) {
    this.value = value;
  }

  int getCost() {
    return cost;
  }

  void setCost(int cost) {
    this.cost = cost;
  }

  @override
  int compareTo(State other) {
    return (cost + h).compareTo(other.cost + other.h);
  }

  int getH() {
    return h;
  }

  void setH(int h) {
    this.h = h;
  }

  List<Pair<State, double>> nextState([int depth = 1]) {
    if (depth > SeaShells.maxRoleCount) return [];

    var states = <Pair<State, double>>[];

    var currModel = value;
    for (var role in SeaShells.roles) {
      var rocks = currModel.getRocks();
      var i = 0;
      for (var rock in rocks) {
        bool revived = false;
        if (rock.owner != GameModel.currentPlayer) continue;
        if (SeaShells.haveExtra(role.owner) && rock.status == Status.dead) {
          rock.revive();
          revived = true;
        }
        if (!rock.canMove(role.value, currModel)) continue;

        if (!revived && SeaShells.haveExtra(role.owner)) {
          for (var rock in rocks) {
            if (rock.owner != GameModel.currentPlayer) continue;
            if (!rock.canMove(role.value + 1, currModel)) continue;

            var newModel = currModel.clone();
            var newRocks = newModel.getRocks();
            var rock2Move = newRocks[i];
            rock2Move.move(role.value, newModel);

            var newState = State(newModel);

            if (SeaShells.roleAgain(role.owner)) {
              newState.nextState(depth + 1);
            }

            var child = Pair(newState, SeaShells.rolePossibility(role.owner));
            children.add(child);
            states.add(child);
          }
        } else {
          var newModel = currModel.clone();
          var newRocks = newModel.getRocks();
          var rock2Move = newRocks[i];
          rock2Move.move(role.value, newModel);

          var newState = State(newModel);

          if (SeaShells.roleAgain(role.owner)) {
            newState.nextState(depth + 1);
          }

          var child = Pair(newState, SeaShells.rolePossibility(role.owner));
          children.add(child);
          states.add(child);
        }

        i++;
      }
    }

    return states;
  }
}
