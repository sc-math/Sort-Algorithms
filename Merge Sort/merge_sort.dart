MergeSort(List<int> list, int l, int r){

  if(r > l){

    // Encontra o valor do meio
    int m = (l + r)~/2;

    // Ordenena a primeira e segunda metade do vetor
    MergeSort(list, l, m);
    MergeSort(list, m+1, r);

    // Une ordenando as duas metades do vetor
    Merge(list, l, m, r);

  }
}

/*
* Une 2 subarrays de list[]
* primeiro subarray é list[l..m]
* segundo subarray é list[m+1...r]
* */
Merge(List<int> list, int l, int m, int r){

  // Encontra o tamanho dos 2 subarrays
  int n1 = m - l + 1;
  int n2 = r - m;

  // Cria 2 arrays temporários e copia os valores para eles
  List<int> B1 = [];
  List<int> B2 = [];

  for(int i = 0; i < n1; i++)
    B1.add(list[l + i]);

  for(int i = 0; i < n2; i++)
    B2.add(list[m + 1 + i]);


  /*
  * Inicializa as variaveis
  * i index do subarray 1
  * j index do subarray 2
  * k index do array
  * */
  int i = 0;
  int j = 0;
  int k = l;

  // Compara B1[i] com B2[j], o menor é atribuido em Arr[k]
  while(i < n1 && j < n2) {
    if (B1[i] <= B2[j]) {
      list[k] = B1[i];
      i++;
    }
    else {
      list[k] = B2[j];
      j++;
    }
    k++;
  }

  // Adiciona os valores restantes de B1 no vetor
  while(i < n1) {
    list[k] = B1[i];
    i++;
    k++;
  }

  // Adiciona os valores restantes de B2 no vetor
  while(j < n2){
    list[k] = B2[j];
    j++;
    k++;
  }
}