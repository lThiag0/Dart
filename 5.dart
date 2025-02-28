// Atividade 05: Validação de métodos de pagamento em uma plataforma de e-commerce

import 'dart:io';

void main() {
  String entrada = "";
  List<String> metados = <String>["cartao", "boleto", "paypal", "pix"];

  void validar() {
    print('Escolha o método de pagamento desejado (${metados.toString()}): ');
    entrada = stdin.readLineSync()!;
    if (metados.contains(entrada)) {
      print('Formato de pagamento é válido: ${entrada}');
    } else {
      print('Formato de pagamento é invalido [${entrada}], tente um novo formato de pagamento!');
      validar();
    }
  }

  validar();

}