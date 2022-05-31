import 'dart:io';
void main(List<String> args) {
  while (true) {
    try {
      List<String> entrada = stdin.readLineSync()!.split(" ");
      int velocidade = int.parse(entrada[0]);
      int tempo = int.parse(entrada[1]);
      int deslocamentoTotal = 2 * tempo * velocidade;
      print(deslocamentoTotal);

      //Outra forma de fazer, mas que o Beecrowd acusou que excede o tempo limite
      // List<int> entrada = stdin
      //     .readLineSync()!
      //     .split(" ")
      //     .map((value) => int.parse(value))
      //     .toList();
      // int velocidade = entrada[0];
      // int tempo = entrada[1];
      // int deslocamentoTotal = 2 * tempo * velocidade;
      // print(deslocamentoTotal);
      
    } catch (exception) {
      break;
    }
  }
}
