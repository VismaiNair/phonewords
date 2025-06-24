import 'package:test/test.dart';
import '../lib/phonewords.dart';

void main() {
  test('phonewords', () {
    expect(numberFromString('800-543-DART'), '8005433278');
    expect(numberFromString('1-800-FLOWERS'), '18003569377');
    expect(numberFromString('1-800-555-HELP'), '18005554357');
    expect(numberFromString('1-800-MY-APPLE'), '18006927753');
    expect(numberFromString('1-800-MY-TAXES'), '18006988297');
  });
}
