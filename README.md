# Como rodar o projeto

* Entre na pasta do projeto e execute:
  ```bash
  npm install
  ```
* Adicione as variáveis que deseja para PORT e DATABASE_URL no `.env.example`
* Renomeie `.env.example` para `.env`
* O arquivo em `infra/compose.yaml` presente na raiz é um exemplo de compose para
  subir um banco mysql. Basta entrar na pasta `infra/` e executar:
  ```bash
  docker compose up -d
  ```
* Com o banco rodando no docker, saia de `infra/`, vá para a raiz do projeto e execute:
  ```bash
  npx prisma migrate dev # vai rodar todas as migrações no banco
  npx prisma generate # irá gerar o prismaClient para fazer as querys
  ```
* Rode o servidor:
  ```bash
  npm run dev
  ```