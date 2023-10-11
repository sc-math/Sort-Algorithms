HeapSort(List<int> list){

  int N = list.length;

  ConstruirHeapMax(list, N);

  for(int i = N - 1; i > 0; i--){
    int t = list[0];
    list[0] = list[i];
    list[i] = t;

    MaxHeapify(list, i, 0);
  }
}

MaxHeapify(List<int> list, int N, int i){

  int maior = i;
  int l = Left(i);
  int r = Right(i);

  if(l < N && list[l] > list[maior]){
    maior = l;
  }

  if(r < N && list[r] > list[maior]){
    maior = r;
  }

  if(maior != i){
    int t = list[i];
    list[i] = list[maior];
    list[maior] = t;

    MaxHeapify(list, N, maior);
  }
}

ConstruirHeapMax(List<int> list, int N){

  for(int i = N~/2 - 1; i >= 0; i--){
    MaxHeapify(list, N, i);
  }
}

int Left(int i){
  return 2 * i + 1;
}

int Right(int i){
  return 2 * i + 2;
}