import 'dart:io';

void main(List<String> args) {
  int numero = int.parse(stdin.readLineSync()!);
  while (numero != 1) {
    if (ehPrimo(numero)) {
      if (ehPrimo(numero - 2)) {
        print("${numero - 2} ${numero}");
        break;
      }
    }
    numero -= 1;
  }
}

bool ehPrimo(int num) {
  if (num <= 1) return false;
  for (int i = 2; i * i <= num; i++) {
    if (num % i == 0) return false;
  }
  return true;
}
