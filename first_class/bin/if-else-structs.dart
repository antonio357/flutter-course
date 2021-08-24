// @dart=2.11 
// turnning of null safety mode

import 'dart:io';
import 'package:first_class/first_class.dart' as first_class;

void main(List<String> arguments) {
  print("Digite a presença em %");
  var presence = int.parse(stdin.readLineSync());

  if (presence >= 75) {
    print("Digite a nota da prova");
    var grade = double.parse(stdin.readLineSync());

    if (grade >= 6) print("Aprovado por nota");
    else {
      print("Digite a nota da recuperação");
      var recovery = double.parse(stdin.readLineSync());

      if (recovery >= 6) print("Aprovado por recuperação");
      else print("Reprovado na recuperação");
    }
  } 
  else print("Reprovado por falta");
}
