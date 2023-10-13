# Heap Sort

O Heap Sort é um Algoritmo de Ordenação que utiliza a Estrutura de Dados chamada Heap Binário para a sua execução e a estratégia por trás desse Algoritmo é parecida com o Selection Sort. Primeiro iremos converter nosso vetor em um Heap Máximo, trocar a raiz do Heap (*maior valor do Heap*) com o valor na última posição (_menor valor do Heap_), chamar o MaxHeapify para ajustar nosso Heap agora com tamanho $n-1$, repetiremos esse processo até que o Heap esteja vazio, ordenando o vetor a partir dos maiores valores até os menores.  

![](https://github.com/sc-math/Sort-Algorithms/blob/main/Heap%20Sort/heap_sort_example.gif)

## Análise de Complexidade do Heap Sort

### ⏳ Complexidade Temporal
- **Melhor Caso:** a complexidade de tempo é $Ω(n \cdot log\ n)$
- **Caso Médio:** a complexidade de tempo é $Θ(n \cdot log\ n)$
- **Pior Caso:** a complexidade de tempo é $O(n \cdot log\ n)$

### 💽 Complexidade Espacial

- A complexidade espacial auxiliar é $O(1)$
