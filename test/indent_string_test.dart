import 'package:indent_string/indent_string.dart';
import 'package:test/test.dart';

void main() {
  test('throw if count is a negative', () {
    expect(() {
      indentString('foo', count: -1);
    }, throwsRangeError);
  });

  test('indent each line in a string', () {
    expect(indentString('foo\nbar'), ' foo\n bar');
    expect(indentString('foo\nbar', count: 1), ' foo\n bar');
    expect(indentString('foo\r\nbar', count: 1), ' foo\r\n bar');
    expect(indentString('foo\nbar', count: 4), '    foo\n    bar');
  });

  test('not indent whitespace only lines', () {
    expect(indentString('foo\nbar\n', count: 1), ' foo\n bar\n');
    expect(indentString('foo\nbar\n', count: 1, includeEmptyLines: false),
        ' foo\n bar\n');
  });

  test('indent every line if options.includeEmptyLines is true', () {
    expect(indentString('foo\n\nbar\n	', count: 1, includeEmptyLines: true),
        ' foo\n \n bar\n 	');
  });

  test('indent with leading whitespace', () {
    expect(indentString(' foo\n bar\n', count: 1), '  foo\n  bar\n');
  });

  test('indent with custom string', () {
    expect(indentString('foo\nbar\n', count: 1, indent: '♥'), '♥foo\n♥bar\n');
  });

  test('not indent when count is 0', () {
    expect(indentString('foo\nbar\n', count: 0), 'foo\nbar\n');
  });
}
