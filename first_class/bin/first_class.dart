// @dart=2.11 
// turnning of null safety mode

import 'dart:io';
import 'package:first_class/first_class.dart' as first_class;

void main(List<String> arguments) {
  // static type
    print('with static type');
    String name; int age; double salary;
    print("digite seu nome:"); name = stdin.readLineSync();
    print("digite sua age:"); age = int.parse(stdin.readLineSync());
    print("digite seu salary:"); salary = double.parse(stdin.readLineSync());
    print("Meu nome é $name, tenho $age anos e meu salário é $salary");
}
