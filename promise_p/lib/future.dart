Future<void> display() async {
  Future.delayed(Duration(seconds: 5), () => print('Line 2'));
}

void main() async {
  print('Line 1');
  await display();
  print('Line 3');
}
