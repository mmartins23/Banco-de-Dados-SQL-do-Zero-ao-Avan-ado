Vou explicar o `UNION` e `UNION DISTINCT` usando as tabelas `orders`, `customers` e `products`. Primeiro, vou mostrar os dados das tabelas e, em seguida, aplicar exemplos com `UNION` e `UNION DISTINCT`, exibindo as respostas.

### Tabelas e Dados

#### Tabela: orders

| OrderID | CustomerID | Product    | Quantity |
|---------|------------|------------|----------|
| 1       | 1          | Laptop     | 2        |
| 2       | 2          | Smartphone | 1        |
| 3       | 3          | Desk       | 1        |
| 4       | 1          | Impressora | 1        |

#### Tabela: customers

| CustomerID | Name    | City         |
|------------|---------|--------------|
| 1          | Alice   | New York     |
| 2          | Bob     | São Paulo    |
| 3          | Charlie | San Francisco|

#### Tabela: products

| ProductID | Name       | Price  |
|-----------|------------|--------|
| 1         | Laptop     | 1500.00|
| 2         | Smartphone | 800.00 |
| 3         | Desk       | 200.00 |
| 4         | Impressora | 300.00 |

### Exemplo de `UNION`

Vamos combinar os nomes dos clientes e os produtos comprados em uma única lista.

```sql
SELECT Name AS Description
FROM customers
UNION
SELECT Product AS Description
FROM orders;
```

**Saída:**

| Description |
|-------------|
| Alice       |
| Bob         |
| Charlie     |
| Desk        |
| Impressora  |
| Laptop      |
| Smartphone  |

O `UNION` combina os nomes dos clientes da tabela `customers` com os produtos da tabela `orders`, incluindo todas as linhas, mesmo que haja duplicatas.

### Exemplo de `UNION DISTINCT`

Agora, vamos usar `UNION DISTINCT` para garantir que as duplicatas sejam removidas.

```sql
SELECT Name AS Description
FROM customers
UNION DISTINCT
SELECT Product AS Description
FROM orders;
```

**Saída:**

| Description |
|-------------|
| Alice       |
| Bob         |
| Charlie     |
| Desk        |
| Impressora  |
| Laptop      |
| Smartphone  |

Neste exemplo, como não há duplicatas entre os resultados das duas consultas, o resultado é o mesmo que o `UNION` normal. No entanto, se houver duplicatas, o `UNION DISTINCT` garantirá que elas sejam removidas do conjunto de resultados final.

Esses exemplos demonstram como usar `UNION` e `UNION DISTINCT` em SQL para combinar e deduplicar conjuntos de resultados de consultas diferentes.