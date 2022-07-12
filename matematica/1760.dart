import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  while (true) {
    try {
      int l = int.parse(stdin.readLineSync()!);
      double areaTriangulo = pow(l, 2) * sqrt(3) / 4;
      double areaFractal = 8 / 5 * areaTriangulo;
      print(areaFractal.toStringAsFixed(2));
    } catch (exception) {
      break;
    }
  }
}

/* Dicas para encontrar a fórmula fechada:
  1) Encontrar a quantidade de triângulos a cada iteração
  2) Encontrar a area de um triângulo a cada iteração
  3) Encontrar fórmula da area total a partir das fórmulas encontradas acima
  3) Utilizar fórmula de uma série geométrica
  4) Utilizar limite para calcular o limite da area total

*/