import '../Models/GameModel.dart';
import '../Models/Positions.dart';

class Actions {
  // Get Moves Able Positions
  static List<Positions> checkMoves(GameModel game) {
    List<Positions> data = [];

    // if(MoveCheckAction.CheckUpMove(game)||MoveCheckAction.CheckUpMoveP(game)) {
    //     data.add(Positions.UP);
    // }

    // if(MoveCheckAction.CheckDownMove(game)||MoveCheckAction.CheckDownMoveP(game))
    //     data.add(Positions.DOWN);

    // if(MoveCheckAction.CheckLeftMove(game)||MoveCheckAction.CheckLeftMoveP(game))
    //     data.add(Positions.LEFT);

    // if(MoveCheckAction.CheckRightMove(game)||MoveCheckAction.CheckRightMoveP(game))
    //     data.add(Positions.RIGHT);

    return data;
  }

  // public static GameModel Move(GameModel game,  Positions newPosition) {
  //     switch (newPosition) {
  //         case UP:
  //             return MoveOnAction.MoveUp(game);
  //         case DOWN:
  //             return MoveOnAction.MoveDown(game);
  //         case LEFT:
  //             return MoveOnAction.MoveLeft(game);
  //         default:
  //             return MoveOnAction.MoveRight(game);
  //     }
  // }

  static List<GameModel> getNextStates(GameModel gameModel) {
    List<GameModel> nextStates = [];

    List<Positions> moves = checkMoves(gameModel);

    // Move to all positions
    // for(var movePosition : moves)
    // {
    //     nextStates.add(Move(gameModel,movePosition));
    // }

    return nextStates;
  }

  static bool isFinal(GameModel game) {
    // if (game.rowBoundary == 6 && g[2][4] == 3 && g[4][4] == 3) {
    //   return true;
    // } else if (game.rowBoundary == 7 && g[4][3] == 3 && g[4][4] == 3) {
    //   return true;
    // }

    return false;
  }

  static bool equals(GameModel game1, GameModel game2) {
    return game1 == game2;
  }

  // Print Game Board
  static void printState(GameModel game) {
    // List<List<String>> board = game.board;

    // // print("Move to: ${game.lastPosition.name}");

    // for (int i = 0; i < game.rowBoundary; i++) {
    //   for (int j = 0; j < game.columnBoundary; j++) {
    //     if (board[i][j] == 1)
    //       print(" | | ");
    //     else if (board[i][j] == 2)
    //       print("*");
    //     else if (board[i][j] == 4)
    //       print("&");
    //     else
    //       print("     ");
    //   }
    //   print("");
    // }
    // print("\n");
    // print("Player Position At Cell(${game.player.rowIndex},${game.player.columnIndex})\n");
  }
}
