import 'dart:io';
import 'bubble_sort.dart';

int? n;
List<int> list = [];

main (){

  inputs();

  printList(list, false);

  BubbleSort(list);

  printList(list, true);

}

inputs(){
  n = int.parse(stdin.readLineSync() ?? '');

  for(int i = 0; i < n!; i++){

    int? input;

    do {
      input = int.tryParse(stdin.readLineSync() ?? '');
    }while(input == null);

    list.add(input);
  }
}

printList(List<int> A, bool isSorted){

  print('~~' * (n!~/2) +'\\\\'+'~~' * (n!~/2));
  isSorted ? print('Lista de Valores Ordenados') : print('Lista de Valores Inseridos');

  for(int i = 0; i < n!; i++){
    stdout.write('${A[i]} ');
  }
  print('');
}

