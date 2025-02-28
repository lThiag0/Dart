// Atividade 02: Validação de tipos de arquivos em um sistema de upload

import 'dart:io';

void main() {
  String entrada = "";
  List<String> formatos = <String>["pdf", "jpg", "png", "docx"];

  void validar() {
    print('Digite o tipo de formato do arquivo (${formatos.toString()}): ');
    entrada = stdin.readLineSync()!;
    if (formatos.contains(entrada)) {
      print('Formato de arquivo é válido: ${entrada}');
    } else {
      print('Formato de arquivo é invalido [${entrada}], tente um novo formato de arquivo!');
      validar();
    }
  }

  validar();

}