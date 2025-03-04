class BankAccount {
  String _accountNumber;
  double _balance;

  BankAccount(this._accountNumber, this._balance);

  void deposit(double amount) {
    _balance += amount;
  }

  double getBalance() {
    return _balance;
  }
}

void main() {
  BankAccount myAcc = BankAccount('50000000', 1000000);

  myAcc.deposit(500);
  print('Saldo: Rp.${myAcc.getBalance()}');
}
