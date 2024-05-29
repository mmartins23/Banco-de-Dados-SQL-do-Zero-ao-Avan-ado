O operador `NOT NULL` em SQL é usado para verificar se um valor em uma coluna não é nulo. Em outras palavras, ele é usado para selecionar registros onde a coluna especificada tem um valor (qualquer valor que não seja nulo).

### Exemplo Básico

Suponha que temos a seguinte tabela `Produtos`:

| ID | Nome       | Categoria | Preco  | Estoque |
|----|------------|-----------|--------|---------|
| 1  | Laptop     | Eletrônicos | 1500.00 | 10      |
| 2  | Smartphone | Eletrônicos | 800.00  | 5       |
| 3  | Mesa       | Móveis      | 200.00  | NULL    |
| 4  | Cadeira    | Móveis      | 100.00  | 15      |
| 5  | Impressora | Eletrônicos | NULL    | 7       |

### Usando o Operador NOT NULL

#### Exemplo 1: Selecionar produtos com estoque disponível

Queremos selecionar todos os produtos que têm uma quantidade de estoque registrada (não nula).

**Query:**

```sql
SELECT * FROM Produtos
WHERE Estoque IS NOT NULL;
```

**Saída:**

| ID | Nome       | Categoria    | Preco  | Estoque |
|----|------------|--------------|--------|---------|
| 1  | Laptop     | Eletrônicos  | 1500.00| 10      |
| 2  | Smartphone | Eletrônicos  | 800.00 | 5       |
| 4  | Cadeira    | Móveis       | 100.00 | 15      |
| 5  | Impressora | Eletrônicos  | NULL   | 7       |

#### Exemplo 2: Selecionar produtos com preço definido

Queremos selecionar todos os produtos que têm um preço definido (não nulo).

**Query:**

```sql
SELECT * FROM Produtos
WHERE Preco IS NOT NULL;
```

**Saída:**

| ID | Nome       | Categoria    | Preco  | Estoque |
|----|------------|--------------|--------|---------|
| 1  | Laptop     | Eletrônicos  | 1500.00| 10      |
| 2  | Smartphone | Eletrônicos  | 800.00 | 5       |
| 3  | Mesa       | Móveis       | 200.00 | NULL    |
| 4  | Cadeira    | Móveis       | 100.00 | 15      |

### Combinação com Outros Operadores

Podemos combinar `IS NOT NULL` com outros operadores para criar consultas mais complexas.

#### Exemplo 3: Selecionar produtos de uma categoria específica com preço definido

Queremos selecionar todos os produtos da categoria 'Eletrônicos' que têm um preço definido.

**Query:**

```sql
SELECT * FROM Produtos
WHERE Categoria = 'Eletrônicos' AND Preco IS NOT NULL;
```

**Saída:**

| ID | Nome       | Categoria    | Preco  | Estoque |
|----|------------|--------------|--------|---------|
| 1  | Laptop     | Eletrônicos  | 1500.00| 10      |
| 2  | Smartphone | Eletrônicos  | 800.00 | 5       |

### Uso do IS NULL para Comparação

Da mesma forma que usamos `IS NOT NULL` para encontrar valores que não são nulos, podemos usar `IS NULL` para encontrar valores que são nulos.

#### Exemplo 4: Selecionar produtos sem preço definido

Queremos selecionar todos os produtos que não têm um preço definido.

**Query:**

```sql
SELECT * FROM Produtos
WHERE Preco IS NULL;
```

**Saída:**

| ID | Nome       | Categoria    | Preco  | Estoque |
|----|------------|--------------|--------|---------|
| 5  | Impressora | Eletrônicos  | NULL   | 7       |

### Importância do NOT NULL

1. **Garantia de Dados:** `NOT NULL` é importante para garantir que certas colunas críticas sempre tenham dados. Por exemplo, uma coluna de identificação de usuário geralmente deve ser `NOT NULL`.
2. **Integridade do Banco de Dados:** Usar `NOT NULL` ajuda a manter a integridade dos dados e evita problemas decorrentes de valores nulos em cálculos ou em lógicas de aplicação.

### Definindo Colunas como NOT NULL

Além de usar `IS NOT NULL` em consultas, você também pode definir colunas como `NOT NULL` ao criar ou modificar uma tabela, garantindo que elas nunca contenham valores nulos.

**Exemplo de criação de tabela com colunas NOT NULL:**

```sql
CREATE TABLE Produtos (
    ID INT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Categoria VARCHAR(50) NOT NULL,
    Preco DECIMAL(10, 2) NOT NULL,
    Estoque INT
);
```

No exemplo acima, as colunas `Nome`, `Categoria` e `Preco` são definidas como `NOT NULL`, o que significa que elas devem sempre ter um valor quando um novo registro é inserido na tabela.

O operador `IS NOT NULL` é essencial para filtrar registros que contêm valores em uma coluna específica, ajudando a criar consultas SQL precisas e robustas.