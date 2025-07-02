# Manual de Uso do Hugo para o Blog SherlockRamos

Este manual fornece instruções básicas sobre como usar o Hugo para gerenciar seu blog, criar novas páginas, inserir imagens e utilizar a funcionalidade de copiar para a área de transferência.

## 1. Comandos Básicos do Hugo

Aqui estão os comandos mais comuns que você usará:

- **`hugo server`**: Inicia um servidor de desenvolvimento local. Isso permite que você visualize seu site em tempo real no seu navegador (geralmente em `http://localhost:1313/`). As alterações nos arquivos são refletidas automaticamente.
- **`hugo`**: Constrói o site estático. Isso gera todos os arquivos HTML, CSS, JavaScript e outros ativos na pasta `public/`. Esses são os arquivos que você fará o deploy para o GitHub Pages.

## 2. Como Criar uma Nova Página (Post)

Para criar um novo post ou página, use o comando `hugo new`:

```bash
hugo new content/posts/minha-nova-publicacao.md
```

- Substitua `content/posts/minha-nova-publicacao.md` pelo caminho e nome de arquivo desejados. Para posts de blog, é comum colocá-los em `content/posts/`.
- Este comando criará um novo arquivo Markdown com o "front matter" (metadados como título, data, rascunho) preenchido automaticamente, baseado no seu arquetipo (`archetypes/default.md`).

Exemplo de um novo post:

```markdown
---
title: "Minha Nova Publicação"
date: 2025-07-02T10:00:00-03:00
draft: true
---

Este é o conteúdo da minha nova publicação.
```

Lembre-se de mudar `draft: true` para `draft: false` quando o post estiver pronto para ser publicado.

## 3. Como Inserir Imagens

Você pode inserir imagens de duas maneiras principais:

### a) Imagens na pasta `static/`

Coloque suas imagens na pasta `static/`. Por exemplo, se você colocar `minha-imagem.jpg` em `static/images/`, você pode referenciá-la no seu Markdown assim:

```markdown
![Descrição da Imagem](/images/minha-imagem.jpg)
```

### b) Imagens em Page Bundles (Recomendado para posts)

Para posts de blog, é uma boa prática usar "Page Bundles". Isso significa que você cria uma pasta para o seu post e coloca o arquivo Markdown (`index.md` ou o nome do post) e as imagens relacionadas dentro dessa pasta.

Exemplo:

1.  Crie uma pasta para o seu post: `content/posts/meu-post-com-imagens/`
2.  Dentro dessa pasta, crie seu arquivo Markdown: `content/posts/meu-post-com-imagens/index.md`
3.  Coloque suas imagens na mesma pasta: `content/posts/meu-post-com-imagens/imagem-do-post.jpg`

Então, no seu `index.md`, você pode referenciar a imagem diretamente:

```markdown
![Descrição da Imagem](imagem-do-post.jpg)
```

### c) Usando Shortcodes de Imagem (PaperMod)

O tema PaperMod pode ter shortcodes específicos para imagens que oferecem mais controle (como legendas, classes CSS). Verifique a documentação do PaperMod para shortcodes como `figure` ou `inTextImg`.

Exemplo de `figure` (se suportado pelo tema):

```markdown
{{< figure src="imagem-do-post.jpg" title="Minha Imagem Legal" caption="Esta é uma imagem de exemplo." >}}
```

## 4. Como Inserir um Botão "Copiar para a Área de Transferência" (Copy-to-Clipboard)

O tema PaperMod já vem com a funcionalidade de "copy-to-clipboard" para blocos de código. Você não precisa fazer nada extra para isso.

Basta formatar seu código como um bloco de código Markdown:

````markdown
```python
print("Olá, mundo!")
```
````

Quando o site for gerado, um botão "Copiar" aparecerá automaticamente no canto superior direito do bloco de código, permitindo que os visitantes copiem o conteúdo facilmente.

---

Este manual é um guia rápido. Para informações mais detalhadas, consulte a [documentação oficial do Hugo](https://gohugo.io/documentation/) e a [documentação do tema PaperMod](https://adityatelange.github.io/hugo-PaperMod/posts/papermod-features/).
