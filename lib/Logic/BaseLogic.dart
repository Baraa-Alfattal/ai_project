import '../Controller/Actions.dart';
import '../Models/GameModel.dart';
import '../Models/State.dart';

class BaseLogic {
  List<State> visitedList = [];
  List<GameModel> solution = [];

  bool isVisited(GameModel game) {
    for (State game1 in visitedList) {
      if (Actions.equals(game1.value, game)) {
        return true;
      }
    }
    return false;
  }

//  void play() {
//    while (true) {
//      print("p: print states || q: quit\n");
//
//      String input = stdin.readLineSync()!;
//      char action = input.isNotEmpty ? input[0] : '';
//
//      switch (action) {
//        case 'p':
//          int moveNumber = 1;
//          for (int i = solution.length - 1; i >= 0; i--) {
//            print("Move Number: $moveNumber");
//
//            Actions.printState(solution[i]);
//            print('');
//
//            moveNumber += 1;
//          }
//
//          print("Visited Nodes Count: ${visitedList.length}");
//          print("Solution Node Depth: ${solution.length}");
//
//          break;
//        case 'q':
//          print("Exiting ..");
//          return;
//      }
//    }
//  }
}
