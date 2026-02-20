import 'dart:io';

void main() {
  stdout.write("Digite o nome do atleta: ");
  String nomeAtleta = stdin.readLineSync()!;

  stdout.write("Digite a idade do atleta: ");
  double idadeAtleta = double.parse(stdin.readLineSync().toString());

  if (idadeAtleta < 5) {
    print("Idade inválida para competir!");
  }
  else if (idadeAtleta >= 5 && idadeAtleta <= 10) {
    print("O atleta $nomeAtleta está na categoria Infantil!");
  }
  else if (idadeAtleta >= 11 && idadeAtleta <= 17) {
    print("O atleta $nomeAtleta está na categoria Juvenil!");
  }
  else if (idadeAtleta >= 18 && idadeAtleta <= 60) {
    print("O atleta $nomeAtleta está na categoria Adulto!");
  }
  else {
    print("O atleta $nomeAtleta está na categoria Sênior!");
  }

}