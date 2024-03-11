// ignore_for_file: avoid_print

class Car {
  String model = 'Unknown';
  void drive() {
    print('Машина $model їде.');
  }
}

void main() {
  // Оператор ?? (нульове злиття)
  String? name;
  String userName = name ?? 'Гість';
  print('Ім\'я користувача: $userName');

  // Оператор ??= (присвоєння з нульовим злиттям)
  int? a;
  a ??= 3;
  print('Значення а: $a');

  // Оператор каскадного виклику ..
  // ignore: unused_local_variable
  var car = Car()
    ..model = 'Tesla'
    ..drive();

  // Spread оператор
  List<int>? numbers = [3, 4];
  List<int> moreNumbers = [1, 2, ...numbers];
  print('Список чисел: $moreNumbers');

  numbers = null;
  List<int> anotherNumbersList = [0, ...?numbers];
  print('Інший список чисел: $anotherNumbersList');
}
