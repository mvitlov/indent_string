import 'package:indent_string/indent_string.dart';

void main() {
  // Use as a regular function...
  print(indentString('Unicorns\nRainbows', count: 4));
  // => '    Unicorns\n    Rainbows'

  // ...or as an extension on Strings
  print('Unicorns\nRainbows'.indent(count: 4));
  // => '    Unicorns\n    Rainbows'
}
