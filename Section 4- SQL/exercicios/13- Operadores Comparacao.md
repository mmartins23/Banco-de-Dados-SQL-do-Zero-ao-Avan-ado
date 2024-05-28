# Operadores Comparacao

Exemplos de consultas SQL usando operadores de comparacao com a saída esperada.

1. **= (Igual a)**: Selecionar todas as compras onde o produto seja igual a "Monitor".

```sql
SELECT *
FROM studyingSQL.purchases
WHERE product = 'Monitor';
```

**Saída:**

| purchase_id | user_id | product | price  | purchase_date |
|-------------|---------|---------|--------|---------------|
| 4           | 3       | Monitor | 150.00 | 2023-06-11    |
| 13          | 3       | Monitor | 130.00 | 2023-11-05    |

2. **> (Maior que)**: Selecionar todas as compras onde o preço seja maior que 200.

```sql
SELECT *
FROM studyingSQL.purchases
WHERE price > 200;
```

**Saída:**

| purchase_id | user_id | product   | price  | purchase_date |
|-------------|---------|-----------|--------|---------------|
| 8           | 6       | Printer   | 200.00 | 2023-10-01    |
| 9           | 7       | Tablet    | 300.00 | 2023-10-10    |
| 19          | 10      | Graphics Card | 450.00 | 2023-12-05 |

3. **>= (Maior ou igual a que)**: Selecionar todas as compras onde o preço seja maior ou igual a 150.

```sql
SELECT *
FROM studyingSQL.purchases
WHERE price >= 150;
```

**Saída:**

| purchase_id | user_id | product         | price  | purchase_date |
|-------------|---------|-----------------|--------|---------------|
| 4           | 3       | Monitor         | 150.00 | 2023-06-11    |
| 5           | 4       | Monitor         | 150.00 | 2023-07-23    |
| 8           | 6       | Printer         | 200.00 | 2023-10-01    |
| 9           | 7       | Tablet          | 300.00 | 2023-10-10    |
| 10          | 8       | Gaming Chair    | 180.00 | 2023-10-20    |
| 18          | 9       | SSD             | 150.00 | 2023-11-30    |
| 19          | 10      | Graphics Card   | 450.00 | 2023-12-05    |

4. **< (Menor que)**: Selecionar todas as compras onde o preço seja menor que 50.

```sql
SELECT *
FROM studyingSQL.purchases
WHERE price < 50;
```

**Saída:**

| purchase_id | user_id | product | price  | purchase_date |
|-------------|---------|---------|--------|---------------|
| 3           | 1       | Mouse   | 25.75  | 2023-05-20    |

5. **<= (Menor ou igual a que)**: Selecionar todas as compras onde o preço seja menor ou igual a 55.

```sql
SELECT *
FROM studyingSQL.purchases
WHERE price <= 55;
```

**Saída:**

| purchase_id | user_id | product  | price | purchase_date |
|-------------|---------|----------|-------|---------------|
| 3           | 1       | Mouse    | 25.75 | 2023-05-20    |
| 14          | 5       | Keyboard | 55.00 | 2023-11-10    |

6. **<> (Diferente de)**: Selecionar todas as compras onde o produto seja diferente de "Monitor".

```sql
SELECT *
FROM studyingSQL.purchases
WHERE product != 'Monitor';
```

**Saída:**

| purchase_id | user_id | product       | price  | purchase_date |
|-------------|---------|---------------|--------|---------------|
| 1           | 1       | Laptop        | 1200.50| 2023-03-01    |
| 2           | 2       | Smartphone    | 800.00 | 2023-04-15    |
| 3           | 1       | Mouse         | 25.75  | 2023-05-20    |
| 6           | 2       | Headphones    | 60.00  | 2023-08-05    |
| 7           | 5       | Webcam        | 80.00  | 2023-09-12    |
| 8           | 6       | Printer       | 200.00 | 2023-10-01    |
| 9           | 7       | Tablet        | 300.00 | 2023-10-10    |
| 10          | 8       | Gaming Chair  | 180.00 | 2023-10-20    |
| 11          | 9       | Microphone    | 120.00 | 2023-10-25    |
| 12          | 10      | Backpack      | 70.00  | 2023-10-30    |
