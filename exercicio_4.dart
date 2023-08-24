/*

4- Desenvolva uma função que gere senhas aleatórias. A função deve receber um
parâmetro que determine o tamanho da senha gerada e um parâmetro opcional
nomeado para permitir caracteres especiais.

*/
import "dart:io";
import "dart:math";

void main() {
  int tamanhoSenha = 0;
  String entrada = "", caracterEspecial = "";

  stdout.write("Qual tamanho da senha você deseja gerar?");
  entrada = stdin.readLineSync()!;
  tamanhoSenha = int.parse(entrada);

  stdout.write("Deseja utilizar caracteres especiais na senha? S/N");
  entrada = stdin.readLineSync()!.toUpperCase();
  if (entrada == "S" || entrada == "N") {
    caracterEspecial = entrada;
  } else {
    print(
        "Digite S/N, neste caso o sistema não utilizará caracteres especiais...");
    caracterEspecial = "N";
  }

  if (caracterEspecial == "N") {
    gerarSenhas(tamanhoSenha);
  } else {
    gerarSenhas(tamanhoSenha, caracterEspecial);
  }
}

void gerarSenhas(int tamanho, [String char = "N"]) {
  int fazRand = 0;
  String senhaGerada = "";
  String permitidos = "";

  if (char == "S") {
    permitidos = "0123456789abcdefghijklmnopqrstuvxz!@#&*()";
  } else {
    permitidos = "0123456789abcdefghijklmnopqrstuvxz";
  }
  fazRand = permitidos.length;

  for (int i = 0; i < tamanho; i++) {
    Random random = new Random();
    int rand = random.nextInt(fazRand);
    senhaGerada += permitidos[rand];
  }
  print("A senha gerada é: ");
  print(senhaGerada);
}
