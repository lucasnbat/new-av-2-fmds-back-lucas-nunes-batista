# Como rodar o projeto

* Entre na pasta do projeto e execute:
  ```bash
  npm install
  ```

* Adicione as variáveis que deseja para PORT e DATABASE_URL no `.env.example`
  
* Renomeie `.env.example` para `.env`
  
* O arquivo em `infra/compose.yaml` presente na raiz é um exemplo de compose para
  subir um banco mysql. Troque as informações que deseja no `compose.yaml` (nome
  de usuário root, senha, etc...). Certifique-se de que as informações que você está
  usando no `compose.yaml` estão condizentes com a url de banco presente na var. ambiente
  `DATABASE_URL`. Depois de verificar, basta entrar na pasta `infra/` e executar:
  ```bash
  docker compose up -d
  ```

* Com o banco rodando no docker, saia de `infra/`, vá para a raiz do projeto e execute:
  ```bash
  npx prisma migrate dev # vai rodar todas as migrações no banco
  npx prisma generate # irá gerar o prismaClient atualizado para fazer as querys
  ```

* Para popular o banco, você pode prosseguir com o caminho feliz executando o 
  atalho do `package.json`:
  ```bash
  npm run seed # vai executar o src/seed.js para popular banco com 10 produtos
  ```

* ...ou escolher o caminho triste de conectar no seu banco mysql e popular com as
 info. presentes no arquivo `banco_produtos_dump.sql`

* Por fim, rode o servidor:
  ```bash
  npm run dev
  ```