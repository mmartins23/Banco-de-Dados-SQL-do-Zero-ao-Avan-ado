# LIMIT

O operador `LIMIT` é usado para limitar o número de linhas retornadas em uma consulta. Por exemplo, se quisermos selecionar apenas os três primeiros usuários da tabela `users`, podemos usar `LIMIT`. Aqui está um exemplo:

```sql
SELECT *
FROM studyingSQL.users
LIMIT 3;
```

Esta consulta seleciona todas as colunas da tabela `users`, mas retorna apenas as três primeiras linhas.

### Saída Esperada

A saída dependerá dos três primeiros usuários presentes na tabela `users`. Vamos supor que os três primeiros usuários sejam:

| user_id | name    | email             | date_of_birth | gender |
|---------|---------|-------------------|---------------|--------|
| 1       | Alice   | alice@example.com | 1990-01-01    | Female |
| 2       | Bob     | bob@example.com   | 1985-05-23    | Male   |
| 3       | Charlie | charlie@example.com| 1992-07-15  | Male   |

Então, a saída esperada seria:

| user_id | name    | email             | date_of_birth | gender |
|---------|---------|-------------------|---------------|--------|
| 1       | Alice   | alice@example.com | 1990-01-01    | Female |
| 2       | Bob     | bob@example.com   | 1985-05-23    | Male   |
| 3       | Charlie | charlie@example.com| 1992-07-15  | Male   |

A consulta retornaria apenas estas três primeiras linhas da tabela `users`.