// @dart=2.11 

void main(List<String> args) {
  // lists and its basics methods/atributes
  print('lists declarations and its publics methods/atributs');
  List<String> list = ['list', 'with', 'type', 'it process faster than list that holds all sorts of types like the one bellow'];
  print(list); 
  var list1 = [1.45, 'antonio']; // this one acepts any object type
  print(list1);
  // var list2 = <Strting>[1.45, 'antonio']; // its not allowed, this list accepts only String objects 
  var list3 = <String>['list', 'with', 'type', 'it should process as fast as the first list'];
  print(list3);
  list3.clear();
  print("clear method\n$list3");
  list3.add('string1');
  print("add method\n$list3");
  list3.addAll(['string2', 'string3']);
  print("addAll method\n$list3");
  list3.remove('string1');
  print("remove method\n$list3");
  list3.removeAt(0);
  print("removeAt method\n$list3");
  list3.insert(0, 'string1');
  print("insert method\n$list3");
  print("length atritute\n${list3.length}");

  // while
  print('\nwhile');
  var c = 0;
  while (c < list3.length) {
    print(list3[c]);
    c += 1;
  }

  // do while
  print('do \nwhile');
  c = 0;
  do {
    print(list3[c]);
    c += 1;
  } while (c < list3.length);

  // for
  print('\nfor');
  for (var c = 0; c < list3.length; c++) // var c works here because this scope is within the for loop
    print(list3[c]);
  
  // generic for each
  print('\ngeneric for');
  for (var str in list3) print(str);

  // for each as list method
  print('\nfor each as list methods, just like map from javascript');
  void myFunction(String str) => print(str);

  list3.forEach(myFunction);
  list3.forEach((String str) => print(str));
  list3.forEach(print);
}