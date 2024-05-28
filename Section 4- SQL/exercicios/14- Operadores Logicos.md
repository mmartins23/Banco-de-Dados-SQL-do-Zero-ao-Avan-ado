# AND, OR e NOT

Vamos fornecer exemplos de operadores lógicos AND, OR e NOT na tabela "purchases" com suas respectivas saídas.

### Dados da Tabela `purchases`

| purchase_id | user_id | product       | price   | purchase_date |
|-------------|---------|---------------|---------|---------------|
| 1           | 1       | Laptop        | 1200.50 | 2023-03-01    |
| 2           | 2       | Smartphone    | 800.00  | 2023-04-15    |
| 3           | 1       | Mouse         | 25.75   | 2023-05-20    |
| 4           | 3       | Monitor       | 150.00  | 2023-06-11    |
| 5           | 4       | Monitor       | 150.00  | 2023-07-23    |
| 6           | 2       | Headphones    | 60.00   | 2023-08-05    |
| 7           | 5       | Webcam        | 80.00   | 2023-09-12    |
| 8           | 6       | Printer       | 200.00  | 2023-10-01    |
| 9           | 7       | Tablet        | 300.00  | 2023-10-10    |
| 10          | 8       | Gaming Chair  | 180.00  | 2023-10-20    |
| 11          | 9       | Microphone    | 120.00  | 2023-10-25    |
| 12          | 10      | Backpack      | 70.00   | 2023-10-30    |
| 13          | 3       | Monitor       | 130.00  | 2023-11-05    |
| 14          | 5       | Keyboard      | 55.00   | 2023-11-10    |
| 15          | 6       | Mousepad      | 20.00   | 2023-11-15    |
| 16          | 7       | Router        | 90.00   | 2023-11-20    |
| 17          | 8       | Webcam        | 85.00   | 2023-11-25    |
| 18          | 9       | SSD           | 150.00  | 2023-11-30    |
| 19          | 10      | Graphics Card | 450.00  | 2023-12-05    |
| 20          | 1       | RAM           | 75.00   | 2023-12-10    |

### Exemplo de Operador Lógico AND

Selecionar todas as compras onde o preço seja maior que 100 e o produto seja "Monitor".

```sql
SELECT *
FROM studyingSQL.purchases
WHERE price > 100 AND product = 'Monitor';
```

**Saída:**

| purchase_id | user_id | product | price  | purchase_date |
|-------------|---------|---------|--------|---------------|
| 4           | 3       | Monitor | 150.00 | 2023-06-11    |
| 13          | 3       | Monitor | 130.00 | 2023-11-05    |

### Exemplo de Operador Lógico OR

Selecionar todas as compras onde o preço seja maior que 100 ou o produto seja "Mouse".

```sql
SELECT *
FROM studyingSQL.purchases
WHERE price > 100 OR product = 'Mouse';
```

**Saída:**

| purchase_id | user_id | product       | price   | purchase_date |
|-------------|---------|---------------|---------|---------------|
| 1           | 1       | Laptop        | 1200.50 | 2023-03-01    |
| 2           | 2       | Smartphone    | 800.00  | 2023-04-15    |
| 3           | 1       | Mouse         | 25.75   | 2023-05-20    |
| 4           | 3       | Monitor       | 150.00  | 2023-06-11    |
| 5           | 4       | Monitor       | 150.00  | 2023-07-23    |
| 8           | 6       | Printer       | 200.00  | 2023-10-01    |
| 9           | 7       | Tablet        | 300.00  | 2023-10-10    |
| 10          | 8       | Gaming Chair  | 180.00  | 2023-10-20    |
| 11          | 9       | Microphone    | 120.00  | 2023-10-25    |
| 12          | 10      | Backpack      | 70.00   | 2023-10-30    |
| 13          | 3       | Monitor       | 130.00  | 2023-11-05    |
| 16          | 7       | Router        | 90.00   | 2023-11-20    |
| 18          | 9       | SSD           | 150.00  | 2023-11-30    |
| 19          | 10      | Graphics Card | 450.00  | 2023-12-05    |
| 20          | 1       | RAM           | 75.00   | 2023-12-10    |

### Exemplo de Operador Lógico NOT

Selecionar todas as compras onde o preço não seja igual a 150.

```sql
SELECT *
FROM studyingSQL.purchases
WHERE price != 150;
```

**Saída:**

| purchase_id | user_id | product       | price   | purchase_date |
|-------------|---------|---------------|---------|---------------|
| 1           | 1       | Laptop        | 1200.50 | 2023-03-01    |
| 2           | 2       | Smartphone    | 800.00  | 2023-04-15    |
| 3           | 1       | Mouse         | 25.75   | 2023-05-20    |
| 6           | 2       | Headphones    | 60.00   | 2023-08-05    |
| 7           | 5       | Webcam        | 80.00   | 2023-09-12    |
| 8           | 6       | Printer       | 200.00  | 2023-10-01    |
| 9           | 7       | Tablet        | 300.00  | 2023-10-10    |
| 10          | 8       | Gaming Chair  | 180.00  | 2023-10-20    |
| 11          | 9       | Microphone    | 120.00  | 2023-10-25    |
| 12          | 10      | Backpack      | 70.00   | 2023-10-30    |
| 14          | 5       | Keyboard      | 55.00   | 2023-11-10    |
| 15          | 6       | Mousepad      | 20.00   | 2023-11-15    |
| 16          | 7       | Router        | 90.00   | 2023-11-20    |
| 17          | 8       | Webcam        | 85.00   | 2023-11-25    |
| 19          | 10      | Graphics Card | 450.00  | 2023-12-05    |
| 20          | 1       | RAM           | 75.00   | 2023-12-10    |
