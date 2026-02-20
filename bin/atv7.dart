import 'dart:io';

void main() {
  stdout.write("Digite seu salário mensal: ");
  double salarioMensal = double.parse(stdin.readLineSync().toString());

  double imposto = 0;
  double salarioFinal = 0;

  if (salarioMensal < 0) {
    print("Digite um salário válido!");
  } 
  else if (salarioMensal <= 2000) {
    salarioFinal = salarioMensal - imposto;
    print("Imposto de Renda: Isento");
    print("Salário final: ${salarioFinal.toStringAsFixed(2)}");
  } 
  else if (salarioMensal >= 2000.01 && salarioMensal <= 4000) {
    imposto = salarioMensal * 0.07;
    salarioFinal = salarioMensal - imposto;
    print("Imposto de Renda: ${imposto.toStringAsFixed(2)}");
    print("Salário final: ${salarioFinal.toStringAsFixed(2)}");
  } 
  else if (salarioMensal >= 4000.01) {
    imposto = salarioMensal * 0.15;
    salarioFinal = salarioMensal - imposto;
    print("Imposto de Renda: ${imposto.toStringAsFixed(2)}");
    print("Salário final: ${salarioFinal.toStringAsFixed(2)}");
  }
}
