import 'dart:async';

void main() async {
  for (int i = 1; i <= 50; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print('FizzBuzz');
    } else if (i % 3 == 0) {
      print('Fizz');
    } else if (i % 5 == 0) {
      print('Buzz');
    } else {
      print(i);
    }

    await Future.delayed(Duration(milliseconds: 200));
  }
}
