# Modificando uma coluna

### Renomear Colunas Temporariamente em uma Consulta com `AS`

O `AS` é usado para dar um nome temporário a uma coluna ou expressão em uma consulta. Isso não altera a estrutura da tabela, apenas o nome da coluna no resultado da consulta.

### Dados na Tabela `Customers`
Suponha que temos a tabela `Customers` com os seguintes dados:

```sql
SELECT * FROM Customers;
```

| ID | Name        | Email                 |
|----|-------------|------------------------|
| 1  | Anna Smith  | anna.smith@example.com |
| 2  | John Doe    | john.doe@example.com   |
| 3  | Maria Garcia| maria.garcia@example.com|
| 4  | Tom Hanks   | tom.hanks@example.com  |

### Exemplo 1: Renomear Coluna em uma Consulta

Se você quiser renomear a coluna `Name` para `CustomerName` apenas na saída da consulta, você pode usar o comando `AS` da seguinte forma:

#### Consulta SQL
```sql
SELECT ID, Name AS CustomerName, Email
FROM Customers;
```

### Explicação do Código

- **SELECT ID, Name AS CustomerName, Email**: Seleciona as colunas `ID`, `Name`, e `Email` da tabela `Customers`. A coluna `Name` é renomeada temporariamente como `CustomerName` na saída da consulta.
- **FROM Customers**: Indica a tabela da qual os dados estão sendo selecionados.

### Resultado da Consulta
O resultado da consulta com a coluna `Name` renomeada para `CustomerName` será:

| ID | CustomerName | Email                 |
|----|--------------|------------------------|
| 1  | Anna Smith   | anna.smith@example.com |
| 2  | John Doe     | john.doe@example.com   |
| 3  | Maria Garcia | maria.garcia@example.com|
| 4  | Tom Hanks    | tom.hanks@example.com  |

### Resumo

- **Renomear Coluna Temporariamente**: Usa `AS` para dar um alias à coluna, modificando seu nome apenas no resultado da consulta.
- **Sintaxe**: `SELECT column_name AS alias_name FROM table_name;`
- **Benefício**: Permite modificar a exibição das colunas sem alterar a estrutura da tabela no banco de dados.

Este exemplo mostra como renomear colunas temporariamente em uma consulta SQL usando `AS`, proporcionando uma forma de tornar os resultados mais legíveis ou atender a requisitos específicos de exibição.