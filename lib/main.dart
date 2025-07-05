import 'dart:math';
import 'names.dart';

void main() {
//
  runTask1();
  runTask2();
  // runTask3();
}

void runTask1() {
  print(
      '\u001b[31m-------------------------- Task 1 ----------------------------------\u001b[0m');
  var random = Random();
  final List<int> numbers = List.generate(100, (_) => random.nextInt(101));
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

void runTask2() {
  print(
      '\u001b[31m-------------------------- Task 2 ----------------------------------\u001b[0m');

  Set<String> uniqueNames1 = ukrainianNames1.toSet();
  Set<String> uniqueNames2 = ukrainianNames2.toSet();

  Set<String> commonNames = uniqueNames1.intersection(uniqueNames2);

  print('Кількість спільних імен: [33m${commonNames.length}[0m');

  Set<String> onlyInNames1 = uniqueNames1.difference(uniqueNames2);
  print('Імена, які є тільки в ukrainianNames1:');
  print('[33m$onlyInNames1[0m');

  Set<String> onlyInNames2 = uniqueNames2.difference(uniqueNames1);
  print('Імена, які є тільки в ukrainianNames2:');
  print('[33m$onlyInNames2[0m');
}
/*
void runTask3() {
  print(
      '\u001b[31m-------------------------- Task 3 ----------------------------------\u001b[0m');
}*/
