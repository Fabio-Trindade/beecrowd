import 'dart:io';

void main(List<String> args) {
  int b = int.parse(stdin.readLineSync()!);
  int t = int.parse(stdin.readLineSync()!);
  double metadeAreaTotal = (70 * 160) / 2;
  double areaEsquerda = ((b + t) * 70) / 2;
  if (areaEsquerda == metadeAreaTotal)
    print(0);
  else if (areaEsquerda > metadeAreaTotal)
    print(1);
  else
    print(2);
}
