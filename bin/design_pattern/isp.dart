abstract class Printer {
  void printing();
}

abstract class Scanner {
  void scan();
}

abstract class Fax {
  void fax();
}

class OldPrinter implements Printer {
  @override
  void printing() {
    print("OldPrinter: Printing Document...");
  }
}

class ModernPrinter implements Printer, Scanner, Fax {
  @override
  void printing() {
    print("ModernPrinter: Printing Document...");
  }

  @override
  void scan() {
    print("Scan...");
  }

  @override
  void fax() {
    print("Fax...");
  }
}

void main() {
  var oldPrinter = OldPrinter();
  oldPrinter.printing();

  var modernPrinter = ModernPrinter();
  modernPrinter.printing();
  modernPrinter.scan();
  modernPrinter.fax();
}
