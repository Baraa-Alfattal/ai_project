

// import '../Models/GameModel.dart';

// class MoveCheckAction {
//   static bool checkLeftMove(GameModel game) {
//     int cellRow = game.player.rowIndex;
//     int cellColumn = game.player.columnIndex;

//     return cellColumn - 1 >= 0 &&
//         game.board[cellRow][cellColumn - 1] != 0 &&
//         game.board[cellRow][cellColumn - 1] != 3;
//   }

//   static bool checkLeftMoveP(GameModel game) {
//     int cellRow = game.player.rowIndex;
//     int cellColumn = game.player.columnIndex;

//     return cellColumn - 1 >= 0 &&
//         game.board[cellRow][cellColumn - 1] == 3 &&
//         game.board[cellRow][cellColumn - 2] != 3 &&
//         game.board[cellRow][cellColumn - 2] != 0;
//   }

//   static bool checkRightMove(GameModel game) {
//     int cellRow = game.player.rowIndex;
//     int cellColumn = game.player.columnIndex;

//     return cellColumn + 1 < game.columnBoundary &&
//         game.board[cellRow][cellColumn + 1] != 0 &&
//         game.board[cellRow][cellColumn + 1] != 3;
//   }

//   static bool checkRightMoveP(GameModel game) {
//     int cellRow = game.player.rowIndex;
//     int cellColumn = game.player.columnIndex;

//     return cellColumn + 1 < game.columnBoundary &&
//         game.board[cellRow][cellColumn + 1] == 3 &&
//         game.board[cellRow][cellColumn + 2] != 3 &&
//         game.board[cellRow][cellColumn + 2] != 0;
//   }

//   static bool checkUpMove(GameModel game) {
//     int cellRow = game.player.rowIndex;
//     int cellColumn = game.player.columnIndex;

//     return cellRow - 1 >= 0 &&
//         game.board[cellRow - 1][cellColumn] != 0 &&
//         game.board[cellRow - 1][cellColumn] != 3;
//   }

//   static bool checkUpMoveP(GameModel game) {
//     int cellRow = game.player.rowIndex;
//     int cellColumn = game.player.columnIndex;

//     return cellRow - 1 >= 0 &&
//         game.board[cellRow - 1][cellColumn] == 3 &&
//         game.board[cellRow - 2][cellColumn] != 3 &&
//         game.board[cellRow - 2][cellColumn] != 0;
//   }

//   static bool checkDownMove(GameModel game) {
//     int cellRow = game.player.rowIndex;
//     int cellColumn = game.player.columnIndex;

//     return cellRow + 1 < game.rowBoundary &&
//         game.board[cellRow + 1][cellColumn] != 0 &&
//         game.board[cellRow + 1][cellColumn] != 3;
//   }

//   static bool checkDownMoveP(GameModel game) {
//     int cellRow = game.player.rowIndex;
//     int cellColumn = game.player.columnIndex;

//     return cellRow + 1 < game.rowBoundary &&
//         game.board[cellRow + 1][cellColumn] == 3 &&
//         game.board[cellRow + 2][cellColumn] != 3 &&
//         game.board[cellRow + 2][cellColumn] != 0;
//   }
// }
