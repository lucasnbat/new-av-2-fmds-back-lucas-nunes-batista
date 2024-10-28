import express from 'express';
import { PrismaClient } from '@prisma/client';

const router = express.Router();
const prisma = new PrismaClient();

router.get('/products', async (req, res) => {
  try {
    const products = await prisma.product.findMany({
      orderBy: {
        createdAt: 'desc'
      }
    }); 
    res.json(products);
  } catch (error) {
    res.status(500).json({ error: 'Erro ao listar produtos' });
  }
});

router.get('/products/:productId', async (req, res) => {
  const { productId } = req.params;
  try {
    const product = await prisma.product.findUnique({ where: { id: productId } });
    if (!product) {
      return res.status(404).json({ error: 'Produto não encontrado' });
    }
    res.json(product);
  } catch (error) {
    res.status(500).json({ error: 'Erro ao buscar produto' });
  }
});

router.post('/products', async (req, res) => {
  const { description, price, quantity } = req.body;
  try {
    const newProduct = await prisma.product.create({
      data: { description, price: parseFloat(price), quantity }
    });
    res.status(201).json(newProduct);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Erro ao cadastrar produto' });
  }
});

router.put('/products/:productId', async (req, res) => {
  const { productId } = req.params;
  const { description, price, quantity } = req.body;
  try {
    const updatedProduct = await prisma.product.update({
      where: { id: productId },
      data: { description, price: parseFloat(price), quantity, updatedAt: new Date() }
    });
    res.json(updatedProduct);
  } catch (error) {
    if (error.code === 'P2025') {
      return res.status(404).json({ error: 'Produto não encontrado' });
    }
    res.status(500).json({ error: 'Erro ao atualizar produto' });
  }
});


router.delete('/products/:productId', async (req, res) => {
  const { productId } = req.params;
  try {
    await prisma.product.delete({ where: { id: productId } });
    res.status(204).send();
  } catch (error) {
    if (error.code === 'P2025') {
      return res.status(404).json({ error: 'Produto não encontrado' });
    }
    res.status(500).json({ error: 'Erro ao deletar produto' });
  }
});

export default router;
