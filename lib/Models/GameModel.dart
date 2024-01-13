import 'Pair.dart';
import 'Seashell.dart';
import 'Positions.dart';

class GameModel {
  // row boundary
  // player cell position
  Pair? rock1;
  Pair? rock2;
  Pair? rock3;
  Pair? rock4;
  Pair? rock5;
  Pair? rock6;
  Pair? rock7;
  Pair? rock8;

  GameModel? gameModel;


  Positions? lastPosition;

  // Constructor
  GameModel(Pair? rock1, Pair? rock2, Pair? rock3, Pair? rock4, Pair? rock5,
      Pair? rock6, Pair? rock7, Pair? rock8, GameModel? gameModel) {
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
