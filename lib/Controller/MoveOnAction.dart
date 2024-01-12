// import '../Models/GameModel.dart';
// import '../Models/Positions.dart';

// class MoveOnAction {
//   static GameModel moveUp(GameModel game) {
//     GameModel copyGame = GameModel(
//         game.rowBoundary,
//         game.columnBoundary,
//         game.board,
//         game.rock1,
//         game.rock2,
//         game.rock3,
//         game.rock4,
//         game.rock5,
//         game.rock6,
//         game.rock7,
//         game.rock8);

//     int row_index = gameCopy.player.rowIndex - 1;
//     int column_index = gameCopy.player.columnIndex;
//     int cellValue = gameCopy.board[row_index][column_index];

//     if (cellValue == 3) {
//       if (row_index == gameCopy.plant1.rowIndex &&
//           column_index == gameCopy.plant1.columnIndex) {
//         gameCopy.plant1.rowIndex = row_index - 1;
//       } else {
//         gameCopy.plant2.rowIndex = row_index - 1;
//       }

//       gameCopy.board[row_index - 1][column_index] = 3;
//     }
//     gameCopy.board[row_index][column_index] = 2;
//     gameCopy.board[row_index + 1][column_index] = 1;

//     gameCopy.player.rowIndex = row_index;
//     gameCopy.lastPosition = Positions.up;

//     return gameCopy;
//   }

//   static GameModel moveDown(GameModel game) {
//     GameModel copyGame = GameModel(
//         game.rowBoundary,
//         game.columnBoundary,
//         game.board,
//         game.rock1,
//         game.rock2,
//         game.rock3,
//         game.rock4,
//         game.rock5,
//         game.rock6,
//         game.rock7,
//         game.rock8);

//     int row_index = gameCopy.player.rowIndex + 1;
//     int column_index = gameCopy.player.columnIndex;
//     int cellValue = gameCopy.board[row_index][column_index];

//     if (cellValue == 3) {
//       if (row_index == gameCopy.plant1.rowIndex &&
//           column_index == gameCopy.plant1.columnIndex) {
//         gameCopy.plant1.rowIndex = row_index + 1;
//       } else {
//         gameCopy.plant2.rowIndex = row_index + 1;
//       }

//       gameCopy.board[row_index + 1][column_index] = 3;
//     }
//     gameCopy.board[row_index][column_index] = 2;
//     gameCopy.board[row_index - 1][column_index] = 1;

//     gameCopy.player.rowIndex = row_index;
//     gameCopy.lastPosition = Positions.down;

//     return gameCopy;
//   }

//   static GameModel moveLeft(GameModel game) {
//     GameModel copyGame = GameModel(
//         game.rowBoundary,
//         game.columnBoundary,
//         game.board,
//         game.rock1,
//         game.rock2,
//         game.rock3,
//         game.rock4,
//         game.rock5,
//         game.rock6,
//         game.rock7,
//         game.rock8);

//     int row_index = gameCopy.player.rowIndex;
//     int column_index = gameCopy.player.columnIndex - 1;
//     int cellValue = gameCopy.board[row_index][column_index];

//     if (cellValue == 3) {
//       if (row_index == gameCopy.plant1.rowIndex &&
//           column_index == gameCopy.plant1.columnIndex) {
//         gameCopy.plant1.columnIndex = column_index - 1;
//       } else {
//         gameCopy.plant2.columnIndex = column_index - 1;
//       }

//       gameCopy.board[row_index][column_index - 1] = 3;
//     }
//     gameCopy.board[row_index][column_index] = 2;
//     gameCopy.board[row_index][column_index + 1] = 1;

//     gameCopy.player.columnIndex = column_index;
//     gameCopy.lastPosition = Positions.left;

//     return gameCopy;
//   }

//   static GameModel moveRight(GameModel game) {
//     GameModel copyGame = GameModel(
//         game.rowBoundary,
//         game.columnBoundary,
//         game.board,
//         game.rock1,
//         game.rock2,
//         game.rock3,
//         game.rock4,
//         game.rock5,
//         game.rock6,
//         game.rock7,
//         game.rock8);

//     int row_index = gameCopy.player.rowIndex;
//     int column_index = gameCopy.player.columnIndex + 1;
//     int cellValue = gameCopy.board[row_index][column_index];

//     if (cellValue == 3) {
//       if (row_index == gameCopy.plant1.rowIndex &&
//           column_index == gameCopy.plant1.columnIndex) {
//         gameCopy.plant1.columnIndex = column_index + 1;
//       } else {
//         gameCopy.plant2.columnIndex = column_index + 1;
//       }

//       gameCopy.board[row_index][column_index + 1] = 3;
//     }
//     gameCopy.board[row_index][column_index] = 2;
//     gameCopy.board[row_index][column_index - 1] = 1;

//     gameCopy.player.columnIndex = column_index;
//     gameCopy.lastPosition = Positions.right;

//     return gameCopy;
//   }
// }
