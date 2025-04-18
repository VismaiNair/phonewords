import 'package:phonewords/phonewords.dart';
import 'package:test/test.dart';

void main() {
  test('phonewords', () {
    expect(findNumberFromWord('800-543-DART'), '800-543-3278');
    expect(findNumberFromWord('1-800-FLOWERS'), '1-800-3569377');
    expect(findNumberFromWord('1-800-555-HELP'), '1-800-555-4357');
    expect(findNumberFromWord('1-800-MY-APPLE'), '1-800-692-7753');
    expect(findNumberFromWord('1-800-MY-TAXES'), '1-800-698-8297');
  });
}
