BubbleSort(List<int> list){

  for(int i = list.length; i > 0; i--){
    bool swapped = false;
    for(int j = 1; j < i; j++){

      if(list[j-1] > list[j]){

        /*
        * Realiza a troca entre os valores adjacentes
        * deixando o maior valor sempre na direita
        * */
        int t = list[j-1];
        list[j-1] = list[j];
        list[j] = t;

        swapped = true;
      }
    }

    // Se não ouve trocar, o Arr[i ... n] está ordenado
    if(!swapped)
      break;
  }
}