import 'package:ai_project/Models/State.dart';
import 'package:ai_project/constants.dart';

import 'rock.dart';
import 'Seashell.dart';

class GameModel {
  // row boundary
  // player cell position
  late Rock rock1;
  late Rock rock2;
  late Rock rock3;
  late Rock rock4;
  late Rock rock5;
  late Rock rock6;
  late Rock rock7;
  late Rock rock8;

  static State? root;
  static var currentPlayer = owners[0];

  static void swapTurn() {
    if (currentPlayer == owners[0]) currentPlayer = owners[1];
    if (currentPlayer == owners[1]) currentPlayer = owners[0];
  }

  // Constructor
  GameModel(
    this.rock1,
    this.rock2,
    this.rock3,
    this.rock4,
    this.rock5,
    this.rock6,
    this.rock7,
    this.rock8,
  ) {
    root ??= State(this);
  }

  GameModel.fromModel(GameModel model) {
    rock1 = model.rock1.clone();
    rock2 = model.rock2.clone();
    rock3 = model.rock3.clone();
    rock4 = model.rock4.clone();
    rock5 = model.rock5.clone();
    rock6 = model.rock6.clone();
    rock7 = model.rock7.clone();
    rock8 = model.rock8.clone();

    root ??= State(this);
  }

  List<Rock> getRocks() {
    return [
      rock1,
      rock2,
      rock3,
      rock4,
      rock5,
      rock6,
      rock7,
      rock8,
    ];
  }

  GameModel clone() {
    return GameModel.fromModel(this);
  }
}
