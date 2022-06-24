import 'dart:io';

void main(List<String> args) {
  int casosTeste = int.parse(stdin.readLineSync()!);
  for(int i = 0;i< casosTeste;i++){
    List<String> entradas = stdin.readLineSync()!.split(" ");
    int diagonal1 = int.parse(entradas[0]);
    int diagonal2 = int.parse(entradas[1]);
    int areaLosango = (diagonal1 * diagonal2) ~/ 2;
    print("${areaLosango} cm2");
  }
}
