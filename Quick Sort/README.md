# Quick Sort

O Quick Sort é um algoritmo de Ordenação que utiliza a estratégia Dividir e Conquistar, escolhendo um elemento como pivô e divide o vetor em elementos $<$ que o pivô e elementos $>$ que o pivô, colocando o pivô na sua posição correta no vetor ordenado, executar esses mesmos passos para os subvetores menores que o pivô e maiores que o pivô.

![](https://github.com/sc-math/Sort-Algorithms/blob/main/Quick%20Sort/gif/Quicksort-example.gif)

## Análise de Complexidade do Quick Sort

### ⏳ Complexidade Temporal
- **Melhor Caso:** a complexidade de tempo é $Ω(n \cdot log\ n)$
- **Caso Médio:** a complexidade de tempo é $Θ(n \cdot log\ n)$
- **Pior Caso:** a complexidade de tempo é $O(n^2)$

### 💽 Complexidade Espacial

- A complexidade espacial auxiliar é $O(log\ n)$
