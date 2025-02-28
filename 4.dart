// Atividade 04: Criando a função de depósito e fazendo sua validação

import 'dart:io';

void main() {
  String entrada = "";
  double valorFinal = 0;
  List<String> operacao = <String>["deposito", "retirada", "transferencia", "pagamento"];

  void validar() {
    print('Digite a categoria do produto (${operacao.toString()}): ');
    entrada = stdin.readLineSync()!;
    if (operacao.contains(entrada)) {
        print('Digite o valor da operação:');
        String? valor = stdin.readLineSync();
        // Null safety e conversão de entrada
        double valorFinal = double.parse(valor!);
        print('Operação escolhida: ${entrada}, Valor: ${valorFinal}');
    } else {
        print('operação inválida que não existe na lista!: ${entrada}');
        print('Operação inválida. Tente novamente.');
        validar();
    }
  }

  validar();

}