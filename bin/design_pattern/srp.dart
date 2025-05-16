class Employee {
  String name;
  double baseSalary;
  Employee(this.name, this.baseSalary);

  double calculateSalary() {
    // logika perhitungan gaji
    return baseSalary * 1.2; // contoh perhitungan
  }
}

class EmployeeRepository {
  void save(Employee employee) {
    print("Menyimpan ${employee.name} Ke Database");
  }
}

class EmployeeReport {
  void generate(Employee employee) {
    print(
      "Membuat Laporan PDF untuk ${employee.name} Dengan Gaji ${employee.calculateSalary()}",
    );
  }
}

void main() {
  var employee = Employee('Budi', 5000000);
  var repository = EmployeeRepository();
  var report = EmployeeReport();

  print('Gaji: ${employee.calculateSalary()}');
  repository.save(employee);
  report.generate(employee);
}
