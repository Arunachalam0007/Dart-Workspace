void main() {
  int? extensionStringVal = '1234'.toIntorNull();
  int iterableIntSum = [1, 2, 3, 4].sum();
  double iterableGenericIntSum = [1.0, 2.0, 3.0, 4.8].sum();
  print(extensionStringVal);
  print(iterableIntSum);
  print(iterableGenericIntSum);
  for (var val in 1.rangeTo(5)) {
    print(val);
  }
}

extension StringConverstions on String {
  int? toIntorNull() {
    return int.tryParse(this);
  }
}

extension IterableSum on Iterable<int> {
  int sum() => this.reduce((value, element) => value + element);
}

extension IterableGenericSum<T extends num> on Iterable<T> {
  T sum() => this.reduce((value, element) => value + element as T);
}

extension IterableRange on int {
  List<int> rangeTo(int other) {
    if (this > other) {
      return [];
    }
    var list = [this];
    for (int i = this + 1; i <= other; i++) {
      list.add(i);
    }
    return list;
  }
}
