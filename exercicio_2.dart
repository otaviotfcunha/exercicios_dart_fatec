/*

2- Crie uma função que verifica se um número inteiro positivo passado como argumento
é um número primo. A função deve retornar true se o número for primo e false caso
contrário.

*/
import "dart:io";

void main() {
  int num = 0, reset = 0;
  String entrada = "";

  while (reset == 0) {
    stdout.write("Informe um número: ");
    entrada = stdin.readLineSync()!;
    num = int.parse(entrada);

    if (!num.isNegative) {
      reset = 1;
    } else {
      print("O número deve ser inteiro positivo.");
      reset = 0;
    }
  }
  print(verificaNum(num));
}

bool verificaNum(int n) {
  bool retorno = true;
  if (n == 1) {
    retorno = true;
  }
  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) {
      retorno = false;
    }
  }
  return retorno;
}
