import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  int casosTeste = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < casosTeste; i++) {
    int qtdRetas = int.parse(stdin.readLineSync()!);
    double qtdPlanos = (pow(qtdRetas, 2) + qtdRetas) / 2 + 1;
    print( qtdPlanos.toInt());
  }
}
/* 
  Explicação: Quando uma reta é adicionada, ela cortará todas as outras retas já contidas no plano e cada
  corte gera mais 1 plano. No fim, a adição dessa reta criará p planos, onde p é 1 mais a quantidade de retas
  cortadas.
  Assim a quantidade total é a quantidade de planos já existente mais a quantidade de planos criadas pela
  inserção dessa reta.
  Suponha que o lado esquerda da da seta seja a quantidade de retas e o lado direito
  a quantidade de planos:
  0 -> 1
  1 -> 2
  2 -> 4
  3 -> 7
  4 -> 11
  ...
  Temos que:
   Quantidade de planos = Quantidade de retas + Quantidade de planos_(quantidade de retas - 1)
   Esta equação será representada por P = r + P_r-1
   Pela fórmula:
   P_r-1 = r - 1 + P_r-2
   Se continuarmos desmembrando a quantidade de planos, teremos:
   P = r^2 - somatorio( 1 ate r-1 ) + P_r-r = 
    r^2 - somatorio( 1 ate r-1 )+ P_0 = 
    r^2 - somatorio( 1 ate r-1 ) + 1
   Agora basta calcularmos o somatório. Podemos calcular de duas formas:
    1) Encontrando sua fórmula fechada(não será demonstrada)
    2) Utilizando PA e SA
   Utilizando PA e SA temos que:
    OBS: Lembre-se que r é a quantidade de retas
    a_n = a_1 + (n-1) * razao = 1 + (r - 1 - 1) * 1 = r - 1
    s_n = n *(a_n + a_1)/2 = (r - 1)*(r -1 + 1)/2 = (r^2 - r)/2
  Substituindo o somatório em P:
    P = r^2 + (-r^2 + r)/2 + 1 =
      (r^2 + r)/2 + 1
 */