import 'GameModel.dart';

class State implements Comparable<State> {
  State? parent;
  late GameModel value;
  int cost = 1;
  int h = 0;

  State(State? parent, GameModel value) {
    this.parent = parent;
    this.value = value;
  }

  State.withCost(State? parent, GameModel value, int cost) {
    this.parent = parent;
    this.value = value;
    this.cost = cost;
  }

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
}
