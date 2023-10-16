# Quick Sort

O Quick Sort é um algoritmo de Ordenação que utiliza a estratégia Dividir e Conquistar, o algoritmo escolhe um elemento como pivô, particiona o vetor em `elementos < pivô`, `elementos > pivô` e coloca o pivô na sua posição correta no vetor ordenado, após colocar o pivô na posição correta é realizado os mesmo passos para o subvetores de `elementos < pivô` e `elementos > pivô`.

![](https://github.com/sc-math/Sort-Algorithms/blob/main/Quick%20Sort/quick_sort_example.gif)

## Análise de Complexidade do Quick Sort

### ⏳ Complexidade Temporal
- **Melhor Caso:** a complexidade de tempo é $Ω(n \cdot log\ n)$
- **Caso Médio:** a complexidade de tempo é $Θ(n \cdot log\ n)$
- **Pior Caso:** a complexidade de tempo é $O(n^2)$

### 💽 Complexidade Espacial

- A complexidade espacial auxiliar é $O(log\ n)$
