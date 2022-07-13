import 'dart:io';
import 'dart:math' as math;

void main(List<String> args) {
  while (true) {
    try {
      List entrada = stdin.readLineSync()!.split(" ");
      double A = double.parse(entrada[0]);
      double D = double.parse(entrada[1]);
      double R = toRadian(double.parse(entrada[2]));
      double alpha = R <= toRadian(90) ? toRadian(90) - R : R - toRadian(90);

      double H =
          R <= toRadian(90) ? A - D * math.tan(alpha) : A + D * math.tan(alpha);

      H = H * 10000;
      int precisao = H.toInt().toString().length;
      String strH = H.toStringAsPrecision(precisao);
      H = double.parse(strH) / 10000;
      int indexPonto = H.toString().indexOf(".");
      int diferenca = H.toString().length - indexPonto -1 ;
      print(H.toString() + "0" * (4-diferenca));
    } catch (e) {
      break;
    }
  }
}

double toRadian(double graus) {
  return (graus * math.pi) / 180;
}
