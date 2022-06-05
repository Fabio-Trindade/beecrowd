import 'dart:io';

void main(List<String> args) {
  while (true) {
    try {
      List<String> entrada = stdin.readLineSync()!.split(' ');
      int x = int.parse(entrada[0]);
      int y = int.parse(entrada[1]);
      int mdc = calcMDC(x, y);
      double estacas = 2 * (x / mdc + y / mdc - 2) + 4;
      print(estacas.toInt());
    } catch (exception) {
      break;
    }
  }
}

int calcMDC(int x, int y) {
  int a = x > y ? x : y;
  int b = x < y ? x : y;
  int resto = a % b;
  if (resto == 0)
    return b;
  else
    return calcMDC(b, resto);
}
