# GROUP BY

A cláusula `GROUP BY` é usada para agrupar linhas que têm o mesmo valor em uma ou mais colunas e, em seguida, aplicar funções agregadas, como `COUNT`, `SUM`, `AVG`, etc., a esses grupos. No entanto, para a tabela `users`, onde cada linha representa um usuário único, um exemplo direto de `GROUP BY` pode não ser muito útil. Mas, para fins de demonstração, podemos agrupar os usuários por gênero e contar quantos usuários existem em cada grupo.

```sql
SELECT gender, COUNT(*) as total_users
FROM studyingSQL.users
GROUP BY gender;
```

### Explicação

- `SELECT gender, COUNT(*) as total_users`: Seleciona a coluna `gender` e conta o número de ocorrências de cada valor de gênero. A função `COUNT(*)` é usada para contar o número de linhas em cada grupo. O apelido `total_users` é atribuído ao resultado da contagem.
- `FROM studyingSQL.users`: Indica que a consulta é realizada na tabela `users` do banco de dados `studyingSQL`.
- `GROUP BY gender`: Agrupa as linhas pelo valor da coluna `gender`.

### Saída Esperada

A saída da consulta mostrará o número total de usuários em cada categoria de gênero:

| gender | total_users |
|--------|-------------|
| Female | 10          |
| Male   | 10          |

Isso indica que há 10 usuários do sexo feminino e 10 usuários do sexo masculino na tabela `users`. 

Embora este exemplo seja simples, o `GROUP BY` é frequentemente usado em conjunto com outras operações, como `JOIN`, `HAVING`, e funções agregadas mais complexas, para analisar e resumir grandes conjuntos de dados.