import 'dart:io';

void main(List<String> args) {
  List<String> products = [];
  bool keepRunning = true;

  while (keepRunning) {
    print(
        'Carrinho de compras [0] - SAIR | [3] - REMOVER ITEM | [9] - IMPRIMIR ');
    print('Adicone um produto...');
    String input = stdin.readLineSync() as String;

    if (input == '0') {
      print(products);
      print('Fim do programa!');
      keepRunning = false;
    } else if (input == '9') {
      for (int counter = 0; counter < products.length; counter++) {
        print("ITEM $counter = ${products[counter]}");
      }
      print('\n');
    } else if (input == "3") {
      print("Qual item você gostaria de remover? (Número)");
      print(products);
      int itemToRemove = stdin.readIntSync();
      products.removeAt(itemToRemove);
      print("Produto removido!!!");
    } else {
      products.add(input);
      print("\x1B[2J\x1B[0;0H");
    }
  }
}

extension ReadIntSyncOnStdin on Stdin {
  /** Read and converts to int an input */
  int readIntSync() => int.parse(this.readLineSync()!);
}
