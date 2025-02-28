// Atividade 03: Dando uma nova chance no retorno de mês

import 'dart:io';

void main() {
  int input = 0;
  int numero = 0;
  List<String> meses = <String>["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"];

  void getValidar() {
    print('Digite um número de 1 a 12 para saber o mês correspondente:');
    String? input = stdin.readLineSync();
    // Null safety e conversão de entrada
    int numero = int.parse(input!);
    if (!meses.contains(input)) {
      print('Esse mes é invalido! tente novamente.');
      getValidar();
    } else {
      // Função que retorna o mês correspondente
      String obterMes(int numero) {
          switch (numero) {
            case 1:
              return 'Janeiro';
            case 2:
              return 'Fevereiro';
            case 3:
              return 'Março';
            case 4:
              return 'Abril';
            case 5:
              return 'Maio';
            case 6:
              return 'Junho';
            case 7:
              return 'Julho';
            case 8:
              return 'Agosto';
            case 9:
              return 'Setembro';
            case 10:
              return 'Outubro';
            case 11:
              return 'Novembro';
            case 12:
              return 'Dezembro';
            default:
              return 'Número inválido. Por favor, insira um número de 1 a 12.';
          }
      }

      String mes = obterMes(numero);
      print(mes);
    }
  }

  getValidar();
}