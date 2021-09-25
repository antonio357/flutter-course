void main() {
  asyncLoadData();
  print('buttons'); print('fileds'); print('images');
}

Future asyncLoadData() {
  return Future.delayed(Duration(seconds: 2), () => print('data loaded'));
}