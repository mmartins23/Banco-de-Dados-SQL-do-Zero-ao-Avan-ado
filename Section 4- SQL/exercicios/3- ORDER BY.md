# ORDER BY

Vamos utilizar a tabela `users` para demonstrar uma consulta SQL com a cláusula `ORDER BY`. Suponhamos que queremos ordenar os usuários por data de nascimento (coluna `date_of_birth`) em ordem crescente. 

### Exemplo de Consulta `ORDER BY`

```sql
SELECT * 
FROM studyingSQL.users 
ORDER BY date_of_birth;
```

### Explicação

- `SELECT *`: Seleciona todas as colunas da tabela.
- `FROM studyingSQL.users`: Indica que a consulta é na tabela `users` do banco de dados `studyingSQL`.
- `ORDER BY date_of_birth`: Ordena as linhas pela coluna `date_of_birth` em ordem crescente (do mais antigo ao mais novo).

### Saída Esperada

Com base nos dados fornecidos anteriormente, a saída ordenada pela data de nascimento ficaria assim:

| user_id | name    | email              | date_of_birth | gender |
|---------|---------|--------------------|---------------|--------|
| 6       | Frank   | frank@example.com  | 1980-11-11    | Male   |
| 10      | Jack    | jack@example.com   | 1982-04-04    | Male   |
| 12      | Leo     | leo@example.com    | 1983-06-06    | Male   |
| 15      | Oscar   | oscar@example.com  | 1984-12-12    | Male   |
| 2       | Bob     | bob@example.com    | 1985-05-23    | Male   |
| 19      | Steve   | steve@example.com  | 1986-08-16    | Male   |
| 8       | Hank    | hank@example.com   | 1987-07-07    | Male   |
| 4       | David   | david@example.com  | 1988-08-30    | Male   |
| 1       | Alice   | alice@example.com  | 1990-01-01    | Female |
| 20      | Tina    | tina@example.com   | 1990-09-17    | Female |
| 11      | Karen   | karen@example.com  | 1991-05-05    | Female |
| 3       | Charlie | charlie@example.com| 1992-07-15    | Male   |
| 7       | Grace   | grace@example.com  | 1993-03-03    | Female |
| 9       | Ivy     | ivy@example.com    | 1994-09-09    | Female |
| 5       | Eva     | eva@example.com    | 1995-12-19    | Female |
| 13      | Mona    | mona@example.com   | 1996-10-10    | Female |
| 14      | Nina    | nina@example.com   | 1997-11-11    | Female |
| 17      | Quinn   | quinn@example.com  | 1998-02-14    | Female |
| 18      | Rachel  | rachel@example.com | 1999-03-15    | Female |

### Consulta com `ORDER BY` em Ordem Decrescente

Para ordenar em ordem decrescente (do mais novo ao mais antigo), você pode adicionar a palavra-chave `DESC` à cláusula `ORDER BY`:

```sql
SELECT * 
FROM studyingSQL.users 
ORDER BY date_of_birth DESC;
```

### Saída Esperada

A saída ordenada em ordem decrescente pela data de nascimento seria:

| user_id | name    | email              | date_of_birth | gender |
|---------|---------|--------------------|---------------|--------|
| 18      | Rachel  | rachel@example.com | 1999-03-15    | Female |
| 17      | Quinn   | quinn@example.com  | 1998-02-14    | Female |
| 14      | Nina    | nina@example.com   | 1997-11-11    | Female |
| 13      | Mona    | mona@example.com   | 1996-10-10    | Female |
| 5       | Eva     | eva@example.com    | 1995-12-19    | Female |
| 9       | Ivy     | ivy@example.com    | 1994-09-09    | Female |
| 7       | Grace   | grace@example.com  | 1993-03-03    | Female |
| 3       | Charlie | charlie@example.com| 1992-07-15    | Male   |
| 11      | Karen   | karen@example.com  | 1991-05-05    | Female |
| 20      | Tina    | tina@example.com   | 1990-09-17    | Female |
| 1       | Alice   | alice@example.com  | 1990-01-01    | Female |
| 4       | David   | david@example.com  | 1988-08-30    | Male   |
| 8       | Hank    | hank@example.com   | 1987-07-07    | Male   |
| 19      | Steve   | steve@example.com  | 1986-08-16    | Male   |
| 2       | Bob     | bob@example.com    | 1985-05-23    | Male   |
| 15      | Oscar   | oscar@example.com  | 1984-12-12    | Male   |
| 12      | Leo     | leo@example.com    | 1983-06-06    | Male   |
| 10      | Jack    | jack@example.com   | 1982-04-04    | Male   |
| 6       | Frank   | frank@example.com  | 1980-11-11    | Male   |

Esses exemplos mostram como usar a cláusula `ORDER BY` para ordenar os resultados de uma consulta em SQL, seja em ordem crescente ou decrescente.