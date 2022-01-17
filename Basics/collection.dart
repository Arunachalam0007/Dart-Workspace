void main() {
  //// List  ///// Contain Duplicates
  var myList = <int>[1, 3, 5, 7, 9];
  print(myList[0]); // 1
  myList.add(12);
  myList.insert(6, 22);
  print(myList); //[1, 3, 5, 7, 9, 12, 22]
  var sumOfList = 0;
  for (var val in myList) {
    sumOfList += val;
  }
  print(sumOfList); // 59

  //// Set/////
  // It Doesn't Contain Duplicates
  // It has curly braces {} instead of angle bracket []
  // It has union, intersection and difference method
  var mySet = {1, 2, 3, 4, 5};
  mySet.remove(2);
  print(mySet.elementAt(0)); // Set don't have mySet[0]
  print(mySet); //{1, 3, 4, 5}

  //// Map/////
  Map<String, dynamic> person = {'name': 'arun', 'age': 29, 'height': 1.343};
  person['age'] = 30;
  person['weight'] = 77;
  print(person); // {name: arun, age: 30, height: 1.343, weight: 77}
  print(person.keys); // (name, age, height, weight)
  print(person.values); // (arun, 30, 1.343, 77)

  for (var key in person.keys) {
    print(key); // name age height
    print(person[key]); // arun, 29, 1.343
  }

  for (var entry in person.entries) {
    print(entry.key); // name age height
    print(entry.value); // arun, 29, 1.343
  }

  int x;
  x = 10;
  int y = 2;
  print('Testing ${x + y}');

  var myListNull = ['1', '3', '5', '7', '9', null];

  for (var values in myListNull) {
    print(values?.toUpperCase());
  }
}
