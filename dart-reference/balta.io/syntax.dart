import 'dart:io';

void main() {
  const PI = 3.14;
  var name = 'Cesar Hilário';
  String job = "Mobile Developer";

  print(PI);
  print('Hello World ${name}'); // Interpolation
  print(job);

  /* Input / Output */
  print("Digite uma idade...");
  int idade = stdin.readIntSync();
  if (idade >= 18) {
    print('É maior de idade');
  } else if (idade < 0) {
    print('Idade inválida');
  } else {
    print('É menor de idade');
  }

  whileLoop();
}

extension ReadIntSyncOnStdin on Stdin {
  /** Read and converts to int an input */
  int readIntSync() => int.parse(this.readLineSync()!);
}

/** ============= SEPARATOR =============== */
// Basic types  reference
void dartTypes() {
  int age = 24;
  String name = 'César Hilário';
  double height = 1.85;
  bool isDeveloper = true;
}

// Loops
void forLoop() {
  for (int counter = 0; counter < 10; counter++) {
    print(counter);
  }
}

void whileLoop() {
  int counter = 0;
  while (counter <= 20) {
    print(counter);
    counter++;
  }
}
