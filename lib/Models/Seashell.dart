import 'dart:math';

class Seashell {
  late bool seashell1;
  late bool seashell2;
  late bool seashell3;
  late bool seashell4;
  late bool seashell5;
  late bool seashell6;

  Seashell({
    this.seashell1 = false,
    this.seashell2 = false,
    this.seashell3 = false,
    this.seashell4 = false,
    this.seashell5 = false,
    this.seashell6 = false,
  });

  Seashell.withValues(
    this.seashell1,
    this.seashell2,
    this.seashell3,
    this.seashell4,
    this.seashell5,
    this.seashell6,
  );

  // Seashell(
  //   this.seashell1;
  //   this.seashell2;
  //   this.seashell3;
  //   this.seashell4;
  //   this.seashell5;
  //   this.seashell6;
  // );

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

  int throwRandomSeashells() {
    // إنشاء قائمة بستة أصداف بقيم عشوائية
    double randomNumber = Random().nextDouble();
    if (randomNumber <= 0.003992015968063872) {
      this.seashell1 = true;
      this.seashell2 = true;
      this.seashell3 = true;
      this.seashell4 = true;
      this.seashell5 = true;
      this.seashell6 = true;
      return 6;
    } else if (randomNumber <= 0.031936127744510975) {
      this.seashell1 = false;
      this.seashell2 = false;
      this.seashell3 = false;
      this.seashell4 = false;
      this.seashell5 = false;
      this.seashell6 = false;
      return 0;
    } else if (randomNumber <= 0.03992015968063872) {
      this.seashell1 = true;
      this.seashell2 = true;
      this.seashell3 = true;
      this.seashell4 = true;
      this.seashell5 = true;
      this.seashell6 = false;
      return 5;
    } else if (randomNumber <= 0.12574850299401197) {
      this.seashell1 = true;
      this.seashell2 = true;
      this.seashell3 = true;
      this.seashell4 = true;
      this.seashell5 = false;
      this.seashell6 = false;
      return 4;
    } else if (randomNumber <= 0.17764471057884232) {
      this.seashell1 = true;
      this.seashell2 = false;
      this.seashell3 = false;
      this.seashell4 = false;
      this.seashell5 = false;
      this.seashell6 = false;
      return 1;
    } else if (randomNumber <= 0.3033932135728543) {
      this.seashell1 = true;
      this.seashell2 = true;
      this.seashell3 = true;
      this.seashell4 = false;
      this.seashell5 = false;
      this.seashell6 = false;
      return 3;
    } else {
      this.seashell1 = true;
      this.seashell2 = true;
      this.seashell3 = false;
      this.seashell4 = false;
      this.seashell5 = false;
      this.seashell6 = false;
      return 2;
    }
  }
}
