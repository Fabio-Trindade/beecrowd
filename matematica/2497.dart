import 'dart:io';

void main(List<String> args) {
  int entrada = int.parse(stdin.readLineSync()!);
  int contador = 1;
  while (entrada != -1) {
    int ciclos = entrada ~/ 2;
    print("Experiment ${contador}: ${ciclos} full cycle(s)");
    contador += 1;
    entrada = int.parse(stdin.readLineSync()!);
  }
}
