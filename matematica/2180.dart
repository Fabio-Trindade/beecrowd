import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int peso = int.parse(stdin.readLineSync()!);
  int contador = 0;
  int velocidade = 0;
  num distancia = 60 * pow(10, 6);
  while (contador < 10) {
    if (ehPrimo(peso)) {
      contador += 1;
      velocidade += peso;
    }
    peso += 1;
  }
  print("${velocidade} km/h");
  int horas = distancia ~/ velocidade;
  int dias = horas ~/ 24;
  print("${horas} h / ${dias} d");
}

bool ehPrimo(int num) {
  if (num <= 1) return false;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) return false;
  }
  return true;
}
