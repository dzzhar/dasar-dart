class CPU {
  void freeze() => print("CPU Freeze");
  void execute() => print("CPU Execute");
}

class Memory {
  void load(String data) => print("Memory loading: $data");
}

class HardDrive {
  String read() => 'OS boot data';
}

class ComputerFacade {
  final CPU cpu = CPU();
  final Memory memory = Memory();
  final HardDrive hardDrive = HardDrive();

  void startComputer() {
    cpu.freeze();
    memory.load(HardDrive().read());
    cpu.execute();
  }
}

void main() {
  var computer = ComputerFacade();
  computer.startComputer();
}
