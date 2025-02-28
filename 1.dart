// Atividade 01: Validação de categorias de produtos em um sistema de estoque.

import 'dart:io';

void main() {
  String entrada = "";
  List<String> categorias = <String>["eletronicos", "alimentos", "vestuario", "livros"];

  void validar() {
    print('Digite a categoria do produto (${categorias.toString()}): ');
    entrada = stdin.readLineSync()!;
    if (categorias.contains(entrada)) {
      print('Categoria válida: ${entrada}');
    } else {
      print('Categoria invalida: ${entrada}');
    }
  }

  validar();

}