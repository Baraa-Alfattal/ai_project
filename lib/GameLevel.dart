import 'package:ai_project/Models/Seashell.dart';

import 'Models/GameModel.dart';
import 'Models/rock.dart';

class GameLevel {
  static GameModel barses() {
    Rock rock1 = Rock(0, -1, 11);
    Rock rock2 = Rock(0, -1, 11);
    Rock rock3 = Rock(0, -1, 11);
    Rock rock4 = Rock(0, -1, 11);

    Rock rock5 = Rock(0, -1, 22);
    Rock rock6 = Rock(0, -1, 22);
    Rock rock7 = Rock(0, -1, 22);
    Rock rock8 = Rock(0, -1, 22);

    return GameModel(
        rock1, rock2, rock3, rock4, rock5, rock6, rock7, rock8, barses());
  }
}
