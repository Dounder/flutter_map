abstract class NumberFormat {
  /// Formats a number to be legible by humans with suffixes like 'k' or 'm'.
  ///
  /// For example:
  /// - `1200` becomes `'1.2k'`
  /// - `1500000` becomes `'1.5m'`
  /// - `999` remains `'999'`
  ///
  /// The function removes trailing '.0' to keep the formatting clean
  /// (e.g. `1000` becomes `'1k'` instead of `'1.0k'`).
  static String legible(num value) {
    if (value.abs() >= 1000000) {
      final formatted = (value / 1000000).toStringAsFixed(1).replaceAll(RegExp(r'\.0$'), '');
      return '${formatted}m';
    } else if (value.abs() >= 1000) {
      final formatted = (value / 1000).toStringAsFixed(1).replaceAll(RegExp(r'\.0$'), '');
      return '${formatted}k';
    }
    return value.abs() >= 1
        ? value.toStringAsFixed(1).replaceAll(RegExp(r'\.0$'), '')
        : value.toStringAsFixed(2).replaceAll(RegExp(r'\.00$'), '');
  }

  /// Adds commas to a number to separate the thousands units.
  ///
  /// For example:
  /// - `1000` becomes `'1,000'`
  /// - `1000000.50` becomes `'1,000,000.5'`
  /// - `-5000` becomes `'-5,000'`
  static String withCommas(num value) {
    // Convert number to string and split by decimal point (if any)
    final parts = value.toString().split('.');

    // Regex to match positions that are followed by multiples of 3 digits
    final regExp = RegExp(r'\B(?=(\d{3})+(?!\d))');

    // Add commas to the integer part
    final integerPart = parts[0].replaceAll(regExp, ',');

    // If there's a decimal part, append it back
    if (parts.length > 1) {
      return '$integerPart.${parts[1]}';
    }
    return integerPart;
  }
}
