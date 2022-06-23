import 'dart:io';

void main(List<String> args) {
  int casosTeste = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < casosTeste; i++) {
    List<String> numeros = stdin.readLineSync()!.split(" ");

    String num1 = numeros[0];
    String num2 = numeros[1];

    if (num1.length < num2.length)
      print("nao encaixa");
    else
      num1.contains(num2, num1.length - num2.length)
          ? print("encaixa")
          : print("nao encaixa");
  }
}
