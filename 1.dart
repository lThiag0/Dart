// Atividade 01: Validação de categorias de produtos em um sistema de estoque.

import 'dart:io';

void main() {
  // Inicia a variavel com o nome entrada e cria a lista ja com itens existentes
  String entrada = "";
  List<String> categorias = <String>["eletronicos", "alimentos", "vestuario", "livros"];

  // Cria a função para validr 
  void validar() {
    // Pede ao usuario para digita e salva na entrada a resposta
    print('Digite a categoria do produto (${categorias.toString()}): ');
    entrada = stdin.readLineSync()!;
    // Verifica se existe o valor digitado na lista
    if (categorias.contains(entrada)) {
      print('Categoria válida: ${entrada}');
    } else {
      print('Categoria invalida: ${entrada}');
    }
  }

  // Chama a função
  validar();

}