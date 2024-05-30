### Explicação da Cláusula `HAVING` em SQL

A cláusula `HAVING` é usada para filtrar grupos de resultados após a aplicação da cláusula `GROUP BY` e funções de agregação, como `SUM()`, `COUNT()`, `AVG()`, `MAX()`, `MIN()`. Enquanto a cláusula `WHERE` é usada para filtrar linhas individuais antes da agregação, `HAVING` é usada para filtrar os grupos resultantes.

### Sintaxe Básica

```sql
SELECT coluna1, coluna2, AGG_FUNC(coluna3)
FROM tabela
GROUP BY coluna1, coluna2
HAVING AGG_FUNC(coluna3) condição
```

- **`AGG_FUNC`**: Função de agregação (por exemplo, `SUM()`, `COUNT()`, etc.).
- **`condição`**: Condição que os resultados agregados devem atender.

### Exemplo com `HAVING`

Vamos revisar a consulta SQL fornecida:

```sql
SELECT cli.client_id,
       cli.client_name,
       SUM(pay.amount) AS total
FROM `compact-gadget-424114-m6.section7.payments` pay
JOIN `compact-gadget-424114-m6.section7.clients` cli USING(client_id)
GROUP BY cli.client_id, cli.client_name
HAVING total >= 650
ORDER BY total DESC;
```

#### Explicação Detalhada

1. **Selecionar Colunas e Função de Agregação**:
   - `cli.client_id`: ID do cliente.
   - `cli.client_name`: Nome do cliente.
   - `SUM(pay.amount) AS total`: Soma dos valores de `amount` para cada cliente, renomeado como `total`.

2. **Fonte dos Dados**:
   - A consulta envolve duas tabelas: `payments` (alias `pay`) e `clients` (alias `cli`).

3. **Junção das Tabelas**:
   - `JOIN ... USING(client_id)`: Juntando as tabelas `payments` e `clients` usando a coluna `client_id`.

4. **Agrupamento dos Resultados**:
   - `GROUP BY cli.client_id, cli.client_name`: Agrupando os resultados por `client_id` e `client_name`.

5. **Filtragem dos Grupos**:
   - `HAVING total >= 650`: Filtra os grupos cuja soma (`total`) dos valores de `amount` é maior ou igual a 650.

6. **Ordenação dos Resultados**:
   - `ORDER BY total DESC`: Ordena os resultados pelo `total` em ordem decrescente.

### Exemplo de Dados e Saída

Considerando os seguintes dados nas tabelas `clients` e `payments`:

**Tabela `clients`**:

| client_id | client_name |
|-----------|-------------|
| 1         | Alice       |
| 2         | Bob         |
| 3         | Charlie     |
| 4         | David       |
| 5         | Eva         |

**Tabela `payments`**:

| payment_id | client_id | amount | payment_date | payment_method |
|------------|-----------|--------|--------------|----------------|
| 1          | 1         | 100.00 | 2023-01-10   | Credit Card    |
| 2          | 2         | 200.00 | 2023-02-15   | PayPal         |
| 3          | 1         | 150.00 | 2023-03-20   | Bank Transfer  |
| 4          | 3         | 250.00 | 2023-04-25   | Credit Card    |
| 5          | 4         | 300.00 | 2023-05-30   | PayPal         |
| 6          | 2         | 350.00 | 2023-06-05   | Credit Card    |
| 7          | 5         | 400.00 | 2023-07-10   | Bank Transfer  |
| 8          | 3         | 450.00 | 2023-08-15   | Credit Card    |
| 9          | 1         | 500.00 | 2023-09-20   | PayPal         |
| 10         | 4         | 550.00 | 2023-10-25   | Bank Transfer  |

#### Agrupamento e Somatório

Após aplicar `GROUP BY` e `SUM(amount)`, temos:

| client_id | client_name | total |
|-----------|-------------|-------|
| 1         | Alice       | 750.00|
| 2         | Bob         | 550.00|
| 3         | Charlie     | 700.00|
| 4         | David       | 850.00|
| 5         | Eva         | 400.00|

#### Aplicação da Cláusula `HAVING`

Após aplicar `HAVING total >= 650`, os resultados filtrados são:

| client_id | client_name | total |
|-----------|-------------|-------|
| 1         | Alice       | 750.00|
| 3         | Charlie     | 700.00|
| 4         | David       | 850.00|

#### Ordenação Final

Após aplicar `ORDER BY total DESC`:

| client_id | client_name | total |
|-----------|-------------|-------|
| 4         | David       | 850.00|
| 1         | Alice       | 750.00|
| 3         | Charlie     | 700.00|

### Resumo

- **`GROUP BY`** agrupa os dados com base nos valores de `client_id` e `client_name`.
- **Função de Agregação** `SUM(amount)` calcula a soma dos valores `amount` para cada grupo.
- **`HAVING`** filtra os grupos onde o total da soma é maior ou igual a 650.
- **`ORDER BY`** ordena os resultados pelo total em ordem decrescente.

Essa consulta é útil para obter um resumo agregado dos pagamentos por cliente, filtrando e ordenando conforme especificado.