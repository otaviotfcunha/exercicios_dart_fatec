/*

5- Crie uma função que avalie as notas de um aluno. A função deve receber a nota do
aluno como parâmetro e retornar uma mensagem como "Aprovado", "Reprovado" ou
"Recuperação". Caso a nota seja nula, retorne "Nota não informada". Para ser aprovado a
nota deve ser maior ou igual a 6.0, para ir para recuperação a nota deve ser maior ou
igual a 4.0. Caso a nota seja inferior a 4.0 o aluno estará reprovado.

*/

import "dart:io";

void main() {
  String entrada = "";
  stdout.write("Informe a nota do aluno: ");
  entrada = stdin.readLineSync()!;

  verificaNota(entrada);
}

void verificaNota(String num) {
  var nota = double.tryParse(num);
  double notaFim = 0;
  if (nota == null) {
    print("Nota não informada!");
  } else {
    notaFim = double.parse(num);

    if (notaFim >= 6) {
      print("Aprovado");
    } else if (notaFim >= 4 && notaFim < 6) {
      print("Recuperação");
    } else {
      print("Reprovado");
    }
  }
}
