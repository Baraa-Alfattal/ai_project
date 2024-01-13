import 'package:ai_project/constants.dart';
import 'package:flutter/material.dart';

class Rock {
  static List<Rock> rocks = [];

  // Fields
  int index = -1;
  int status = Status.dead;
  late int owner;

  // Rockr();

  // Default constructor
  Rock(int i, int j, int k) {
    rocks.add(this);
  }

  Rock.withValues(this.index, this.status, this.owner) {
    rocks.add(this);
  }

  // Copy constructor
  Rock.copy(Rock rock) {
    index = rock.index;
    status = rock.status;
    owner = rock.owner;

    rocks.add(this);
  }

  // Deep Check
  bool equals(Rock obj) {
    return obj.index == index;
  }

  void kill() {
    index = -1;
    status = Status.dead;
  }

  // not correct
  bool canKillRock(Rock obj) {
    if (obj == this) return false;
    if (owner == obj.owner) return false;

    var allowed = [Status.mainPath, Status.readyToEnter];
    if (allowed.every((state) => obj.status != state)) return false;

    if (status == Status.mainPath || status == Status.readyToEnter) {
      if (index == obj.index) return true;
    }

    return false;
  }

  void win() {
    index = -1;
    status = Status.win;
  }

  // Rock sub(Rock obj) {
  //   int row = (this.rowIndex - obj.rowIndex).abs();
  //   int column = (this.columnIndex - obj.columnIndex).abs();
  //   Rock p = Rock();
  //   p.setRowIndex(row);
  //   p.setColumnIndex(column);
  //   return p;
  // }

  int getIndex() {
    return index;
  }

  void setIndex(int index) {
    this.index = index;
  }

  // not correct
  List<Rock> getNextRocks(int steps) {
    var allowed = [Status.mainPath, Status.readyToEnter, Status.protected];
    if (status != Status.mainPath) return [];

    var nextRocks = <Rock>[];

    for (var rock in rocks) {
      if (rock == this) continue;
      if (allowed.every((state) => rock.status != state)) continue;
      if (rock.index == index + steps) continue;
      nextRocks.add(rock);
    }

    return nextRocks;
  }

  bool canMove(int steps) {
    if (steps <= 0) return false;

    var immovable = status == Status.dead || status == Status.win;
    if (immovable) return false;

    // checks for can't enter the win space cases
    if (status == Status.mainPath) {
      if (owner == owners[0]) {
        int stepsToEnd = Game.mainPathEnd - index;
        if (steps > stepsToEnd + 8) return false;
      } else {
        // see for when rock is on the left side of the board only
        if (index < Game.area3Peak) {
          int stepsToEnd = Game.area3Peak - 1 - index;
          if (steps > stepsToEnd + 8) return false;
        }
      }
    } else if (status == Status.readyToEnter) {
      if (steps > 8) return false;
    } else if (status == Status.subPathEnd) {
      if (steps - index > 1) return false;
    }

    var nextCellRocks = getNextRocks(steps);

    if (nextCellRocks.any(
      (rock) => rock.owner != owner && rock.status == Status.protected,
    )) {
      return false;
    }

    return true;
  }

  // not correct for killing
  void move(int steps) {
    if (!canMove(steps)) return;

    if (owner == owners[0]) {
      if (status == Status.mainPath) {
        var stepsToEnd = Game.mainPathEnd - index;

        if (steps == stepsToEnd + 1) {
          index = 0;
          status = Status.readyToEnter;
        } else if (steps <= stepsToEnd) {
          index += steps;
        } else {
          status = Status.subPathEnd;
          index = 6;
          var newStep = steps - stepsToEnd - 2;
          moveInSupPath(newStep);
        }

        var rocksToKill = getNextRocks(steps);
        rocksToKill.forEach((rock) {
          if (canKillRock(rock)) {
            rock.kill();
          }
        });
      } else if (status == Status.readyToEnter) {
        status = Status.subPathEnd;
        index = 6;
        var newStep = steps - 1;
        moveInSupPath(newStep);
      } else {
        moveInSupPath(steps);
      }

      return;
    }

    // owner is owners[1]
    if (status == Status.mainPath) {
      var stepsToEnd = Game.area3Peak - 1 - index;
      // rock is on the right side of the board
      if (stepsToEnd < 0) {
        var stepsToMainPathEnd = Game.mainPathEnd - index;
        if (steps > stepsToMainPathEnd) {
          index = steps - stepsToMainPathEnd - 1;
        } else {
          index += steps;
        }
      }
      // rock is on the left side of the board
      else {
        if (steps == stepsToEnd + 1) {
          index = 0;
          status = Status.readyToEnter;
        } else if (steps <= stepsToEnd) {
          index += steps;
        } else {
          status = Status.subPathEnd;
          index = 6;
          var newStep = steps - stepsToEnd - 2;
          moveInSupPath(newStep);
        }
      }

      var rocksToKill = getNextRocks(steps);
      rocksToKill.forEach((rock) {
        if (canKillRock(rock)) {
          rock.kill();
        }
      });
    } else if (status == Status.readyToEnter) {
      status = Status.subPathEnd;
      index = 6;
      var newStep = steps - 1;
      moveInSupPath(newStep);
    } else {
      moveInSupPath(steps);
    }
  }

  void moveInSupPath(int steps) {
    if (status == Status.subPathStart) {
      if (owner == owners[0]) {
        var stepsToEnd = 6 - index;
        if (steps > stepsToEnd) {
          status = Status.mainPath;
          index = Game.mainPathStart;
          move(steps - stepsToEnd - 1);
        } else {
          index += steps;
        }
      } else {
        var stepsToEnd = 6 - index;
        if (steps > stepsToEnd) {
          status = Status.mainPath;
          index = Game.area3Peak;
          move(steps - stepsToEnd - 1);
        } else {
          index += steps;
        }
      }

      return;
    }

    index -= steps;
    if (index < 0) {
      status == Status.win;
    }
  }

  void setStatus(int status) {
    this.status = status;
  }

  int getStatus() {
    return status;
  }

  void setOwner(int owner) {
    this.owner = owner;
  }

  int getOwner() {
    return owner;
  }
}
