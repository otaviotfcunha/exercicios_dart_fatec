/*

3- Crie uma função que calcula o preço final de um produto com desconto. A função
deve receber o preço base e dois parâmetros opcionais posicionais: um desconto em
valor fixo e um desconto percentual.

*/
import "dart:io";

void main() {
  double descontoFixo = 0, descontoPorcento = 0, valorProduto = 0;
  String entrada = "", entradaDescFixo = "", entradaDescPorcento = "";

  stdout.write("Informe o valor do produto: ");
  entrada = stdin.readLineSync()!;
  valorProduto = double.parse(entrada);

  stdout.write("Deseja informar um desconto fixo? S/N ");
  entradaDescFixo = stdin.readLineSync()!.toUpperCase();
  
  if(entradaDescFixo == "S"){
    stdout.write("Informe o desconto fixo do produto: ");
    entrada = stdin.readLineSync()!;
    descontoFixo = double.parse(entrada);
  }

  stdout.write("Deseja informar um desconto percentual? S/N ");
  entradaDescPorcento = stdin.readLineSync()!.toUpperCase();
  
  if(entradaDescPorcento == "S"){
    stdout.write("Informe o desconto percentual do produto: ");
    entrada = stdin.readLineSync()!;
    descontoPorcento = double.parse(entrada);
  }
  
  if(entradaDescFixo == "N" && entradaDescPorcento == "N"){
    calculaPrecoFinal(valorProduto);
  }else if(entradaDescFixo == "S" && entradaDescPorcento == "N"){
    calculaPrecoFinal(valorProduto, descontoFixo);
  }else{
    calculaPrecoFinal(valorProduto, descontoFixo, descontoPorcento);
  }
  

  calculaPrecoFinal(valorProduto, descontoFixo, descontoPorcento);
}

void calculaPrecoFinal(double valInic, [double descFixo = 0, double descPorc = 0]) {
  double valorFinalDescFixo = 0;
  double valorFinalDescPerc = 0;
  valorFinalDescFixo = valInic - descFixo;
  valorFinalDescPerc = valInic - (valInic * descPorc / 100);
  print("O valor do produto é: $valInic");
  print("Com o desconto fixo o valor será: $valorFinalDescFixo");
  print("Com o desconto percentual o valor será: $valorFinalDescPerc");
}
