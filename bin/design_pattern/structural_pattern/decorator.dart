abstract class Coffee {
  String getDescription();
  double getCost();
}

class SimpleCoffee implements Coffee {
  @override
  String getDescription() => "Simple Coffee ";

  @override
  double getCost() => 5.0;
}

class CoffeeDecorator implements Coffee {
  final Coffee coffee;

  CoffeeDecorator(this.coffee);

  @override
  String getDescription() => coffee.getDescription();

  @override
  double getCost() => coffee.getCost();
}

class MilkDecorator extends CoffeeDecorator {
  MilkDecorator(Coffee coffee) : super(coffee);

  @override
  String getDescription() => "${super.getDescription()}, Milk ";

  @override
  double getCost() => super.getCost() + 1.5;
}

void main() {
  Coffee coffee = SimpleCoffee();
  print("${coffee.getDescription()}\$${coffee.getCost()}");

  coffee = MilkDecorator(coffee);
  print("${coffee.getDescription()}\$${coffee.getCost()}");
}
