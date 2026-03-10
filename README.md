# Projeto ORM com Dart e Drift 🚀

Este projeto é um trabalho acadêmico para a disciplina de Aplicações de Banco de Dados. O objetivo principal é demonstrar a implementação e o uso de um Mapeamento Objeto-Relacional (ORM) utilizando a linguagem Dart.

Para este projeto, foi escolhido o **Drift**, um dos ORMs mais robustos do ecossistema Dart, operando em conjunto com um banco de dados **SQLite** local.

## 📋 Pré-requisitos

Para rodar este projeto, você precisará ter o [Dart SDK](https://dart.dev/get-dart) instalado na sua máquina. Além disso, o SQLite exige configurações específicas dependendo do seu sistema operacional:

### 🐧 Para usuários de Linux (Ubuntu/Mint)
É necessário garantir que a biblioteca em C do SQLite esteja instalada no sistema. Abra o terminal e rode:
```bash
sudo apt update
sudo apt install libsqlite3-dev

```

### 🪟 Para usuários de Windows

O Dart no Windows precisa do arquivo de biblioteca dinâmica (`.dll`) do SQLite para funcionar:

1. Acesse a página de download oficial do SQLite: [sqlite.org/download.html](https://www.sqlite.org/download.html).
2. Na seção **"Precompiled Binaries for Windows"**, baixe o arquivo `sqlite-dll-win64-x64-*.zip`.
3. Extraia o arquivo baixado.
4. Pegue o arquivo `sqlite3.dll` e cole na **pasta raiz** deste projeto (na mesma pasta onde fica o arquivo `pubspec.yaml`).

---

## 🛠️ Tecnologias Utilizadas

* **Linguagem:** Dart
* **Banco de Dados:** SQLite3
* **ORM:** Drift (antigo Moor)
* **Geração de Código:** build_runner

---

## ⚙️ Instalação e Configuração

Siga os passos abaixo para configurar o projeto:

1. **Clone ou baixe o repositório** e acesse a pasta do projeto pelo terminal (ou Prompt de Comando/PowerShell no Windows).
2. **Instale as dependências** listadas no arquivo `pubspec.yaml`:
```bash
dart pub get

```


3. **Gere o código do banco de dados:** O Drift utiliza geração de código para criar as classes de conexão e consultas SQL seguras. Rode o comando abaixo para gerar o arquivo `meu_banco.g.dart`:
```bash
dart run build_runner build

```



---

## 🚀 Como Executar

Após gerar o código do banco de dados com os passos anteriores, você pode executar o programa principal com o comando:

```bash
dart run

```

Ao executar, o programa irá:

1. Criar um arquivo local chamado `banco_faculdade.sqlite` (caso não exista).
2. Inserir um novo registro de aluno na tabela `Alunos`.
3. Consultar o banco de dados e imprimir no terminal a lista de todos os alunos cadastrados.

---

## 📂 Estrutura do Projeto

* `lib/meu_banco.dart`: Contém a definição da tabela `Alunos` e a classe principal do ORM (`MeuBancoDeDados`), onde declaramos os métodos de inserção e busca.
* `lib/meu_banco.g.dart`: Arquivo gerado automaticamente pelo `build_runner` contendo o código SQL traduzido pelo Drift.
* `bin/projeto_orm_faculdade.dart`: Arquivo principal da aplicação, onde instanciamos o banco, criamos o objeto "Companion" e executamos as operações.

---

## 🧠 Conceitos Aplicados

* **Mapeamento Objeto-Relacional (ORM):** Abstração das tabelas do banco de dados relacional para classes e objetos na linguagem Dart.
* **Geração de Código (Code Generation):** Uso de ferramentas automatizadas para escrever código repetitivo (boilerplate) de forma segura, evitando erros de sintaxe SQL (SQL Injection).
* **Companions:** Utilização de classes geradas (`AlunosCompanion`) para lidar com inserção de dados parciais (ex: ignorando o ID auto-incremental gerado pelo banco).
