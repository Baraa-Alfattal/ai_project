import 'package:ai_project/Models/Pair.dart';
import 'package:flutter/material.dart';

class GUI {
  static const borderColor = Colors.black;
}

class Game {
  static const boardSize = 19;

  static const mainPathStart = 0;
  static const mainPathEnd = 67;

  static const area1Start = 60;
  static const area1Peak = 0;
  static const area1End = 8;

  static const area2Start = 9;
  static const area2Peak = 17;
  static const area2End = 25;

  static const area3Start = 26;
  static const area3Peak = 34;
  static const area3End = 42;

  static const area4Start = 43;
  static const area4Peak = 51;
  static const area4End = 59;

  static const area1Protects = [2, 66];
  static const area2Protects = [19, 15];
  static const area3Protects = [36, 32];
  static const area4Protects = [53, 49];

  static const protects = [
    ...area1Protects,
    ...area2Protects,
    ...area3Protects,
    ...area4Protects,
  ];
}

class SeaShells {
  static const role6 = 0.003992015968063872;
  static const role0 = 0.031936127744510975;
  static const role5 = 0.03992015968063872;
  static const role4 = 0.12574850299401197;
  static const role1 = 0.17764471057884232;
  static const role3 = 0.3033932135728543;
  static const role2 = 0.31736526946107785;

  static final roles = [
    Pair(2, 2),
    Pair(3, 3),
    Pair(1, 10),
    Pair(4, 4),
    Pair(5, 25),
    Pair(0, 6),
    Pair(6, 12),
  ];

  static double rolePossibility(int role) {
    switch (role) {
      case 0:
        return role0;
      case 1:
        return role1;
      case 2:
        return role2;
      case 3:
        return role3;
      case 4:
        return role4;
      case 5:
        return role5;
      case 6:
        return role6;
      default:
        return 0;
    }
  }

  static bool haveExtra(int role) {
    return role == 1 || role == 5;
  }

  static bool roleAgain(int role) {
    return [0, 1, 5, 6].contains(role);
  }

  static const maxRoleCount = 10;
}

class Status {
  static const dead = -1;
  static const win = 1;
  static const subPathStart = -5;
  static const subPathEnd = 5;
  static const mainPath = 10;
  static const protected = 100;
  static const readyToEnter = 64;
}

const owners = [1, 2];
