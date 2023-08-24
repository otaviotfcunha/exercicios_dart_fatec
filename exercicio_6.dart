/*

6- Um triângulo é uma forma geométrica (polígono) composta de três lados, sendo que
cada lado é menor que a soma dos outros dois lados. Assim, para que um triângulo seja
válido, é preciso que seus lados A, B e C obedeçam à seguinte regra:
• A < (B + C), B < (A + C) e C < (A + B).
• Escreva um programa Dart que leia os três lados de um triângulo e verifique se tais
valores realmente formam um triângulo. Se o teste for satisfatório, informe se o triângulo
é isósceles (dois lados iguais e um diferente), escaleno (todos os lados diferentes) ou
equilátero (todos os lados iguais).
• Sua saída deverá ser parecida com:

*/

import "dart:io";

void main() {
  double ladoA, ladoB, ladoC;
  String entrada;

  stdout.write("Informe o tamanho do lado A: ");
  entrada = stdin.readLineSync()!;
  ladoA = double.parse(entrada);

  stdout.write("Informe o tamanho do lado B: ");
  entrada = stdin.readLineSync()!;
  ladoB = double.parse(entrada);

  stdout.write("Informe o tamanho do lado C: ");
  entrada = stdin.readLineSync()!;
  ladoC = double.parse(entrada);

  validaTriangulo(ladoA, ladoB, ladoC);
}

void validaTriangulo(double A, double B, double C) {
  bool parte1 = false;
  bool parte2 = false;
  bool parte3 = false;
  if (A < (B + C)) {
    parte1 = true;
  }
  if (B < (A + C)) {
    parte2 = true;
  }
  if (C < (A + B)) {
    parte3 = true;
  }

  if (parte1 == true && parte2 == true && parte3 == true) {
    print("A: $A -- B: $B -- C: $C ");
    if (A == B || B == C || A == C) {
      print("O triângulo é equilátero");
    } else if (A == B || B == C) {
      print("O triângulo é isósceles");
    } else {
      print("O triângulo é escaleno");
    }
  }else{
    print("O triângulo é inválido!");
  }
}
