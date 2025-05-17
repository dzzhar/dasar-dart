abstract class Observer {
  void update(String message);
}

class ConcreteObserver implements Observer {
  final String name;
  ConcreteObserver(this.name);

  @override
  void update(String message) {
    print('$name received: $message');
  }
}

class Subject {
  List<Observer> observers = [];

  void attach(Observer observer) {
    observers.add(observer);
  }

  void notify(String message) {
    for (var observer in observers) {
      observer.update(message);
    }
  }
}

void main() {
  var subject = Subject();
  var user1 = ConcreteObserver("User 1");
  var user2 = ConcreteObserver("User 2");

  subject.attach(user2);
  subject.attach(user1);

  subject.notify("New update available!!!");
}
