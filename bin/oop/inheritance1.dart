// Super atau Parent Class
class Animal {
  void makeSound() {
    print('Hewan Bersuara ');
  }
}

// Sub atau Child Class
class Dog extends Animal {
  @override
  void makeSound() {
    // TODO: implement makeSound
    super.makeSound();
    print('Anjing Menggonggong');
  }
}

void main() {
  Dog dog = Dog();
  dog.makeSound();
}
