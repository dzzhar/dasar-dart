class Singleton {
  static final Singleton _instance = Singleton._internal(); // akses global
  Singleton._internal();

  factory Singleton() {
    return _instance;
  }

  void sayHello() {
    print('Hello from Singleton!');
  }
}

void main() {
  var s1 = Singleton();
  var s2 = Singleton();

  print(s1 == s2);
  s1.sayHello();
}
