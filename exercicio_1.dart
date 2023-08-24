/*

1 - Escreva uma função em Dart que receberá a duração de um evento expresso em
segundos e exiba-o expresso em horas, minutos e segundos. Seu programa deverá exibir
uma saída parecida com:

Entrada: 3712
Saída: 01:01:52

*/

import "dart:io";

void main() {
  int horas, minutos, segundos;
  String entrada;
  int secs;
  stdout.write("Informe a duração do evento em segundos: ");
  entrada = stdin.readLineSync()!;
  secs = int.parse(entrada);
  horas = secs ~/ 3600;
  minutos = (secs ~/ 60) % 60;
  segundos = secs % 60;
  print("Duração do evento: $horas:$minutos:$segundos");
}
