#  Mais variações do WHERE

### Dados na Tabela `Customers`

Vamos usar a tabela `Customers` com os seguintes dados:

```sql
SELECT * FROM Customers;
```

| ID | Name        | Email                 |
|----|-------------|------------------------|
| 1  | Anna Smith  | anna.smith@example.com |
| 2  | John Doe    | john.doe@example.com   |
| 3  | Maria Garcia| maria.garcia@example.com|
| 4  | Tom Hanks   | tom.hanks@example.com  |

### Exemplos Usando a Cláusula `WHERE`

#### 1. Selecionar Clientes com ID Igual a 1

```sql
SELECT * FROM Customers
WHERE ID = 1;
```

Resultado:

| ID | Name       | Email                 |
|----|------------|------------------------|
| 1  | Anna Smith | anna.smith@example.com |

#### 2. Selecionar Clientes com Nome Diferente de "John Doe"

```sql
SELECT * FROM Customers
WHERE Name != 'John Doe';
```

Resultado:

| ID | Name         | Email                 |
|----|--------------|------------------------|
| 1  | Anna Smith   | anna.smith@example.com |
| 3  | Maria Garcia | maria.garcia@example.com|
| 4  | Tom Hanks    | tom.hanks@example.com  |

#### 3. Selecionar Clientes com Email Igual a 'maria.garcia@example.com'

```sql
SELECT * FROM Customers
WHERE Email = 'maria.garcia@example.com';
```

Resultado:

| ID | Name         | Email                 |
|----|--------------|------------------------|
| 3  | Maria Garcia | maria.garcia@example.com|

#### 4. Selecionar Clientes com ID Diferente de 2

```sql
SELECT * FROM Customers
WHERE ID != 2;
```

Resultado:

| ID | Name         | Email                 |
|----|--------------|------------------------|
| 1  | Anna Smith   | anna.smith@example.com |
| 3  | Maria Garcia | maria.garcia@example.com|
| 4  | Tom Hanks    | tom.hanks@example.com  |

#### 5. Selecionar Clientes com Nome Igual a 'Tom Hanks'

```sql
SELECT * FROM Customers
WHERE Name = 'Tom Hanks';
```

Resultado:

| ID | Name      | Email                 |
|----|-----------|------------------------|
| 4  | Tom Hanks | tom.hanks@example.com  |

### Resumo dos Operadores

- **=**: Verifica igualdade.
- **!=**: Verifica diferença.

### Exemplos de Código

1. **Clientes com ID igual a 1**:
    ```sql
    SELECT * FROM Customers
    WHERE ID = 1;
    ```

2. **Clientes com Nome diferente de 'John Doe'**:
    ```sql
    SELECT * FROM Customers
    WHERE Name != 'John Doe';
    ```

3. **Clientes com Email igual a 'maria.garcia@example.com'**:
    ```sql
    SELECT * FROM Customers
    WHERE Email = 'maria.garcia@example.com';
    ```

4. **Clientes com ID diferente de 2**:
    ```sql
    SELECT * FROM Customers
    WHERE ID != 2;
    ```

5. **Clientes com Nome igual a 'Tom Hanks'**:
    ```sql
    SELECT * FROM Customers
    WHERE Name = 'Tom Hanks';
    ```

Esses exemplos mostram como usar a cláusula `WHERE` com os operadores `=` e `!=` para filtrar registros em uma tabela SQL.