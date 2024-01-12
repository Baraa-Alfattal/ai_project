import 'dart:math';

class Seashell {
  bool seashell1;
  bool seashell2;
  bool seashell3;
  bool seashell4;
  bool seashell5;
  bool seashell6;

  Seashell.withValues(
    this.seashell1,
    this.seashell2,
    this.seashell3,
    this.seashell4,
    this.seashell5,
    this.seashell6,
  );

  setSeashell1(bool seashell1) {
    this.seashell1 = seashell1;
  }

  setSeashell2(bool seashell2) {
    this.seashell2 = seashell2;
  }

  setSeashell3(bool seashell3) {
    this.seashell3 = seashell3;
  }

  setSeashell4(bool seashell4) {
    this.seashell4 = seashell4;
  }

  setSeashell5(bool seashell5) {
    this.seashell5 = seashell5;
  }

  setSeashell6(bool seashell6) {
    this.seashell6 = seashell6;
  }

  bool isSeashell1() {
    return seashell1;
  }

  bool isSeashell2() {
    return seashell2;
  }

  bool isSeashell3() {
    return seashell3;
  }

  bool isSeashell4() {
    return seashell4;
  }

  bool isSeashell5() {
    return seashell5;
  }

  bool isSeashell6() {
    return seashell6;
  }

  Seashell getSeashell() {
    return this;
  }

  // int throwSeashell() {
  //   Random random = Random();

  // }
}
