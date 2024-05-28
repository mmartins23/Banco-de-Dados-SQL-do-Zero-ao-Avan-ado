# WHERE

Vamos supor que você queira selecionar apenas os usuários do sexo feminino (gender = 'Female') da tabela `users`. Aqui está um exemplo de consulta SQL utilizando a cláusula `WHERE` para filtrar os resultados:

```sql
SELECT * 
FROM studyingSQL.users 
WHERE gender = 'Female';
```

### Explicação

- `SELECT *`: Seleciona todas as colunas da tabela.
- `FROM studyingSQL.users`: Indica que a consulta é na tabela `users` do banco de dados `studyingSQL`.
- `WHERE gender = 'Female'`: Filtra as linhas onde o valor da coluna `gender` é igual a 'Female'.

### Saída Esperada

A saída dessa consulta seriam os dados apenas dos usuários do sexo feminino:

| user_id | name    | email              | date_of_birth | gender |
|---------|---------|--------------------|---------------|--------|
| 1       | Alice   | alice@example.com  | 1990-01-01    | Female |
| 5       | Eva     | eva@example.com    | 1995-12-19    | Female |
| 7       | Grace   | grace@example.com  | 1993-03-03    | Female |
| 9       | Ivy     | ivy@example.com    | 1994-09-09    | Female |
| 11      | Karen   | karen@example.com  | 1991-05-05    | Female |
| 13      | Mona    | mona@example.com   | 1996-10-10    | Female |
| 14      | Nina    | nina@example.com   | 1997-11-11    | Female |
| 17      | Quinn   | quinn@example.com  | 1998-02-14    | Female |
| 18      | Rachel  | rachel@example.com | 1999-03-15    | Female |
| 20      | Tina    | tina@example.com   | 1990-09-17    | Female |

Essa consulta retornaria apenas as linhas onde o valor da coluna `gender` é 'Female'. Se precisar de mais exemplos ou tiver outras dúvidas, estou à disposição para ajudar!