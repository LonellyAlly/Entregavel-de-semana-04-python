# Desafio Sprint 4 — Sistema de Produtos

Projeto desenvolvido para a Semana 04 da atividade de Desenvolvimento em Python, com o objetivo de praticar estruturas de dados, ordenação, filtragem e estatísticas de produtos.

O projeto apresenta duas implementações da mesma lógica: uma em Python e outra em Portugol Studio, demonstrando como os mesmos algoritmos podem ser implementados em linguagens diferentes.

## Objetivos

* Cadastrar produtos com nome, preço e categoria.
* Filtrar produtos por faixa de preço.
* Ordenar produtos por preço crescente e decrescente.
* Identificar categorias únicas.
* Calcular estatísticas dos preços.
* Gerar um relatório final.
* Comparar estruturas nativas do Python com vetores e algoritmos implementados manualmente em Portugol.

## Arquivos do projeto

```text
sprint4/
├── produtos.py
├── produtos.por
└── README.md
```

| Arquivo        | Descrição                                              |
| -------------- | ------------------------------------------------------ |
| `produtos.py`  | Implementação utilizando estruturas nativas do Python. |
| `produtos.por` | Implementação equivalente em Portugol Studio.          |
| `README.md`    | Documentação do projeto.                               |

## Funcionalidades

### 1. Cadastro de produtos

O usuário informa a quantidade de produtos e cadastra os seguintes dados:

* Nome do produto.
* Preço.
* Categoria.

No Python, os dados são armazenados em uma lista de dicionários, utilizando `input()` e `append()`.

Na versão em Portugol, são utilizados vetores de tamanho fixo para armazenar os nomes, preços e categorias.

### 2. Filtragem por preço

O usuário informa um preço de referência. O programa apresenta os produtos com preços:

* Acima do valor informado.
* Abaixo do valor informado.

Produtos com preço exatamente igual ao valor de referência não aparecem em nenhum dos dois filtros.

### 3. Ordenação

Os produtos são exibidos em ordem crescente e decrescente de preço.

**Python:**

* `sort()` modifica a lista original.
* `sorted(..., reverse=True)` retorna uma nova lista em ordem decrescente.

**Portugol Studio:**

* A ordenação crescente é realizada pelo algoritmo Bubble Sort (método da bolha).
* A ordem decrescente é obtida percorrendo o vetor ordenado de trás para frente.

Os nomes e as categorias acompanham os preços durante as trocas para manter os dados de cada produto associados corretamente.

### 4. Categorias únicas

O programa identifica as categorias cadastradas sem repetir valores.

**Python:** utiliza `set()` para eliminar duplicatas.

**Portugol Studio:** compara cada categoria com as categorias já armazenadas, adicionando somente aquelas que ainda não foram encontradas.

### 5. Estatísticas

O relatório apresenta três estatísticas principais:

* **Menor preço:** menor valor entre os produtos cadastrados.
* **Maior preço:** maior valor entre os produtos cadastrados.
* **Média dos preços:** soma de todos os preços dividida pela quantidade de produtos.

No Python, os cálculos utilizam `min()`, `max()`, `sum()` e `len()`, com os resultados agrupados em uma tupla.

Em Portugol, os valores são calculados por meio de um laço de repetição.

### 6. Relatório final

Ao final da execução, o programa apresenta:

* Quantidade de produtos cadastrados.
* Menor preço.
* Maior preço.
* Média dos preços.
* Quantidade de categorias únicas.

Na versão Python, a formatação da saída utiliza f-strings.

## Tecnologias e conceitos

| Tecnologia ou conceito | Aplicação                                     |
| ---------------------- | --------------------------------------------- |
| Python 3               | Implementação principal.                      |
| Portugol Studio        | Implementação equivalente.                    |
| Listas                 | Armazenamento de produtos em Python.          |
| Vetores                | Armazenamento de dados em Portugol.           |
| Tuplas                 | Agrupamento de estatísticas em Python.        |
| Conjuntos (`set`)      | Identificação de categorias únicas em Python. |
| Laços `for` e `para`   | Percurso e manipulação dos dados.             |
| Bubble Sort            | Ordenação manual em Portugol.                 |
| F-strings              | Formatação de relatórios em Python.           |

## Requisitos

* Python 3 instalado para executar `produtos.py`.
* Portugol Studio instalado para executar `produtos.por`.

## Como executar

### Python

No terminal, acesse a pasta do projeto e execute:

```bash
python produtos.py
```

Se o sistema utilizar o comando `python3`:

```bash
python3 produtos.py
```

### Portugol Studio

1. Abra o Portugol Studio.
2. Abra ou crie um programa.
3. Cole o conteúdo de `produtos.por`.
4. Execute o programa.

## Exemplo de utilização

Considere o cadastro dos seguintes produtos:

| Nome    |     Preço | Categoria   |
| ------- | --------: | ----------- |
| Teclado | R$ 120,00 | Periféricos |
| Mouse   |  R$ 80,00 | Periféricos |
| Monitor | R$ 900,00 | Monitores   |

O programa deverá identificar:

* Menor preço: R$ 80,00.
* Maior preço: R$ 900,00.
* Média dos preços: R$ 366,67.
* Categorias únicas: Periféricos e Monitores.

Os produtos também serão exibidos nas ordens crescente e decrescente, além dos resultados da filtragem pelo preço informado pelo usuário.

## Considerações finais

O projeto demonstra a aplicação prática de estruturas de dados e algoritmos fundamentais, destacando as diferenças entre as operações nativas do Python e suas implementações manuais em Portugol Studio.

A atividade contribui para o desenvolvimento do raciocínio lógico, da organização do código e da compreensão de como diferentes linguagens podem resolver o mesmo problema.

---

**Atividade:** Desenvolvimento em Python — Semana 04
**Desafio:** Sprint 4
**Tema:** Estruturas de dados, ordenação e estatísticas de produtos
