import 'dart:io';
import 'dart:math' as math;

void main(List<String> args) {
  List<String> entrada;
  int x, y;
  num funcaoRafael, funcaoBeto, funcaoCarlos, maiorValor;

  int casosTeste = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < casosTeste; i++) {
    entrada = stdin.readLineSync()!.split(" ");

    x = int.parse(entrada[0]);
    y = int.parse(entrada[1]);

    funcaoRafael = math.pow(3 * x, 2) + math.pow(y, 2);
    funcaoBeto = 2 * math.pow(x, 2) + math.pow(5 * y, 2);
    funcaoCarlos = -100 * x + math.pow(y, 3);

    maiorValor = math.max(funcaoRafael, funcaoBeto);
    maiorValor = math.max(maiorValor, funcaoCarlos);

    if (maiorValor == funcaoBeto)
      print("Beto ganhou");
    else if (maiorValor == funcaoRafael)
      print("Rafael ganhou");
    else
      print("Carlos ganhou");
  }
}
