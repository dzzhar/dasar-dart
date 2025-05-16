abstract class DiscountStrategy {
  double calculate(double amount);
}

class RegularDiscount implements DiscountStrategy {
  @override
  double calculate(double amount) {
    return amount * 0.9;
  }
}

class VipDiscount implements DiscountStrategy {
  @override
  double calculate(double amount) {
    return amount * 0.8;
  }
}

class PlatinumDiscount implements DiscountStrategy {
  @override
  double calculate(double amount) {
    return amount * 0.5;
  }
}

class NoDiscount implements DiscountStrategy {
  @override
  double calculate(double amount) {
    return amount;
  }
}

class DiscountCalculator {
  final DiscountStrategy strategy;

  DiscountCalculator(this.strategy);
  double calculate(double amount) {
    return strategy.calculate(amount);
  }
}

void main() {
  var regular = DiscountCalculator(RegularDiscount());
  var vip = DiscountCalculator(VipDiscount());
  var platinum = DiscountCalculator(PlatinumDiscount());
  var none = DiscountCalculator(NoDiscount());

  print("Regular: ${regular.calculate(100000)}");
  print("VIP: ${vip.calculate(500000)}");
  print("Platinum: ${platinum.calculate(300000)}");
  print("None: ${none.calculate(0)}");
}
