abstract class Animal {
  void speak();
}

class Dog implements Animal {
  @override
  void speak() => print('Woof');
}

class Cat implements Animal {
  @override
  void speak() => print('Meow');
}

class AnimalFactory {
  static Animal createAnimal(String type) {
    if (type == 'dog') return Dog();
    if (type == 'cat') return Cat();
    throw Exception('Tidak diketahui method');
  }
}

void main() {
  var dog = AnimalFactory.createAnimal('dog');
  var cat = AnimalFactory.createAnimal('cat');

  dog.speak();
  cat.speak();
}
