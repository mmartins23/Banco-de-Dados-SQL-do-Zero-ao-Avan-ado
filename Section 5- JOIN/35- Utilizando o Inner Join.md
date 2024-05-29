O `INNER JOIN` em SQL é usado para combinar registros de duas ou mais tabelas com base em uma condição de junção. Ele retorna apenas os registros que têm correspondência em ambas as tabelas.

### Exemplo Básico

Suponha que temos duas tabelas, `Pedidos` e `Clientes`.

Tabela `Pedidos`:

| PedidoID | ClienteID | Produto    | Quantidade |
|----------|-----------|------------|------------|
| 1        | 1         | Laptop     | 2          |
| 2        | 2         | Smartphone | 1          |
| 3        | 3         | Mesa       | 1          |
| 4        | 1         | Impressora | 1          |

Tabela `Clientes`:

| ClienteID | Nome    | Cidade       |
|-----------|---------|--------------|
| 1         | Alice   | Nova York    |
| 2         | Bob     | São Paulo    |
| 3         | Charlie | São Francisco|
| 4         | Dave    | San Diego    |

### Usando o INNER JOIN

Queremos selecionar todas as informações dos pedidos junto com as informações dos clientes correspondentes.

**Query:**

```sql
SELECT Pedidos.PedidoID, Clientes.Nome, Pedidos.Produto, Pedidos.Quantidade
FROM Pedidos
INNER JOIN Clientes ON Pedidos.ClienteID = Clientes.ClienteID;
```

**Saída:**

| PedidoID | Nome    | Produto    | Quantidade |
|----------|---------|------------|------------|
| 1        | Alice   | Laptop     | 2          |
| 2        | Bob     | Smartphone | 1          |
| 3        | Charlie | Mesa       | 1          |
| 4        | Alice   | Impressora | 1          |

### Explicação da Query

- `SELECT Pedidos.PedidoID, Clientes.Nome, Pedidos.Produto, Pedidos.Quantidade`: Especifica as colunas que queremos no resultado.
- `FROM Pedidos`: Define a tabela base para a consulta.
- `INNER JOIN Clientes ON Pedidos.ClienteID = Clientes.ClienteID`: Realiza a junção entre as tabelas `Pedidos` e `Clientes` onde os valores de `ClienteID` são iguais em ambas as tabelas.

### Exemplo com Aliases

Usar aliases para simplificar a leitura da consulta.

**Query:**

```sql
SELECT P.PedidoID, C.Nome, P.Produto, P.Quantidade
FROM Pedidos P
INNER JOIN Clientes C ON P.ClienteID = C.ClienteID;
```

**Saída:**

| PedidoID | Nome    | Produto    | Quantidade |
|----------|---------|------------|------------|
| 1        | Alice   | Laptop     | 2          |
| 2        | Bob     | Smartphone | 1          |
| 3        | Charlie | Mesa       | 1          |
| 4        | Alice   | Impressora | 1          |

### Exemplo com Condição Adicional

Podemos adicionar mais condições à cláusula `WHERE` para filtrar os resultados.

**Query:**

Queremos selecionar os pedidos de clientes da cidade "Nova York".

```sql
SELECT P.PedidoID, C.Nome, P.Produto, P.Quantidade
FROM Pedidos P
INNER JOIN Clientes C ON P.ClienteID = C.ClienteID
WHERE C.Cidade = 'Nova York';
```

**Saída:**

| PedidoID | Nome  | Produto    | Quantidade |
|----------|-------|------------|------------|
| 1        | Alice | Laptop     | 2          |
| 4        | Alice | Impressora | 1          |

### Exemplo com Múltiplas Junções

Podemos juntar mais de duas tabelas. Suponha que temos uma terceira tabela `Produtos`.

Tabela `Produtos`:

| ProdutoID | Nome        | Preco  |
|-----------|-------------|--------|
| 1         | Laptop      | 1500.00|
| 2         | Smartphone  | 800.00 |
| 3         | Mesa        | 200.00 |
| 4         | Impressora  | 300.00 |

### Adicionando `Produtos` à Junção

**Query:**

```sql
SELECT P.PedidoID, C.Nome AS ClienteNome, PR.Nome AS ProdutoNome, P.Quantidade, PR.Preco
FROM Pedidos P
INNER JOIN Clientes C ON P.ClienteID = C.ClienteID
INNER JOIN Produtos PR ON P.Produto = PR.Nome;
```

**Saída:**

| PedidoID | ClienteNome | ProdutoNome | Quantidade | Preco  |
|----------|-------------|-------------|------------|--------|
| 1        | Alice       | Laptop      | 2          | 1500.00|
| 2        | Bob         | Smartphone  | 1          | 800.00 |
| 3        | Charlie     | Mesa        | 1          | 200.00 |
| 4        | Alice       | Impressora  | 1          | 300.00 |

### Resumo

- **INNER JOIN** combina registros de duas ou mais tabelas com base em uma condição de junção.
- **Somente registros correspondentes** em ambas as tabelas são retornados.
- **Sintaxe básica**: `SELECT columns FROM table1 INNER JOIN table2 ON condition;`

O `INNER JOIN` é uma ferramenta essencial para combinar dados relacionados de várias tabelas, permitindo consultas mais complexas e informativas.