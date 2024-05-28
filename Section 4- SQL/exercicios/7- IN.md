# IN

O operador `IN` é usado para verificar se um valor está presente em uma lista de valores. Por exemplo, suponha que você queira selecionar usuários com IDs específicos da tabela `users`. Você pode usar o operador `IN` para isso. Aqui está um exemplo:

```sql
SELECT *
FROM studyingSQL.users
WHERE user_id IN (1, 3, 5, 7, 9);
```

Esta consulta seleciona todas as colunas da tabela `users` onde o `user_id` está presente na lista (1, 3, 5, 7, 9). Isso retornará os usuários com os IDs 1, 3, 5, 7 e 9.

O operador `IN` é útil quando você precisa comparar um valor com vários outros valores em uma lista, em vez de escrever múltiplas condições `OR`.