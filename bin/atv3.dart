import 'dart:math';
import 'dart:async';

void main() async {
  int vidaHeroi = 100;
  int vidaMonstro = 100;

  final random = Random();

  int turno = 1;

  while (vidaHeroi > 0 && vidaMonstro > 0) {
    print("\nTurno $turno");

    int ataqueHeroi = 5 + random.nextInt(11);
    int ataqueMonstro = 5 + random.nextInt(11);

    vidaMonstro -= ataqueHeroi;
    print("Herói atacou com $ataqueHeroi. Vida do Monstro: $vidaMonstro");

    if (vidaMonstro <= 0) break;

    vidaHeroi -= ataqueMonstro;
    print("Monstro atacou com $ataqueMonstro. Vida do Herói: $vidaHeroi");

    if (vidaHeroi <= 0) break;

    turno++;

    await Future.delayed(Duration(seconds: 1));
  }

  if (vidaHeroi <= 0) {
    print("\n\nO heroi morreu. Monstro venceu!\n");
  }
  if (vidaMonstro <= 0) {
    print("\n\nO monstro morreu. Herói venceu!\n");
  }
}
