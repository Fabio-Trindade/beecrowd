import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int casosTeste = int.parse(stdin.readLineSync()!);
  int entrada;
  num somaProgressaoGeometrica;
  for (int i = 0; i < casosTeste; i++) {
    entrada = int.parse(stdin.readLineSync()!);
    // Sn = 2^(n+1) -1 , para n>=0
    // Como a entrada começa a partir de 1, então n=n-1 e
    // Sn = 2^(n-1+1) -1 = 2^(n) -1
    somaProgressaoGeometrica = pow(2, (entrada)) -1;
    print(somaProgressaoGeometrica);
  }
}
