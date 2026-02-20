import 'dart:io';

void main() {
  stdout.write("Digite o valor que deseja sacar: ");
  int saqueCaixa = int.parse(stdin.readLineSync().toString());

  int notas100 = saqueCaixa ~/ 100;
  int resto = saqueCaixa % 100;

  int notas50 = resto ~/ 50;
  resto = resto % 50;

  int notas10 = resto ~/ 10;
  resto = resto % 10;

  print("Notas de 100: $notas100");
  print("Notas de 50: $notas50");
  print("Notas de 10: $notas10");

  if (resto != 0) {
    print("Valor restante que não pode ser sacado: $resto reais");
  }
}