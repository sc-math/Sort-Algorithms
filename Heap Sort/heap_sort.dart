HeapSort(List<int> list){

  // Tamanho do Heap
  int N = list.length;

  ConstruirHeapMax(list, N);

  /*
  * Faz a troca dos valores da raiz e da posição 0 do Heap
  * diminui o tamanho do Heap para cada iteração do For
  * Ordenando o vetor da direita para esquerda
  * */
  for(int i = N - 1; i > 0; i--){
    int t = list[0];
    list[0] = list[i];
    list[i] = t;

    MaxHeapify(list, i, 0);
  }
}

/*
* Mantém a propriedade de Heap Máximo
* i é o índice do vetor
* n é o tamanho do Heap
* */
MaxHeapify(List<int> list, int N, int i){

  //Inicializa o maior como a raiz
  int maior = i;

  //Recebe as posições dos filhos a esquerda e direita
  int l = Left(i);
  int r = Right(i);

  // Se o filho da esquerda for maior que a raiz, guarde a posição dele
  if(l < N && list[l] > list[maior]){
    maior = l;
  }

  // Se o filho da direita for maior que nosso maior valor até agora, guarde a posição dele
  if(r < N && list[r] > list[maior]){
    maior = r;
  }

  // Se o maior valor não for a raiz, realiza a troca entre os valores da raiz e o maior valor
  if(maior != i){
    int t = list[i];
    list[i] = list[maior];
    list[maior] = t;

    // Chamada recursiva para propagar a verificação de Heap Máximo
    MaxHeapify(list, N, maior);
  }
}

// Transforma o Vetor em um Heap Máximo
ConstruirHeapMax(List<int> list, int N){

  for(int i = N~/2 - 1; i >= 0; i--){
    MaxHeapify(list, N, i);
  }
}

// Retorna o Filho a Esquerda
int Left(int i){
  return 2 * i + 1;
}

// Retorna o Filho a Direita
int Right(int i){
  return 2 * i + 2;
}