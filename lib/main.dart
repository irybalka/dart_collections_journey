import 'dart:math';

void main() {
//
  runTask1();
  // runTask2();
  // runTask3();
}

void runTask1() {
  print('-------------------------- Task 1 ----------------------------------');
  var random = Random();
  List<int> numbers = List.generate(100, (_) => random.nextInt(101));
  print('Початковий список:');
  print('[33m$numbers[0m');

  print('65-й елемент: [33m${numbers[64]}[0m');
  numbers[49] = 1000000000;
  numbers.removeWhere((n) => n == 24 || n == 45 || n == 66 || n == 88);
  print('Список після заміни та видалення:');
  print('[33m$numbers[0m');

  int tripleSum = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 3 == 0) {
      tripleSum += numbers[i];
    }
  }
  print('Сума елементів, які діляться на 3: [33m$tripleSum[0m');

  final List<int> temp = [];
  for (int numb in numbers) {
    if (numb % 2 == 0) {
      temp.add(numb);
    }
  }
  print('Довжина списку temp парних елементів зі списку numbers:');
  print('[33m$temp.length[0m');
}
/*
void runTask2() {
  print('-------------------------- Task 2 ----------------------------------');
}

void runTask3() {
  print('-------------------------- Task 3 ----------------------------------');
}*/
