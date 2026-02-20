import 'dart:io';

void main() {
  stdout.write("Escreva um ano: ");
  int? ano = int.parse(stdin.readLineSync().toString());

  if (ano % 4 == 0 && ano % 100 != 0 || ano % 400 == 0 ) {
    print("O ano é bissexto: $ano");
  }
  else {
    print("O ano não é bissexto: $ano");
  }
}