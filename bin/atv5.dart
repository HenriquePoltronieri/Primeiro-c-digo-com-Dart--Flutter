import 'dart:io';

void main() {
  stdout.write(
      "Escolha uma das opções a seguir:\nOpção 1: Converter de Celsius para Fahrenheit.\nOpção 2: Converter de Fahrenheit para Celsius.\nOpção 3: Converter de Celsius para Kelvin.\n");
  int opcao = int.parse(stdin.readLineSync().toString());

  switch (opcao) {
    case 1:
      stdout.write("Escreva uma temperatura em graus Celsius: ");
      double celsius = double.parse(stdin.readLineSync().toString());

      double temperaturaConvertida = (celsius * 1.8) + 32;
      print(
          "$celsius graus Celsius convertido para Fahrenheit: $temperaturaConvertida");
      break;
    case 2:
      stdout.write("Escreva uma temperatura em graus Fahrenheit: ");
      double fahrenheit = double.parse(stdin.readLineSync().toString());

      double temperaturaConvertida = 5 / 9 * (fahrenheit - 32);
      print(
          "$fahrenheit graus Fahrenheit convertido para Celsius: $temperaturaConvertida");
      break;
    case 3:
      stdout.write("Escreva uma temperatura em graus Celsius: ");
      double celsius = double.parse(stdin.readLineSync().toString());

      double temperaturaConvertida = celsius + 273.15;
      print(
          "$celsius graus Celsius convertido para Kelvin: $temperaturaConvertida");
      break;
    default:
      print("Opção inválida");
      break;
  }
}
