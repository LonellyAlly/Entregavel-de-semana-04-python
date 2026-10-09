# Desafio Sprint 4 - Sistema de Produtos

produtos = []

quantidade = int(input("Quantos produtos deseja cadastrar? "))

for i in range(quantidade):
    print(f"\nCadastro do produto {i + 1}")

    nome = input("Nome: ")
    preco = float(input("Preco: ").replace(",", "."))
    categoria = input("Categoria: ")

    produto = {
        "nome": nome,
        "preco": preco,
        "categoria": categoria
    }

    produtos.append(produto)

if not produtos:
    print("\nNenhum produto cadastrado.")
else:
    valor_filtro = float(
        input("\nInforme o preco para filtragem: ").replace(",", ".")
    )

    print("\nProdutos acima do valor informado:")

    encontrados = False

    for produto in produtos:
        if produto["preco"] > valor_filtro:
            print(
                f"Nome: {produto['nome']} | "
                f"Preco: R$ {produto['preco']:.2f} | "
                f"Categoria: {produto['categoria']}"
            )
            encontrados = True

    if not encontrados:
        print("Nenhum produto encontrado acima desse valor.")

    print("\nProdutos abaixo do valor informado:")

    encontrados = False

    for produto in produtos:
        if produto["preco"] < valor_filtro:
            print(
                f"Nome: {produto['nome']} | "
                f"Preco: R$ {produto['preco']:.2f} | "
                f"Categoria: {produto['categoria']}"
            )
            encontrados = True

    if not encontrados:
        print("Nenhum produto encontrado abaixo desse valor.")

    produtos.sort(key=lambda produto: produto["preco"])

    print("\nProdutos em ordem crescente:")

    for produto in produtos:
        print(
            f"{produto['nome']} - "
            f"R$ {produto['preco']:.2f}"
        )

    produtos_decrescentes = sorted(
        produtos,
        key=lambda produto: produto["preco"],
        reverse=True
    )

    print("\nProdutos em ordem decrescente:")

    for produto in produtos_decrescentes:
        print(
            f"{produto['nome']} - "
            f"R$ {produto['preco']:.2f}"
        )

    categorias_unicas = set()

    for produto in produtos:
        categorias_unicas.add(produto["categoria"])

    print("\nCategorias unicas:")

    for categoria in sorted(categorias_unicas):
        print(f"- {categoria}")

    precos = [produto["preco"] for produto in produtos]

    menor_preco = min(precos)
    maior_preco = max(precos)
    media_precos = sum(precos) / len(precos)

    estatisticas = (
        menor_preco,
        maior_preco,
        media_precos
    )

    print("\n" + "=" * 45)
    print("           RELATORIO FINAL")
    print("=" * 45)

    print(f"Total de produtos: {len(produtos)}")
    print(f"Menor preco: R$ {estatisticas[0]:.2f}")
    print(f"Maior preco: R$ {estatisticas[1]:.2f}")
    print(f"Media dos precos: R$ {estatisticas[2]:.2f}")
    print(f"Total de categorias unicas: {len(categorias_unicas)}")

    print("\nLista de categorias:")

    for categoria in sorted(categorias_unicas):
        print(f"- {categoria}")

    print("=" * 45)
