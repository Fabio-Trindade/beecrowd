import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int degraus = int.parse(stdin.readLineSync()!);
  List<int> lista = [1, 2, 4];
  for (int i = 3; i < degraus; i++) {
    lista.add((lista[i - 1] + lista[i - 2] + lista[i - 3])%(1000000007));
  }
  print(lista[degraus - 1]);
}
