//3651051541155 ภูวกร รุ่งปิติศุภากร

class BankAccount {// Superclass

  double _balance;
  String _name;

  // Constructor สำหรับการเริ่มต้นสมดุลและตั้งชื่อ
  BankAccount(this._balance, this._name);

  double get balance => _balance;

  // วิธีการฝากเงิน
  void deposit(double amount) {
    _balance += amount;
    print("ฝากเงินแล้ว: \฿${amount}, ค่าคงเหลือใหม่: \฿${_balance}");
  }

  // วิธีการถอนเงิน
  void withdraw(double amount) {
    if (_balance >= amount) {
      _balance -= amount;
      print("ถอนออกแล้ว: \฿${amount}, ค่าคงเหลือใหม่: \฿${_balance}");
    } else {
      print("ยอดเงินคงเหลือไม่เพียงพอ การถอนเงินล้มเหลว :(");
    }
  }

  // วิธีการแสดงยอดเงินคงเหลือ
  void showBalance() {
    print("ยอดคงเหลือปัจจุบัน: \฿${_balance}");
  }
}

class SavingAccount extends BankAccount {// Subclass
  double _interestRate; // อัตราดอกเบี้ยเป็นเปอร์เซ็นต์

// ตัวสร้างสำหรับเริ่มต้นยอดคงเหลือ ชื่อ และอัตราดอกเบี้ย
  SavingAccount(double balance, String name, this._interestRate)
      : super(balance, name);

  // คำนวณ วิธีการเพิ่มดอกเบี้ยเข้าในยอดคงเหลือ
  void addInterest() {
    double interest = _balance * (_interestRate / 100);
    _balance += interest;
    // แค่ใส่ \$ แล้วก็ใช้งานได้เลย Text('\฿800') = ฿800 (บาท)
    print("เพิ่มดอกเบี้ย: \฿${interest}, ค่าคงเหลือใหม่: \฿${_balance}");
  }
}

void main(List<String> args) {
  var account = SavingAccount(2000, "Phuvakorn Rungpitisupakorn", 3.0);

  // แสดงยอดคงเหลือเริ่มต้น
  account.showBalance();

  // ฝากเงิน
  account.deposit(1000); // 2000 + 1000 = 3000

  // ถอนเงิน
  account.withdraw(200); // 3000 - 200 = 2800

  // ดอกเบี้ย (3%)
  account.addInterest();

 // แสดงยอดเงินคงเหลือสุดท้าย
  account.showBalance();
}