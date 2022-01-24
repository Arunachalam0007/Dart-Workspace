// Factory Constructors
// 1. Implement a constructor that doesn't always create a new instance of a class
// 2. initialize a final variable using logic that can't be handeled in the initializer list

import 'dart:html';

class BankAccount {
  final String userName;
  final int accountNumber;

  BankAccount({required this.userName, required this.accountNumber});

  factory BankAccount.userProfiles(Map<String, Object> userData) {
    final uName = userData['name'];
    final uAccountNumber = userData['accountNumber'];
    if (uName is String && uAccountNumber is int) {
      return BankAccount(userName: uName, accountNumber: uAccountNumber);
    }
    throw StateError('Could Not read Name or age');
  }

  Map<String, Object> getUserData() {
    return {'name': userName, 'accountNumber': accountNumber};
  }
}

void main() {
  final userProfileJson = {'name': 'arun', 'accountNumber': 989381928899283};
  final userProfileDatas = BankAccount.userProfiles(userProfileJson);
  print(userProfileDatas.getUserData());
}
