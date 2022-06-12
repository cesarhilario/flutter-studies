void main() {
  // var names = [];
  List<String> names = [];
  names.add('César Hilário');
  names.add('Augusto Hilário');
  names.add('Lucia Hilário');
  // names.add(0); This is possible, weither names is declared as var
  print(names);
  print(names.length);
  names.remove('Augusto Hilário');
  print(names);
  print(names.runtimeType); // List<dynamic>

  List<int> numbers = [0, 1, 2, 3];
  print(numbers.runtimeType); // List<int>
  numbers.removeAt(2);
  print(numbers); // [0, 1, 4]
}
