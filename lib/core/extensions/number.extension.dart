/// Extension on [List<num>] providing sorting utility methods.
extension NumberListExtension on List<num> {
  /// Returns `true` if the list is sorted.
  ///
  /// By default, checks for ascending order. Set [ascending] to `false`
  /// to check for descending order.
  ///
  /// An empty or single-element list is considered sorted.
  ///
  /// Example:
  /// ```dart
  /// [1, 2, 3].isSorted();                 // true
  /// [3, 2, 1].isSorted(ascending: false); // true
  /// [1, 3, 2].isSorted();                 // false
  /// ```
  bool isSorted({bool ascending = true}) {
    if (length <= 1) return true;

    for (int i = 0; i < length - 1; i++) {
      if (ascending ? this[i] > this[i + 1] : this[i] < this[i + 1]) return false;
    }

    return true;
  }
}
