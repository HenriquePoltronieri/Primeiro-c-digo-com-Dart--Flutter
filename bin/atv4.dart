import 'dart:io';

void main() {
  print("Digite um número para ver se ele é primo: ");
  int numero = int.parse(stdin.readLineSync()!);

  int divisor = 2;
  bool primo = true;

  if (numero <= 1) {
    primo = false;
  } else {
    while (divisor < numero) {
      if (numero % divisor == 0) {
        primo = false;
      }
      divisor++;
    }
  }

  if (primo == true) {
    print("O número $numero é primo");
  } else {
    print("O número $numero não é primo");
  }
}
