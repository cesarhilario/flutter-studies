import 'dart:io';

void main() {
  print('Informe seu peso (em Kg)...');
  double weight = stdin.readDoubleSync();
  print('Informe sua altura (em metros)...');
  double height = stdin.readDoubleSync();

  double IMC = calculateIMC(weight, height);
  print('Seu IMC é de: ${IMC}');

  rankIMC(IMC);
}

double calculateIMC(double weight, double height) {
  return weight / (height * height);
}

void rankIMC(double IMC) {
  if (IMC <= 18.5) {
    print('Você está abaixo do peso');
  } else if (IMC > 18.5 && IMC <= 24.9) {
    print('Você está com o peso normal');
  } else if (IMC > 24.9 && IMC < 29.9) {
    print('Você está com Sobrepeso');
  } else if (IMC > 29.9 && IMC < 34.9) {
    print('Você está com obesidade grau 1');
  } else if (IMC > 34.9 && IMC < 39.9) {
    print('Você está com obesidade grau 2');
  } else {
    print('Você está com obesidade grau 3');
  }
}

extension ReadDoubleSyncOnStdin on Stdin {
  /** Read and converts to int an input */
  double readDoubleSync() => double.parse(this.readLineSync()!);
}
