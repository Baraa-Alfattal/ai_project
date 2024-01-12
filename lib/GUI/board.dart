import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ai_project/constants.dart';
import 'tile.dart';

class Board extends StatefulWidget {
  const Board({super.key});

  @override
  State<StatefulWidget> createState() => BoardState();
}

// game layout:
// numbers represent sub-paths, 0: start, 6: end
//
//            start of main path
//                    ↓
//                 |↓|←|←|
//                 |↓|6|↑|
//                 |↓|5|↑|     fourth
//   first area →  |↓|4|↑|      area
//                 |↓|3|↑|        ↓
//                 |↓|2|↑|
//                 |↓|1|↑|
//                 |↓|0|↑|
// |↓|←|←|←|←|←|←|←|     |←|←|←|←|←|←|←|←|
// |↓| | | | | | | | win | | | | | | | |↑|
// |→|→|→|→|→|→|→|→|     |→|→|→|→|→|→|→|↑|
//                 |↓|0|↑|
//                 |↓|1|↑|
//         ↑       |↓|2|↑|
//      second     |↓|3|↑|  ← third area
//       area      |↓|4|↑|
//                 |↓|5|↑|
//                 |↓|6|↑|
//                 |→|→|↑|
//
//

class BoardState extends State<Board> {
  double _nearest(BoxConstraints constraints) {
    return min(constraints.maxWidth, constraints.maxHeight);
  }

  // computes coordinates for current tile index
  // (1D => 2D)
  List<int> _getLeftTop(int index) {
    int top, left;

    var firstArea = index >= Game.mainPathStart && index <= Game.area1End ||
        index >= Game.area1Start && index <= Game.mainPathEnd;
    var secondArea = index >= Game.area2Start && index <= Game.area2End;
    var thirdArea = index >= Game.area3Start && index <= Game.area3End;
    // var fourthArea = index >= 43 && index <= 59; // this is the coords for the fourth area

    if (firstArea) {
      var base = 8;
      // at start
      if (index == Game.area1Peak) {
        top = 0;
        left = base + 1;
      }
      // at the left side
      else if (index <= Game.area1End) {
        top = index - 1;
        left = base;
      }
      // at the right side
      else {
        top = Game.mainPathEnd - index;
        left = base + 2;
      }
    } else if (secondArea) {
      var base = 8;

      if (index == Game.area2Peak) {
        top = base + 1;
        left = 0;
      }
      // at the top side
      else if (index < Game.area2Peak) {
        top = base;
        left = Game.area2Peak - index - 1;
      }
      // at the bottom side
      else {
        top = base + 2;
        left = index - Game.area2Peak - 1;
      }
    } else if (thirdArea) {
      var baseLeft = 8;
      var peakTop = 18;

      if (index == Game.area3Peak) {
        top = peakTop;
        left = baseLeft + 1;
      }
      // at the left side
      else if (index < Game.area3Peak) {
        top = peakTop - (Game.area3Peak - index - 1);
        left = baseLeft;
      }
      // at the right side
      else {
        top = peakTop - (index - Game.area3Peak - 1);
        left = baseLeft + 2;
      }
    } else {
      var baseTop = 8;
      var peakLeft = 18;

      if (index == Game.area4Peak) {
        top = baseTop + 1;
        left = peakLeft;
      }
      // at the bottom side
      else if (index < Game.area4Peak) {
        top = baseTop + 2;
        left = peakLeft - (Game.area4Peak - index - 1);
      }
      // at the top side
      else {
        top = baseTop;
        left = peakLeft - (index - Game.area4Peak - 1);
      }
    }

    return [left, top];
  }

  List<Widget> _mainRoute(double size) {
    var route = <Widget>[];

    // used loop instead of List.fill() to run code before creating the till
    for (var i = 0; i <= Game.mainPathEnd; i++) {
      // code before creating the tile widget
      var left = _getLeftTop(i).first;
      var top = _getLeftTop(i).last;
      route.add(
        Tile(
          size: size,
          left: left,
          top: top,
          color: Color.fromARGB(255, top * 5, top * 5, top * 5),
        ),
      );
    }

    return route;
  }

  // sup route for player 1
  List<Widget> _supRoute1(double size) {
    var route = <Widget>[];

    // used loop instead of List.fill() to run code before creating the till
    for (var i = 0; i <= 6; i++) {
      // code before creating the tile widget
      route.add(
        Tile(
          size: size,
          left: 9,
          top: 7 - i,
        ),
      );
    }

    return route;
  }

  // sup route for player 2
  List<Widget> _supRoute2(double size) {
    var route = <Widget>[];

    // used loop instead of List.fill() to run code before creating the till
    for (var i = 0; i <= 6; i++) {
      // code before creating the tile widget
      route.add(
        Tile(
          size: size,
          left: 9,
          top: 11 + i,
        ),
      );
    }

    return route;
  }

  List<Widget> _unAccessible1(double size) {
    var route = <Widget>[];

    // used loop instead of List.fill() to run code before creating the till
    for (var i = 0; i <= 6; i++) {
      // code before creating the tile widget
      route.add(
        Tile(
          size: size,
          left: i + 1,
          top: 9,
          color: Colors.black,
        ),
      );
    }

    return route;
  }

  List<Widget> _unAccessible2(double size) {
    var route = <Widget>[];

    // used loop instead of List.fill() to run code before creating the till
    for (var i = 0; i <= 6; i++) {
      // code before creating the tile widget
      route.add(
        Tile(
          size: size,
          left: i + 11,
          top: 9,
          color: Colors.black,
        ),
      );
    }

    return route;
  }

  List<Widget> _unAccessibles(double size) {
    return [
      ..._unAccessible1(size),
      ..._unAccessible2(size),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final cellSize = _nearest(constraints) / Game.boardSize;
            final main = _mainRoute(cellSize);
            final sup1 = _supRoute1(cellSize);
            final sup2 = _supRoute2(cellSize);
            final rest = _unAccessibles(cellSize);

            return Stack(
              children: [...main, ...sup1, ...sup2, ...rest],
            );
          },
        ),
      ),
    );
  }
}
