class Singleton {
  int? a;
  int? b;

  // Singleton(this.a, this.b);

  Singleton._privateConstructor(); // Приватний конструктор

  static final Singleton _instance =
      Singleton._privateConstructor(); // Єдиний екземпляр

  static Singleton get instance =>
      _instance; // Публічний гетер для доступу до екземпляра

  factory Singleton() {
    return _instance;
  }
  void someMethod() {
    print("Це метод Singleton класу.");
  }
}

void main() {
  // Singleton singleton1 = Singleton(1, 2);
  // Singleton singleton2 = Singleton(1, 2);
  // print(identical(singleton1, singleton2)); // Виведе false

  print('factory:');

  Singleton singletonOne = Singleton();
  Singleton singletonTwo = Singleton();

  singletonTwo.someMethod();

  print(identical(singletonOne, singletonTwo)); // Виведе true

  print('getter:');

  var singleton1 = Singleton.instance;
  var singleton2 = Singleton.instance;

  print(identical(singleton1, singleton2)); // Виведе true
  singleton1.someMethod();
}
