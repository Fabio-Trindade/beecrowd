import 'dart:io';

void main(List<String> args) {
  int visitasMuseu = int.parse(stdin.readLineSync()!);
  while (visitasMuseu != -1) {
    List<int> precosIngressos =
        stdin.readLineSync()!.split(" ").map((e) => int.parse(e)).toList();

    int soma = 0;
    int contador = 0;
    for (int preco in precosIngressos) {
      soma += preco;
      if (soma % 100 == 0) {
        contador += 1;
        soma -= (soma ~/ 100) * 100;
      }
    }
    print(contador);
    visitasMuseu = int.parse(stdin.readLineSync()!);
  }
}
