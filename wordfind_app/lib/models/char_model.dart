class CharModel {
  CharModel(
      {this.correctValue,
      this.currentIndex,
      this.currentValue,
      this.hintShow = false});
  String? currentValue;
  int? currentIndex;
  String? correctValue;
  bool hintShow;

  getCurrentValue() {
    this.correctValue != null ? currentValue : null;
    this.hintShow ? correctValue : null;
  }

  clearValue() {
    this.currentValue = null;
    this.currentIndex = null;
  }
}
