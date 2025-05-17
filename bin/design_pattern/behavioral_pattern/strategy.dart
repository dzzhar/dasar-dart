abstract class PaymentStrategy {
  void pay(int amount);
}

class CreditCardPayment implements PaymentStrategy {
  @override
  void pay(int amount) => print("Paid\ ${amount} using Credit Card");
}

class PaypalPayment implements PaymentStrategy {
  @override
  void pay(int amount) => print("Paid\ ${amount} using Paypal");
}

class ShoppingCart {
  late PaymentStrategy paymentMethod;
  void checkout(int amount) {
    paymentMethod.pay(amount);
  }
}

void main() {
  var cart = ShoppingCart();
  cart.paymentMethod = CreditCardPayment();
  cart.checkout(1000);

  cart.paymentMethod = PaypalPayment();
  cart.checkout(2000);
}
