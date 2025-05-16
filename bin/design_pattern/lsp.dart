// interface untuk yang bisa terbang
abstract class Flyable {
  String fly();
}

// class dasar untuk semua burung
class Bird {
  void eat() {
    print('Brid is eating');
  }

  void reproduce() {
    print('Bird is reproduce');
  }
}

class Sparrow extends Bird implements Flyable {
  @override
  String fly() {
    return "I'm Fly";
  }
}

class Penguin extends Bird {
  void swim() {
    print("I'm swimming");
  }
}

void letFly(Flyable creature) {
  print(creature.fly());
}

void main() {
  Sparrow sparrow = Sparrow();
  Penguin penguin = Penguin();

  letFly(sparrow);
  penguin.swim();
}
