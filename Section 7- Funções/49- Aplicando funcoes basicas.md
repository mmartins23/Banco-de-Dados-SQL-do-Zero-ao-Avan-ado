### Tabela `clients`

| client_id | client_name   | client_email           | client_phone  | client_address     | client_since |
|-----------|---------------|------------------------|---------------|--------------------|--------------|
| 1         | John Doe      | john.doe@example.com   | 555-1234      | 123 Elm Street     | 2019-06-01   |
| 2         | Jane Smith    | jane.smith@example.com | 555-5678      | 456 Oak Avenue     | 2020-01-15   |
| 3         | Bob Johnson   | bob.johnson@example.com| 555-8765      | 789 Pine Road      | 2021-08-22   |
| 4         | Alice Brown   | alice.brown@example.com| 555-4321      | 321 Maple Lane     | 2018-11-10   |
| 5         | Carol White   | carol.white@example.com| 555-2345      | 654 Birch Street   | 2022-02-05   |

### Tabela `payment`

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

***

Aqui estão alguns exemplos de consultas SQL usando as funções `MAX()`, `MIN()` e `AVG()` com as tabelas `clients` e `payments`.

### Função `MAX()`

#### Maior valor de pagamento
```sql
SELECT MAX(amount) AS max_payment
FROM payment;
```

**Saída Esperada:**
```
max_payment
------------
550.00
```

### Função `MIN()`

#### Menor valor de pagamento
```sql
SELECT MIN(amount) AS min_payment
FROM payment;
```

**Saída Esperada:**
```
min_payment
------------
100.00
```

### Função `AVG()`

#### Valor médio dos pagamentos
```sql
SELECT AVG(amount) AS avg_payment
FROM payment;
```

**Saída Esperada:**
```
avg_payment
------------
325.00
```

### Aplicando as Funções a Grupos

#### Maior, menor e média de pagamentos por cliente

```sql
SELECT 
    client_id,
    MAX(amount) AS max_payment,
    MIN(amount) AS min_payment,
    AVG(amount) AS avg_payment
FROM 
    payment
GROUP BY 
    client_id;
```

**Saída Esperada:**
```
client_id  max_payment  min_payment  avg_payment
---------  ------------ ------------ ------------
1          500.00       100.00       250.00
2          350.00       200.00       275.00
3          450.00       250.00       350.00
4          550.00       300.00       425.00
5          400.00       400.00       400.00
```

#### Maior, menor e média de pagamentos por método de pagamento

```sql
SELECT 
    payment_method,
    MAX(amount) AS max_payment,
    MIN(amount) AS min_payment,
    AVG(amount) AS avg_payment
FROM 
    payment
GROUP BY 
    payment_method;
```

**Saída Esperada:**
```
payment_method  max_payment  min_payment  avg_payment
--------------  ------------ ------------ ------------
Bank Transfer   550.00       150.00       350.00
Credit Card     450.00       100.00       325.00
PayPal          500.00       200.00       337.50
```

***