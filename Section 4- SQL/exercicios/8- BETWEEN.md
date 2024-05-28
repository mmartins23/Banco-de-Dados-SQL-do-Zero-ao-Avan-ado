# BETWEEN

O operador `BETWEEN` é usado para selecionar valores dentro de um intervalo especificado. Por exemplo, se quisermos selecionar usuários cuja data de nascimento esteja dentro de um intervalo específico, podemos usar `BETWEEN`. Aqui está um exemplo:

```sql
SELECT *
FROM studyingSQL.users
WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';
```

Esta consulta seleciona todas as colunas da tabela `users` onde a data de nascimento está entre '1990-01-01' e '2000-12-31', incluindo essas datas. Isso retornará os usuários que nasceram durante a década de 1990.

O operador `BETWEEN` é útil para filtrar dados com base em intervalos numéricos ou de datas, evitando a necessidade de escrever múltiplas condições de comparação.