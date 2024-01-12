import 'package:ai_project/Models/Seashell.dart';

import 'Models/GameModel.dart';
import 'Models/Pair.dart';

class GameLevel {
  static GameModel barses() {
    Pair rock1 = Pair(0, -1, 11);
    Pair rock2 = Pair(0, -1, 11);
    Pair rock3 = Pair(0, -1, 11);
    Pair rock4 = Pair(0, -1, 11);

    Pair rock5 = Pair(0, -1, 22);
    Pair rock6 = Pair(0, -1, 22);
    Pair rock7 = Pair(0, -1, 22);
    Pair rock8 = Pair(0, -1, 22);

    return GameModel(
        rock1, rock2, rock3, rock4, rock5, rock6, rock7, rock8, barses());
  }
}
