class Pair {
  // Fields
  late int index;

  late int status;

  late int owner;

  // Pairr();

  // Default constructor
  Pair(int i, int j, int k);

  Pair.withValues(int index, int status, int owner) {
    this.index = index;
    this.status = status;
    this.owner = owner;
  }

  // Copy constructor
  Pair.copy(Pair pair) {
    this.index = pair.index;
    this.status = pair.status;
    this.owner = pair.owner;
  }

  // Deep Check
  bool equals(Pair obj) {
    return obj.index == this.index;
  }

  bool killRock(Pair obj) {
    if (this.equals(obj) &&
        this.status != obj.status &&
        (index != 11 ||
            index != 22 ||
            index != 28 ||
            index != 39 ||
            index != 45 ||
            index != 56 ||
            index != 62 ||
            index != 73))
      return true;
    else
      return false;
  }

  // Pair sub(Pair obj) {
  //   int row = (this.rowIndex - obj.rowIndex).abs();
  //   int column = (this.columnIndex - obj.columnIndex).abs();
  //   Pair p = Pair();
  //   p.setRowIndex(row);
  //   p.setColumnIndex(column);
  //   return p;
  // }

  int getIndex() {
    return this.index;
  }

  void setIndex(int Index) {
    this.index = index;
  }

  void setStatus(int status) {
    this.status = status;
  }

  int getStatus() {
    return status;
  }

  void setOwner(int owner) {
    this.owner = owner;
  }

  int getOwner() {
    return owner;
  }
}
