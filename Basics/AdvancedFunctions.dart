// 1. Anonymous Function
// 2. Function as Argument
// 3. Named Function types (aliases)
// 4. Closures

void main() {
  // myAno('arun');
  // funcWithFuncArg(myAno, 'arun');
  // funcWithFuncNamedArg(myAno, 'AK');
  // closureOperator();
  // forEachMethod();
  // mapOperator();

  whereOperator();
  firstWhereOperator();
  reduceOperator();
  // callGenerics();
}

// 1. Anonymous Function
var myAno = (String name) => name;

// 2. Pass function as an Argument
// Func with Func Argument doen't contain Named Function
funcWithFuncArg(String Function(String) myArgFunc, String name) {
  print(myArgFunc('Profile Name: $name'));
}

// 3. Named Function types (aliases)
// Typedef is alaias or named for func argument
typedef funcNamedArgFunc = String Function(String);
// OR typedef String funcNamedArgFunc(String name);
funcWithFuncNamedArg(funcNamedArgFunc myArgFunc, String name) {
  print(myArgFunc('Profile Name: $name'));
}

// 4. Closures
// Closure is same like anonymous function
// Only different is It's using variable outside of the current scope

void closureOperator() {
  const multiplier = 2;
  const list = [1, 2, 3, 4, 5];
  // using Multipler outside of the scope
  final result = list.map((val) => val * multiplier);
  print(result);
}

void forEachMethod() {
  var mySet = {1, 2, 3, 4, 5};
  mySet.remove(2);
  print(mySet.elementAt(0)); // Set don't have mySet[0]
  print(mySet); //{1, 3, 4, 5}

  mySet.forEach((element) {
    print('MY SET ELEMENTES: $element');
  });
  mySet.forEach(print);
}

// Lazy Iterator:
// The anonymous function is not evaluated unti the result or variable is used

// Map
// Take Collection
// Transform all its items
// return new Literable
// use .toList() to convert as List
void mapOperator() {
  var mySet = {1, 2, 3, 4, 5};
  final result = mySet.map((e) => e - 1).toList();
  print(result);
}

// WHERE

void whereOperator() {
  var mySet = {1, 2, 3, 4, 5};
  var result = mySet.where((element) => element == 2);
  print(result); // (2)

  final genericWhere = where<int>(mySet, (val) => val % 2 == 1);
  print(genericWhere); // {1,3,5}
}

Set<T> where<T>(Set<T> items, bool Function(T) f) {
  Set<T> results = {};
  for (var item in items) {
    if (f(item)) {
      results.add(item);
    }
  }
  return results;
}

//  First Where
void firstWhereOperator() {
  var mySet = {1, 2, 3, 4, 5};
  var result = mySet.firstWhere((element) => element == 10, orElse: () => -1);
  print(result); // -1
}

// Reduce
// Used to combines all items inside a collection return sigle result

void reduceOperator() {
  var mySet = {1, 2, 3, 4, 5};
  final sum = mySet.reduce((value, element) => value + element);
  print(sum);
}

// Generics

void callGenerics() {
  List<int> myList1 = [1, 2, 3];
  var transformVal = transform(myList1, (item) => item * 2);
  var transformGenericVal = transformGeneric<int>(myList1, (item) => item * 5);
  var transformMutlipleGenericVal = transformMutlipleGeneric<int, String>(
      myList1, (item) => 'Hello ${item * 5}');
  print(transformVal);
  print(transformGenericVal);
  print(transformMutlipleGenericVal);
}

List<int> transform(List<int> items, int Function(int) operation) {
  var result = <int>[];
  items.forEach((element) {
    result.add(operation(element));
  });
  return result;
}

// Generics with Same Input and Return Type
List<T> transformGeneric<T>(List<T> items, T Function(T) operation) {
  var result = <T>[];
  items.forEach((element) {
    result.add(operation(element));
  });
  return result;
}

// Generics with passing different input and Return Types
List<R> transformMutlipleGeneric<T, R>(List<T> items, R Function(T) operation) {
  var result = <R>[];
  items.forEach((element) {
    result.add(operation(element));
  });
  return result;
}
