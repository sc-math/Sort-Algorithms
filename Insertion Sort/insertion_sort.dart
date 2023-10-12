InsertionSort(List<int> list){

  int i = 0;
  int key = 0;

  for(int j = 1; j < list.length; j++){

    key = list[j];
    i = j-1;

    /*
    * Move todos os valores do Array[0...i-1]
    * maiores que a chave 1 casa para direita
    */
    while(i >= 0 && list[i] > key){
      list[i+1] = list[i];
      i--;
    }

    list[i+1] = key;
  }
}