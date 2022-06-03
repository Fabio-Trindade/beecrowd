import 'dart:io';

void main(List<String> args) {
  int entrada = int.parse(stdin.readLineSync()!);
  String entradaFatorial;
  int n;
  int k;
  for (int i = 0; i < entrada; i++) {
    entradaFatorial = stdin.readLineSync()!;
    String nString = "";
    for (int j = 0; j < entradaFatorial.length; j++) {
      if (entradaFatorial[j] != '!')
        nString += entradaFatorial[j];
      else {
        n = int.parse(nString);
        k = entradaFatorial.length - j;
        print(kFatorial(n, k));
        break;
      }
    }
  }
}

int kFatorial(int n, int k) {
  int contador = 1;
  int kFatorial = n;
  while ((n - (contador * k)) > 1) {
    kFatorial *= (n - contador * k);
    contador++;
  }
  return kFatorial;
}
