import express from 'express'
import 'dotenv/config'
import cors from 'cors'
import productRoutes from './routes/products.js'

const app = express();
const port = process.env.PORT || 3000;

// Middleware para parsing de JSON
app.use(express.json());

// politica de cors
app.use(cors())

// importando rotas de produtos
app.use('/api', productRoutes);

app.get('/', (req, res) => {
  res.send('Servidor Express funcionando!');
});

app.listen(port, () => {
  console.log(`Servidor rodando em http://localhost:${port}`);
});
