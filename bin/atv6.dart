import 'dart:io';

void main() {
  stdout.write("Escreva o tamanho do lado A: ");
  double ladoA = double.parse(stdin.readLineSync().toString());

  stdout.write("Escreva o tamanho do lado B: ");
  double ladoB = double.parse(stdin.readLineSync().toString());

  stdout.write("Escreva o tamanho do lado C: ");
  double ladoC = double.parse(stdin.readLineSync().toString());

  if ((ladoA + ladoB) >= ladoC && (ladoA + ladoC) >= ladoB && (ladoB + ladoC) >= ladoA) {
    if (ladoA == ladoB && ladoB == ladoC) {
      print("Triângulo Equilátero");
    }
    else if (ladoA == ladoB && ladoB != ladoC || ladoA == ladoC && ladoC != ladoB || ladoB == ladoC && ladoC != ladoA) {
      print("Triângulo Isóceles");
    }
    else if (ladoA != ladoB && ladoA != ladoC && ladoB != ladoC) {
      print("Triângulo Escaleno");
    }
  }
  else {
    print("Não é possível formar um triângulo");
  }
}
