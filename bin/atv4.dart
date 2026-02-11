import 'dart:io';

void main() {

  stdout.write("Digite um número para ver se ele é primo: ");
  int? numero = int.parse(stdin.readLineSync().toString());

  if (numero % 1 && numero % numero) {
    print('O número $numero é primo');
  }
  else {
    print('O número $numero não é primo');
  }
}