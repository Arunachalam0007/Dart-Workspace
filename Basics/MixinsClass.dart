// Mixins
// Use to Share functionality in multiple Classes
// Without code duplication

// Drawback
// It can't instantiate
// Using mutiple mixins with same fields and methods
mixin Mixin1 {
  String name = 'Sha';
  int age = 10;
}

mixin Mixin2 {
  int age = 40;
}

class Person with Mixin1, Mixin2 {
  void detials() {
    print('Name: $name Age: $age'); // Sha age: 40
  }
}

void main() {
  Person person = Person();
  person.detials();
}
