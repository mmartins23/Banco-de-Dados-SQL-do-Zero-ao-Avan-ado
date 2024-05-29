O operador `LIMIT` em SQL é usado para restringir o número de registros retornados por uma consulta. É particularmente útil para paginar resultados ou obter apenas um subconjunto de registros, como os primeiros N registros de uma tabela.

### Exemplo Básico

Suponha que temos a seguinte tabela `Produtos`:

| ID | Nome       | Categoria    | Preco  |
|----|------------|--------------|--------|
| 1  | Laptop     | Eletrônicos  | 1500.00|
| 2  | Smartphone | Eletrônicos  | 800.00 |
| 3  | Mesa       | Móveis       | 200.00 |
| 4  | Cadeira    | Móveis       | 100.00 |
| 5  | Impressora | Eletrônicos  | 300.00 |

### Usando o Operador LIMIT

#### Exemplo 1: Selecionar os primeiros 3 produtos

Queremos selecionar os primeiros 3 produtos da tabela `Produtos`.

**Query:**

```sql
SELECT * FROM Produtos
LIMIT 3;
```

**Saída:**

| ID | Nome       | Categoria    | Preco  |
|----|------------|--------------|--------|
| 1  | Laptop     | Eletrônicos  | 1500.00|
| 2  | Smartphone | Eletrônicos  | 800.00 |
| 3  | Mesa       | Móveis       | 200.00 |

#### Exemplo 2: Selecionar os primeiros 2 produtos mais baratos

Queremos selecionar os primeiros 2 produtos mais baratos da tabela `Produtos`.

**Query:**

```sql
SELECT * FROM Produtos
ORDER BY Preco ASC
LIMIT 2;
```

**Saída:**

| ID | Nome    | Categoria | Preco  |
|----|---------|-----------|--------|
| 4  | Cadeira | Móveis    | 100.00 |
| 3  | Mesa    | Móveis    | 200.00 |

### Usando OFFSET com LIMIT

O operador `OFFSET` pode ser usado junto com `LIMIT` para pular um número específico de registros antes de começar a retornar os registros. Isso é útil para paginação.

#### Exemplo 3: Paginação de resultados

Queremos selecionar os próximos 2 produtos, pulando os primeiros 2 produtos mais baratos.

**Query:**

```sql
SELECT * FROM Produtos
ORDER BY Preco ASC
LIMIT 2 OFFSET 2;
```

**Saída:**

| ID | Nome       | Categoria    | Preco  |
|----|------------|--------------|--------|
| 5  | Impressora | Eletrônicos  | 300.00 |
| 2  | Smartphone | Eletrônicos  | 800.00 |

### Limitações e Considerações

1. **Dependência do ORDER BY:** Sem uma cláusula `ORDER BY`, o uso de `LIMIT` não garante que os registros retornados serão os mesmos em consultas diferentes, pois a ordem dos registros não está definida.
2. **Paginação Eficiente:** Quando usada para paginação, a combinação de `LIMIT` e `OFFSET` pode se tornar menos eficiente em tabelas grandes, pois o banco de dados precisa contar e pular registros. Em tais casos, estratégias adicionais como índices ou consultas otimizadas podem ser necessárias.

### Exemplo de Paginação Completa

Suponha que queremos implementar paginação com um tamanho de página de 2 registros por página.

#### Página 1: Primeiros 2 registros

**Query:**

```sql
SELECT * FROM Produtos
ORDER BY Preco ASC
LIMIT 2 OFFSET 0;
```

**Saída:**

| ID | Nome    | Categoria | Preco  |
|----|---------|-----------|--------|
| 4  | Cadeira | Móveis    | 100.00 |
| 3  | Mesa    | Móveis    | 200.00 |

#### Página 2: Próximos 2 registros

**Query:**

```sql
SELECT * FROM Produtos
ORDER BY Preco ASC
LIMIT 2 OFFSET 2;
```

**Saída:**

| ID | Nome       | Categoria    | Preco  |
|----|------------|--------------|--------|
| 5  | Impressora | Eletrônicos  | 300.00 |
| 2  | Smartphone | Eletrônicos  | 800.00 |

#### Página 3: Próximos 2 registros

**Query:**

```sql
SELECT * FROM Produtos
ORDER BY Preco ASC
LIMIT 2 OFFSET 4;
```

**Saída:**

| ID | Nome   | Categoria   | Preco  |
|----|--------|-------------|--------|
| 1  | Laptop | Eletrônicos | 1500.00|

Neste exemplo, a tabela tem apenas 5 registros, então a terceira página retorna apenas um registro.

O operador `LIMIT` é uma ferramenta poderosa e simples para controlar o número de registros retornados em uma consulta SQL, tornando-o essencial para tarefas como paginação de resultados e obtenção de amostras de dados.