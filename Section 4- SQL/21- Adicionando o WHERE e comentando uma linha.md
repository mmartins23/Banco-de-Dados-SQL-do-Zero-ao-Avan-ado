# Adicionando o WHERE e comentando uma linha


### Cláusula `WHERE`
A cláusula `WHERE` é usada para filtrar registros que atendem a uma condição específica. Ela pode ser usada com comandos como `SELECT`, `UPDATE`, `DELETE`, etc.

#### Sintaxe do `WHERE`
```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

### Exemplos do `WHERE`

Vamos usar a tabela `Customers` que criamos anteriormente.

#### Dados na Tabela `Customers`
```sql
SELECT * FROM Customers;
```

| ID | Name        | Email                 |
|----|-------------|------------------------|
| 1  | Anna Smith  | anna.smith@example.com |
| 2  | John Doe    | john.doe@example.com   |
| 3  | Maria Garcia| maria.garcia@example.com|
| 4  | Tom Hanks   | tom.hanks@example.com  |

#### Selecionar Clientes com ID Igual a 1
```sql
SELECT * FROM Customers
WHERE ID = 1;
```

Resultado:

| ID | Name       | Email                 |
|----|------------|------------------------|
| 1  | Anna Smith | anna.smith@example.com |

#### Selecionar Clientes com Nome "John Doe"
```sql
SELECT * FROM Customers
WHERE Name = 'John Doe';
```

Resultado:

| ID | Name     | Email                 |
|----|----------|------------------------|
| 2  | John Doe | john.doe@example.com   |

#### Selecionar Clientes com ID Maior que 2
```sql
SELECT * FROM Customers
WHERE ID > 2;
```

Resultado:

| ID | Name         | Email                 |
|----|--------------|------------------------|
| 3  | Maria Garcia | maria.garcia@example.com|
| 4  | Tom Hanks    | tom.hanks@example.com  |

### Comentando uma Linha em SQL

Comentários são usados para explicar o código SQL e são ignorados pelo banco de dados ao executar as consultas.

#### Comentário de uma Linha
- **Sintaxe**: Usa dois hífens `--` seguidos pelo comentário.

```sql
-- This is a comment
SELECT * FROM Customers;  -- This comment explains the SELECT statement
```

#### Comentário de Múltiplas Linhas
- **Sintaxe**: Usa `/*` para iniciar e `*/` para terminar o comentário.

```sql
/*
This is a 
multi-line comment
*/
SELECT * FROM Customers;
```

### Exemplo Completo com `WHERE` e Comentários

1. Selecionar clientes com `ID` maior que 1:
    ```sql
    -- Select customers with ID greater than 1
    SELECT * FROM Customers
    WHERE ID > 1;
    ```

2. Selecionar clientes cujo nome é "Maria Garcia":
    ```sql
    -- Select customers where the name is 'Maria Garcia'
    SELECT * FROM Customers
    WHERE Name = 'Maria Garcia';
    ```

3. Selecionar todos os clientes e explicar o código:
    ```sql
    /* 
    This query selects all records 
    from the Customers table 
    */
    SELECT * FROM Customers;
    ```

### Resumo
- **WHERE**: Filtra registros que atendem a uma condição específica.
- **Comentários de uma linha**: Usam `--`.
- **Comentários de múltiplas linhas**: Usam `/* ... */`.

Esses são conceitos básicos de como usar a cláusula `WHERE` para filtrar dados e como adicionar comentários em SQL para tornar o código mais legível.