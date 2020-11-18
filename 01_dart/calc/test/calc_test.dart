import 'package:calc/calc.dart';
import 'package:test/test.dart';

void main() {
  test('soma', () {
    expect(soma(22, 20), 42);
  });
  test('subtracao', () {
    expect(subtracao(22, 20), 2);
  });
  test('divisao', () {
    expect(divisao(20, 2), 10);
  });
  test('divisao_zero', () {
    expect(divisao(22, 0), 0);
  });
  test('multiplicacaop', () {
    expect(multiplicacao(22, 20), 440);
  });
}
