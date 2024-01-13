import 'dart:io';

import 'package:ai_project/Models/Seashell.dart';

import '../Controller/Actions.dart';
import '../Models/GameModel.dart';
import '../Models/Positions.dart';

class UserPlay {
  late GameModel gameModel;

  UserPlay(GameModel gameModel) {
    this.gameModel = gameModel;
    play();
  }

  void play() {
    while (true) {
      // Select level ignored now

      Actions.printState(gameModel);

      if (Actions.isFinal(gameModel)) {
        print("\n ============ GAME FINISHED ==============\n");
        return;
      }

      // رمي الاحجار
      Seashell seashell = Seashell();
      var result = seashell.throwRandomSeashells();
      
      

      // Print Moves Able Positions
      List<Positions> positions = Actions.checkMoves(gameModel);

      for (var position in positions) {
        stdout.write("\t$position");
      }
      print('\n');

      String key = stdin.readLineSync()!;

      if (key.toUpperCase() == 'E') {
        print("\n ============ EXIT =============\n");
        return;
      }

      keyAction(key);
    }
  }

  void keyAction(String key) {
    // switch (key.toUpperCase()) {
    //   case 'W':
    //     if (MoveCheckAction.checkUpMove(gameModel) ||
    //         MoveCheckAction.checkUpMoveP(gameModel)) {
    //       gameModel = Actions.move(gameModel, Positions.UP);
    //     }
    //     break;

    //   case 'S':
    //     if (MoveCheckAction.checkDownMove(gameModel) ||
    //         MoveCheckAction.checkDownMoveP(gameModel)) {
    //       gameModel = Actions.move(gameModel, Positions.DOWN);
    //     }
    //     break;

    //   case 'A':
    //     if (MoveCheckAction.checkLeftMove(gameModel) ||
    //         MoveCheckAction.checkLeftMoveP(gameModel)) {
    //       gameModel = Actions.move(gameModel, Positions.LEFT);
    //     }
    //     break;

    //   case 'D':
    //     if (MoveCheckAction.checkRightMove(gameModel) ||
    //         MoveCheckAction.checkRightMoveP(gameModel)) {
    //       gameModel = Actions.move(gameModel, Positions.RIGHT);
    //     }
    //     break;
    // }
  }
}
