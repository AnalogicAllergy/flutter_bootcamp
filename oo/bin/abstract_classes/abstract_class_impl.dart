import 'abstract_class.dart';
import 'dart:math';

class MyContractImpl implements MyContract {
  var balances = [1, 22, 55, 99, 98595, 12000, 2000];

  @override
  void loadBalances() {
    // TODO: implement loadBalances
    print(balances);
  }

  @override
  void receiveMoney() {
    // TODO: implement receiveMoney
    balances.add(2000);
  }

  @override
  void sendMoney() {
    // TODO: implement sendMoney
    balances.removeAt(0);
  }

  @override
  void showBalances() {
    // TODO: implement showBalances
    print(sum(balances));
  }

  @override
  void withdrawMoney() {
    // TODO: implement withdrawMoney
    print('ATM withdrawal is of ${Random(32).nextDouble()}');
  }

  double sum(var listValues) {
    var sum = 0.0;
    for (var i = 0; i < listValues.length; i++) {
      sum += listValues[i];
    }
    return sum;
  }
}
