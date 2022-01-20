void main() {
  profileInfoWithNamedArgs(age: 27, name: 'Arun');
  profileInfoWithPositionalArgs(26);
  positionalWithNamedArgs('AK', team: 'Fosasoft');
}

profileInfoWithPositionalArgs(age, [name = 'Kalai']) {
  print('Profile Name: $name and age $age');
}

positionalWithNamedArgs(
  name, {
  String? position,
  int age = 27,
  required String team,
}) {
  print(
      'Profile Name: $name , age $age , team: $team and position: $position ');
}

// Named Argument (Must contain Non nullable arguments)

// Option 1 (Using Option Key ? )

// void profileInfo({String? name, int? age}) {
//   print('Profile Name: $name and age $age');
// }

// Option 3 (Using default Value)
// void profileInfo({String name = '', int age = 0}) {
//   print('Profile Name: $name and age $age');
// }

//Option 2 (Using required Key )
void profileInfoWithNamedArgs({required String name, required int age}) {
  print('Profile Name: $name and age $age');
}


// void profileInfo(String name, int age) {
//   print('Profile Name: $name and age $age');
// }
