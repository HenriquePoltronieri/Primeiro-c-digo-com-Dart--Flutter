import 'dart:io';

void main() {
  int velocidadeMaximaVia = 100;

  stdout.write("Qual a sua velocidade: ");
  int? velocidadeMedida = int.parse(stdin.readLineSync().toString());

  if (velocidadeMedida <= velocidadeMaximaVia) {
    print('\nSua velocidade esta dentro do permitido!\n');
  } else if (velocidadeMedida >= velocidadeMaximaVia &&
      velocidadeMedida <= (velocidadeMaximaVia * 1.1)) {
    print('\nVocê esta acima da velocidade permitida, mas isento de multa!\n');
  } else if (velocidadeMedida >= velocidadeMaximaVia * 1.1 &&
      velocidadeMedida <= velocidadeMaximaVia * 1.2) {
    print('\nVocê esta acima da velocidade permitida, e recebeu uma multa leve. Sua multa é de 130,00 reais!\n');
  } else {
    print('\nVocê esta acima da velocidade permitida, e recebeu uma multa grave. Sua multa é de 880,00 reais e apreensão da sua CNH!\n');
  }
}



