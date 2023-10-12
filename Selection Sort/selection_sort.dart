SelectionSort(List<int> list){

  int min;

  // Percorre a parte do Vetor não Ordenado
  for(int i = 0; i < list.length-1; i++){

    /*
    * Procura o menor elemento no intervalo
    * não ordenado do Vetor
    * */
    min = i;

    for(int j = i+1; j < list.length; j++){

      if(list[j] < list[min]){
        min = j;
      }
    }

    /*
    * Coloca o elemento de menor valor do intervalo
    * não ordenado do Vetor na posição i
    * (posição correta dele no vetor ordenado)
    * */
    int t = list[min];
    list[min] = list[i];
    list[i] = t;
  }
}