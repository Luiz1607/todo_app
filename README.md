# ToDu App

Aplicação de portfólio desenvolvida com Ruby on Rails para gerenciamento de tarefas.

## O que a aplicação faz

- Cadastro e login de usuários.
- Criação, edição, visualização e remoção de tarefas.
- Marcação de tarefa como concluída.
- Definição de data limite (`due_date`) para as tarefas.

## Tecnologias usadas

- Ruby 3.2.2
- Rails 8.1.2
- PostgreSQL
- Hotwire (Turbo + Stimulus)

## Pré-requisitos

Antes de começar, você precisa ter instalado:

- Ruby 3.2.2
- PostgreSQL (rodando localmente)
- Bundler
- Git

## Como baixar e rodar o projeto

1. Clonar o repositório:

```bash
git clone <URL_DO_REPOSITORIO>
cd todo_app
```

2. Instalar dependências:

```bash
bundle install
```

3. Criar e preparar o banco de dados:

```bash
bin/rails db:prepare
```

4. Iniciar a aplicação:

```bash
bin/dev
```

Se preferir, você pode usar o setup automático:

```bash
bin/setup
```

## Acesso local

Com o servidor iniciado, acesse:

`http://localhost:3000`

## Fluxo básico de uso

1. Crie uma conta em `/sign_up`.
2. Faça login em `/login`.
3. Cadastre e gerencie suas tarefas na tela principal.
