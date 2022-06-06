import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  while (true) {
    try {
      List<String> entrada = stdin.readLineSync()!.split(" ");
      double a = double.parse(entrada[0]);
      double b = double.parse(entrada[1]);
      double c = double.parse(entrada[2]);
      double radiano_a = (a * 3.141592654) / 180;
      double alturaArvore = b * tan(radiano_a) + c;
      double comprimentoCordao = 5 * alturaArvore;
      print(comprimentoCordao.toStringAsFixed(2));
    } catch (exception) {
      break;
    }
  }
}
