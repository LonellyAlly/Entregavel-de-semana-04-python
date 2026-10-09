programa
{
    funcao inicio()
    {
        inteiro quantidade, i, j
        inteiro total_categorias
        inteiro indice_menor, indice_maior
        logico repetida

        real valor_filtro
        real soma_precos, menor_preco, maior_preco, media_precos

        escreva("=== SISTEMA DE PRODUTOS ===\n")
        escreva("Quantos produtos deseja cadastrar? ")
        leia(quantidade)

        enquanto (quantidade < 1 ou quantidade > 100)
        {
            escreva("Informe uma quantidade entre 1 e 100: ")
            leia(quantidade)
        }

        cadeia nomes[100]
        cadeia categorias[100]
        cadeia categorias_unicas[100]
        real precos[100]

        para (i = 0; i < quantidade; i++)
        {
            escreva("\nCadastro do produto ", i + 1, "\n")

            escreva("Nome: ")
            leia(nomes[i])

            escreva("Preco: R$ ")
            leia(precos[i])

            escreva("Categoria: ")
            leia(categorias[i])
        }

        escreva("\nInforme o preco para filtragem: R$ ")
        leia(valor_filtro)

        escreva("\n=== PRODUTOS ACIMA DO VALOR ===\n")

        para (i = 0; i < quantidade; i++)
        {
            se (precos[i] > valor_filtro)
            {
                escreva(nomes[i], " | R$ ", precos[i],
                        " | ", categorias[i], "\n")
            }
        }

        escreva("\n=== PRODUTOS ABAIXO DO VALOR ===\n")

        para (i = 0; i < quantidade; i++)
        {
            se (precos[i] < valor_filtro)
            {
                escreva(nomes[i], " | R$ ", precos[i],
                        " | ", categorias[i], "\n")
            }
        }

        para (i = 0; i < quantidade - 1; i++)
        {
            para (j = 0; j < quantidade - 1 - i; j++)
            {
                se (precos[j] > precos[j + 1])
                {
                    real auxiliar_preco
                    cadeia auxiliar_nome
                    cadeia auxiliar_categoria

                    auxiliar_preco = precos[j]
                    precos[j] = precos[j + 1]
                    precos[j + 1] = auxiliar_preco

                    auxiliar_nome = nomes[j]
                    nomes[j] = nomes[j + 1]
                    nomes[j + 1] = auxiliar_nome

                    auxiliar_categoria = categorias[j]
                    categorias[j] = categorias[j + 1]
                    categorias[j + 1] = auxiliar_categoria
                }
            }
        }

        escreva("\n=== ORDEM CRESCENTE ===\n")

        para (i = 0; i < quantidade; i++)
        {
            escreva(nomes[i], " | R$ ", precos[i], "\n")
        }

        escreva("\n=== ORDEM DECRESCENTE ===\n")

        para (i = quantidade - 1; i >= 0; i--)
        {
            escreva(nomes[i], " | R$ ", precos[i], "\n")
        }

        total_categorias = 0

        para (i = 0; i < quantidade; i++)
        {
            repetida = falso

            para (j = 0; j < total_categorias; j++)
            {
                se (categorias[i] == categorias_unicas[j])
                {
                    repetida = verdadeiro
                }
            }

            se (repetida == falso)
            {
                categorias_unicas[total_categorias] = categorias[i]
                total_categorias = total_categorias + 1
            }
        }

        escreva("\n=== CATEGORIAS UNICAS ===\n")

        para (i = 0; i < total_categorias; i++)
        {
            escreva("- ", categorias_unicas[i], "\n")
        }

        menor_preco = precos[0]
        maior_preco = precos[0]
        soma_precos = 0

        para (i = 0; i < quantidade; i++)
        {
            se (precos[i] < menor_preco)
            {
                menor_preco = precos[i]
            }

            se (precos[i] > maior_preco)
            {
                maior_preco = precos[i]
            }

            soma_precos = soma_precos + precos[i]
        }

        media_precos = soma_precos / quantidade

        indice_menor = 0
        indice_maior = quantidade - 1

        escreva("\n====================================\n")
        escreva("          RELATORIO FINAL\n")
        escreva("====================================\n")

        escreva("Total de produtos: ", quantidade, "\n")
        escreva("Menor preco: R$ ", menor_preco, "\n")
        escreva("Maior preco: R$ ", maior_preco, "\n")
        escreva("Media dos precos: R$ ", media_precos, "\n")
        escreva("Categorias unicas: ", total_categorias, "\n")

        escreva("\n====================================\n")
        escreva("Produtos cadastrados: ", quantidade, "\n")
        escreva("Relatorio concluido.\n")
    }
}
