import 'dart:io';
import 'package:calc/calc.dart' as calc;

void main(List<String> arguments) {
  var continuar;

  do {
    print('Selecione uma operacao');
    print('1 - Soma');
    print('2 - Subtracao');
    print('3 - Divisao');
    print('4 - Multiplicacao');
    var opcao = stdin.readLineSync();

    switch (int.parse(opcao)) {
      case 1:
        print('Informe o primeiro valor');
        var firstValueString = stdin.readLineSync();
        print('Informe o segundo valor');
        var secondValueString = stdin.readLineSync();
        if (firstValueString != null && secondValueString != null) {
          print(
              '$firstValueString + $secondValueString = ${calc.soma(double.parse(firstValueString), double.parse(secondValueString))} ');
        } else {
          print('Erro na operacao, recomece!');
        }
        break;
      case 2:
        print('Informe o primeiro valor');
        var firstValueString = stdin.readLineSync();
        print('Informe o segundo valor');
        var secondValueString = stdin.readLineSync();
        if (firstValueString != null && secondValueString != null) {
          print(
              '$firstValueString - $secondValueString = ${calc.subtracao(double.parse(firstValueString), double.parse(secondValueString))} ');
        } else {
          print('Erro na operacao, recomece!');
        }
        break;
      case 3:
        print('Informe o primeiro valor');
        var firstValueString = stdin.readLineSync();
        print('Informe o segundo valor');
        var secondValueString = stdin.readLineSync();
        if (firstValueString != null && secondValueString != null) {
          if (double.parse(secondValueString) == 0) {
            print('Nao se pode dividir por ZERO');
          }
          print(
              '$firstValueString / $secondValueString = ${calc.divisao(double.parse(firstValueString), double.parse(secondValueString))} ');
        } else {
          print('Erro na operacao, recomece!');
        }
        break;
      case 4:
        print('Informe o primeiro valor');
        var firstValueString = stdin.readLineSync();
        print('Informe o segundo valor');
        var secondValueString = stdin.readLineSync();
        if (firstValueString != null && secondValueString != null) {
          print(
              '$firstValueString * $secondValueString = ${calc.multiplicacao(double.parse(firstValueString), double.parse(secondValueString))} ');
        } else {
          print('Erro na operacao, recomece!');
        }
        break;
      default:
        print('Operacao nao existe');
    }
    print('Continuar? S - SIM / N - NAO');
    continuar = stdin.readLineSync().toUpperCase();
    if (continuar == 'N') print('Encerrando....');
  } while (continuar == 'S');
}
