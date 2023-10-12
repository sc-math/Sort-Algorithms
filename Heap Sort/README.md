# Heap Sort

Esse algoritmo de Ordenação utiliza uma estratégia parecida com o Selection Sort,  primeiro encontramos o elemento de menor valor e colocamos ele no inicio, esse processo é repetido até que o vetor esteja ordenado. Esse algoritmo utiliza a estrutura de dados chamada Heap Binário. Primeiro iremos converter nosso vetor em um Heap Máximo, retirar a raiz do Heap e adicionar ela no final do nosso vetor Ordenado, chamar o MaxHeapify para ajustar nosso Heap agora com tamanho n-1, repetiremos esse processo até que o Heap esteja vazio.

![](https://github.com/sc-math/Sort-Algorithms/blob/main/Heap%20Sort/gif/Heap-sort-example.gif)

## Análise de Complexidade do Insertion Sort

### ⏳ Complexidade Temporal
- **Melhor Caso:** a complexidade de tempo é $Ω(n \cdot log\ n)$
- **Caso Médio:** a complexidade de tempo é $Θ(n \cdot log\ n)$
- **Pior Caso:** a complexidade de tempo é $O(n \cdot log\ n)$

### 💽 Complexidade Espacial

- A complexidade espacial auxiliar é $O(1)$
