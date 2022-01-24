void main() {
  sumOfOrders();
}

Future<int> sumStream1(Stream<int> strm) =>
    strm.reduce((previous, element) => previous + element);

Future<void> sumOfOrders() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5]);
  final sumOfOrder = await sumStream1(stream);
  print(sumOfOrder);

  final strmGenerator = countStream(6);
  final sumOfOrder2 = await sumStream1(strmGenerator);
  print(sumOfOrder2);
}

// Stream Generator

Stream<int> countStream(int n) async* {
  for (var i = 1; i <= n; i++) {
    yield i; // Yield is await keyward in stream generator
  }
}
