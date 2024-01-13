import 'rock.dart';
import 'Seashell.dart';
import 'Positions.dart';

class GameModel {
  // row boundary
  // player cell position
  Rock? rock1;
  Rock? rock2;
  Rock? rock3;
  Rock? rock4;
  Rock? rock5;
  Rock? rock6;
  Rock? rock7;
  Rock? rock8;

  GameModel? gameModel;

  Positions? lastPosition;

  // Constructor
  GameModel(Rock? rock1, Rock? rock2, Rock? rock3, Rock? rock4, Rock? rock5,
      Rock? rock6, Rock? rock7, Rock? rock8, GameModel? gameModel) {
    this.rock1 = rock1;
    this.rock2 = rock2;
    this.rock3 = rock3;
    this.rock4 = rock4;
    this.rock5 = rock5;
    this.rock6 = rock6;
    this.rock7 = rock7;
    this.rock8 = rock8;
    this.gameModel = gameModel;
  }

  // Getter Methods

  Positions? getLastPosition() {
    return lastPosition;
  }

  void setLastPosition(Positions lastPosition) {
    this.lastPosition = lastPosition;
  }

  GameModel? getGameModel() {
    return this.gameModel;
  }
}
