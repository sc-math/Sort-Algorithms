QuickSort(List<int> list, int p, int r){

  if(p < r){

    // Índice que indica onde ocorreu o particionamento
    int q = Particao(list, p, r);

    // Ordena a partição antes e depois o índice
    QuickSort(list, p, q-1);
    QuickSort(list, q+1, r);
  }
}

int Particao(List<int> list, p, r){

  // Escolha do pivô
  int pivo = list[r];

  // Indíce do menor elemento no vetor
  int i = p - 1;

  for(int j = p; j < r; j++){

    /*
    * Se o elemento for menor que o pivô eu realizo a troca
    * entre o elemento atual e o primeiro elemento maior que o pivô
    * */
    if(list[j] <= pivo){
      i++;
      int t = list[i];
      list[i] = list[j];
      list[j] = t;
    }
  }

  /*
  * Realiza a troca entre o pivô e o primeiro valor da partição
  * dos elementos > pivô, colocando o pivô na sua posição correta*/
  int t = list[i+1];
  list[i+1] = list[r];
  list[r] = t;

  // Retorna a posição do pivô
  return i+1;
}