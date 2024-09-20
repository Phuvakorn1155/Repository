//3651051541155 ภูวกร รุ่งปิติศุภากร

class BankAccount {
  // ตัวแปร static เก็บจำนวนบัญชีทั้งหมด
  static int totalAccounts = 0;

  // ตัวแปรเก็บยอดเงินในบัญชี
  double balance;

  
  BankAccount(this.balance) {
        totalAccounts++;
  }

  // เมธอด static
  static int getTotalAccounts() {
    return totalAccounts;
  }

  // เมธอดสำหรับฝากเงินเข้าบัญชี
  void deposit(double amount) {
    balance += amount;
  }

  // เมธอดสำหรับถอนเงินออกจากบัญชี
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      print("ยอดเงินคงเหลือไม่เพียงพอ");
    }
  }

  // เมธอดสำหรับแสดงยอดเงินในบัญชี
  void displayBalance() {
    print("ยอดเงินคงเหลือในบัญชี: \$${balance}");
  }
}

void main() {
  // ยอดเงินคงเหลือในบัญชี 1 ฝากเงิน+ถอนเงิน
  var account1 = BankAccount(2000.0);
  account1.deposit(300.0); // ฝากเงิน
  account1.withdraw(200.0); // ถอนเงิน
  print("Account 1 balance: \$${account1.balance}");

  // ยอดเงินคงเหลือในบัญชี 2 ถอนเงิน
  var account2 = BankAccount(1000.0);
  account2.withdraw(500.0); // ถอนเงิน
  print("Account 2 balance: \$${account2.balance}");

  // แสดงจำนวนบัญชีทั้งหมด
  print("Total accounts: ${BankAccount.getTotalAccounts()}");
}