abstract class Vehicle {
  void start();
}

class MotorCycle extends Vehicle {
  @override
  void start() {
    // TODO: implement start
    print('Motor Dinyalakan');
  }
}

void main() {
  MotorCycle motorCycle = MotorCycle();
  motorCycle.start();
}
