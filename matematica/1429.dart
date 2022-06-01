import 'dart:io';

void main(List<String> args) {
  while (true) {
    String? entrada = stdin.readLineSync();
    if (entrada == "0") break;
    int notacaoDecimal = 0;
    for (int i = entrada!.length; i > 0; i--) {
      int digito = int.parse(entrada[entrada.length - i]);
      notacaoDecimal += digito * fatorial(i);
    }
    print(notacaoDecimal);
  }
}

int fatorial(int numero) {
  int fatorial = 1;
  for ( numero; numero > 1; numero--) fatorial *= numero;
  return fatorial;
}
