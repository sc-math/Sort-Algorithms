QuickSort(List<int> list, int p, int r){

  if(p < r){
    int q = Particao(list, p, r);
    QuickSort(list, p, q-1);
    QuickSort(list, q+1, r);
  }
}

int Particao(List<int> list, p, r){

  int pivo = list[r];
  int i = p - 1;

  for(int j = p; j < r; j++){

    if(list[j] <= pivo){
      i++;
      int t = list[i];
      list[i] = list[j];
      list[j] = t;
    }
  }

  int t = list[i+1];
  list[i+1] = list[r];
  list[r] = t;

  return i+1;
}