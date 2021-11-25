import 'package:test/test.dart';
import 'package:triangle/triangle.dart';

void main() {
  group('Detect the triangle', () {
    test('Should throw Error when there is side less than 1', () {
      expect(() => detectTriangle(-1, 2, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1, -2, 2), throwsA(isA<Exception>()));
      expect(() => detectTriangle(1, 2, -2), throwsA(isA<Exception>()));
    });
  });

  test('Should throw error when side a + b <= c', () {
    expect(() => detectTriangle(4, 1, 2), throwsA(isA<Exception>()));
    expect(() => detectTriangle(5, 1, 3), throwsA(isA<Exception>()));
  });

  test('Should return "Segitiga sama sisi" when all sides are equal', () {
    expect(detectTriangle(1, 1, 1), "Segitiga Sama Sisi");
    expect(detectTriangle(2, 2, 1), isNot("Segitiga Sama Sisi"));
  });

  test('Segitiga Sama Sisi', () {
    expect(detectTriangle(2, 2, 3), "Segitiga Sama Kaki");
    expect(detectTriangle(4, 2, 4), "Segitiga Sama Kaki");
    expect(detectTriangle(1, 2, 2), "Segitiga Sama Kaki");
    expect(detectTriangle(4, 1, 4), "Segitiga Sama Kaki");
  });

  test('Should return "Segitiga Sembarang" when no sides are equal', () {
    expect(detectTriangle(2, 4, 3), "Segitiga Sembarang");
  });
}
