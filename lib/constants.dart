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
}

class SeaShells {
  static const role6 = 0.003992015968063872;
  static const role0 = 0.031936127744510975;
  static const role5 = 0.03992015968063872;
  static const role4 = 0.12574850299401197;
  static const role1 = 0.17764471057884232;
  static const role3 = 0.3033932135728543;
  static const role2 = 0.31736526946107785;
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
