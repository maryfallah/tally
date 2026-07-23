extension DoubleExtensions on double {
  String get formattedCurrency {
    if (this % 1 == 0) {
      return toInt().toString();
    }
    return toStringAsFixed(2);
  }
}
