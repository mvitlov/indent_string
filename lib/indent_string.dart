/// Indent each line in a string

library indent_string;

String indentString(
  String string, {
  int count = 1,
  String indent = " ",
  bool includeEmptyLines = false,
}) {
  if (count < 0) {
    throw RangeError("Expected `count` to be at least 0, got `$count`");
  }

  if (count == 0) return string;

  final regex = includeEmptyLines
      ? RegExp("^", multiLine: true)
      : RegExp(r"^(?!\s*$)", multiLine: true);

  return string.replaceAll(regex, indent * count);
}

/// Extension method for easier indentation of strings
extension StringIndentation on String {
  String indent({
    int count = 1,
    String indent = " ",
    bool includeEmptyLines = false,
  }) =>
      indentString(
        this,
        count: count,
        indent: indent,
        includeEmptyLines: includeEmptyLines,
      );
}
