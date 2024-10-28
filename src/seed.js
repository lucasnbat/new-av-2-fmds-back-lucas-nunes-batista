import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
  await prisma.product.deleteMany();
  console.log("Todos os produtos foram apagados.");

  const products = [
    { description: "Teclado Gamer Dragonoid", price: 150, quantity: 10 },
    { description: "Desktop Gamer Pichau", price: 2500, quantity: 20 },
    { description: "Monitor LCD LG Plus", price: 1200, quantity: 5 },
    { description: "Headphone Potente", price: 400, quantity: 25 },
    { description: "Fonte para Desktop", price: 900, quantity: 30 },
    { description: "Teclado Polaroid", price: 340, quantity: 18 },
    { description: "Placa Asus TUF Gaming", price: 1400, quantity: 22 },
    { description: "Processador i9 13th", price: 1600, quantity: 17 },
    { description: "Notebook Lenovo Ideapad 3i", price: 800, quantity: 40 },
    { description: "Notebook Dell Vostro", price: 1700, quantity: 12 },
    { description: "Notebook Dell Latitude", price: 1250, quantity: 28 },
    { description: "Processador Xeon L675", price: 1150, quantity: 35 },
  ];

  for (const product of products) {
    await prisma.product.create({
      data: {
        description: product.description,
        price: product.price,
        quantity: product.quantity,
      },
    });
  }
  console.log("Produtos inseridos com sucesso!");
}

main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });
