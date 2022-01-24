void main() {
  // fetchUserData()
  //     .then((value) => print(value))
  //     .catchError((e) => print(e))
  //     .whenComplete(() => print('Done'));
  orderDetail();
  print('Done');
}

Future<String> fetchUserData() =>
    Future.delayed(Duration(seconds: 20), () => 'Your Order Ready...');

Future<int> orderNumber() => Future.value(78726);
Future<void> orderDetail() async {
  var detail = await fetchUserData();
  var orderID = await orderNumber();
  print(detail);
  print(orderID);
}
