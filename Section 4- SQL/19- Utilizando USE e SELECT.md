# Utilizando o USE e SELECT


### Comando `USE`
O comando `USE` em SQL é utilizado para selecionar um banco de dados específico no qual você deseja executar suas consultas. Ele ajuda a especificar o contexto para todas as operações subsequentes.

#### Sintaxe do `USE`
```sql
USE database_name;
```

#### Exemplo do `USE`
Suponha que temos um banco de dados chamado `ShopDB`. Para selecionar este banco de dados, usamos:

```sql
USE ShopDB;
```

### Comando `SELECT`
O comando `SELECT` em SQL é usado para consultar dados de uma tabela ou várias tabelas. É o comando mais básico e comum em SQL para recuperar dados.

#### Sintaxe Básica do `SELECT`
```sql
SELECT column1, column2, ...
FROM table_name;
```

#### Sintaxe do `SELECT` para Todas as Colunas
```sql
SELECT * FROM table_name;
```
O `*` significa "todas as colunas".

### Exemplos do `SELECT`
Vamos usar a tabela `Customers` que criamos anteriormente.

#### Selecionar Todas as Colunas
```sql
SELECT * FROM Customers;
```

Isso retornará todas as colunas e todas as linhas da tabela `Customers`.

| ID | Name        | Email                 |
|----|-------------|------------------------|
| 1  | Anna Smith  | anna.smith@example.com |
| 2  | John Doe    | john.doe@example.com   |

#### Selecionar Colunas Específicas
Se quisermos apenas os nomes e emails dos clientes, usamos:

```sql
SELECT Name, Email FROM Customers;
```

Isso retornará as colunas `Name` e `Email` para todas as linhas.

| Name       | Email                 |
|------------|------------------------|
| Anna Smith | anna.smith@example.com |
| John Doe   | john.doe@example.com   |

#### Selecionar com Condição
Podemos adicionar uma cláusula `WHERE` para filtrar os resultados. Por exemplo, para selecionar apenas o cliente com `ID` igual a 1:

```sql
SELECT * FROM Customers WHERE ID = 1;
```

Isso retornará apenas o registro onde `ID` é 1.

| ID | Name       | Email                 |
|----|------------|------------------------|
| 1  | Anna Smith | anna.smith@example.com |

### Resumo dos Comandos `USE` e `SELECT`
- **USE**: Seleciona um banco de dados específico para trabalhar.
- **SELECT**: Consulta dados de uma tabela ou várias tabelas.

### Exemplo Completo
1. Selecionar o banco de dados `ShopDB`:
    ```sql
    USE ShopDB;
    ```
2. Selecionar todas as colunas da tabela `Customers`:
    ```sql
    SELECT * FROM Customers;
    ```
3. Selecionar colunas específicas (`Name` e `Email`) da tabela `Customers`:
    ```sql
    SELECT Name, Email FROM Customers;
    ```
4. Selecionar registros com uma condição (clientes com `ID` igual a 1):
    ```sql
    SELECT * FROM Customers WHERE ID = 1;
    ```

Esses comandos são essenciais para manipular e consultar dados em um banco de dados SQL.