void main() {
  final shaAccount = BankAccount(accountHolder: 'sha', balanceAmount: 100);
  final anonymous =
      BankAccount.anonymous(accountHolder: 'xyz', balanceAmount: 1000);
  shaAccount.accountIfscCode = 'KVB018292992';
  shaAccount.bankDetails;
  shaAccount.getName;
  shaAccount.details();
  print(
      'Account Name: ${shaAccount.accountHolder} Balance: ${shaAccount.balanceAmount}');

  print(
      'Anonymous Account Name: ${anonymous.accountHolder} Balance: ${anonymous.balanceAmount}');
}

abstract class testing {
  get getName;
  void details() {
    print('abc');
  }
}

abstract class testing2 {
  get getName;
  void details() {
    print('abc');
  }
}

// Three Types of Constructors
// 1. Default Constructors
// 2. Named Constructors
// 3. Factory Constructors

class BankAccount implements testing, testing2 {
  @override
  get getName {
    print('Getting My Name');
  }

  @override
  // TODO: implement hashCode
  int get hashCode => super.hashCode;
  @override
  void details() {
    print('Bank Account Override');
  }

  final String accountHolder;
  int balanceAmount; // Stored Variable (Stored In Memory)
  // int _balanceAmount; // Private variable starts with underscore _
  String? ifscCode;

  // Getter // Computed Variable
  get bankDetails {
    print(
        'Account Holder Name: $accountHolder Account Balance: $balanceAmount ifscCode: $ifscCode');
  }

  //Setter
  set accountIfscCode(String ifscCodeNumber) {
    this.ifscCode = ifscCodeNumber;
  }

  // 1. Default Constructors:

  //BankAccount(String accountHolderName) : accountHolder = accountHolderName;
  BankAccount({required this.accountHolder, this.balanceAmount = 0});

  // 2. Named Constructos:

  // BankAccount.anonymous(String accountHolderName, int accountBalance)
  //     : accountHolder = accountHolderName,
  //       balanceAmount = accountBalance;
  BankAccount.anonymous({required this.accountHolder, this.balanceAmount = 0});
}
