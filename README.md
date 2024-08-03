# indent_string

> Indent each line in a string


## Usage

```dart
import 'package:indent_string/indent_string.dart';

  // Use as a regular function...
  print(indentString('Unicorns\nRainbows', count: 4));
  // => '    Unicorns\n    Rainbows'

  // ...or as an extension on Strings
  print('Unicorns\nRainbows'.indent(count: 4));
  // => '    Unicorns\n    Rainbows'
```

## Credits
 - [indent-string](https://github.com/sindresorhus/indent-string) by Sindre Sorhus