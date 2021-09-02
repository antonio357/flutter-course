// @dart=2.11 

import 'package:test/expect.dart';

void main(List<String> args) {
  sum(); sum1(1, 2); print(sum2()); sum3(4, 5);
  print([fac(0), fac(1), fac(2), fac(3), fac(10)]);
  func(b:'a', a:'b');
  func();
  func1('posi', b:'c', a:'d');
  func2('asdasd'); func2();
  sort(comp);
  sort1();
}

// function without return and without paramters
void sum() => print("2 + 2 == 4");

// function without return and with paramters
void sum1(int a, int b) => print("$a + $b == ${a + b}");

// function with return and without paramters
String sum2() {
  return "2 + 2 == 4";
}

// function with return and with paramters 
String sum3(int a, int b) {
  return "$a + $b == ${a + b}";
}

// recursion, calling function inside function
int fac(int num) {
  if (num < 0) return -1;
  if (num == 0) return 1;
  return num * fac(num - 1);
}

// non positional parameters and optional parameter
void func({String a, String b}) => print('a == $a and b == $b');

// non positional and optional parameters and positional parameters
void func1(posi, {String a, String b}) => print('posi == $posi, a == $a and b == $b');

// positional and optional parameters
void func2([String posi=null]) => print('posi == $posi');

// passing a function as parameter
int comp(a, b) => a.compareTo(b) * -1;
void sort(Function comp) {
  var list = <int>[3,5,1,4,2];
  print(list);
  list.sort(comp);
  print(list);
}

// using anonymous function
void sort1() {
  var list = <int>[3,5,1,4,2];
  print(list);
  list.sort((a, b) => a.compareTo(b) * -1);
  print(list);
}