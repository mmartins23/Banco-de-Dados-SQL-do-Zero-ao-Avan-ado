# NULL

O operador `IS NULL` é usado para verificar se um valor em uma coluna é nulo. Por exemplo, se quisermos selecionar usuários que não tenham um endereço de e-mail registrado (ou seja, cujo valor na coluna de e-mail seja nulo), podemos usar `IS NULL`. Aqui está um exemplo:

```sql
SELECT *
FROM studyingSQL.users
WHERE email IS NULL;
```

Esta consulta seleciona todas as colunas da tabela `users` onde o valor na coluna de e-mail é nulo.

### Saída Esperada

Supondo que nenhum usuário tenha um valor nulo na coluna de e-mail, a consulta não retornaria nenhum resultado. Se houver usuários com e-mails nulos, eles seriam listados na saída.