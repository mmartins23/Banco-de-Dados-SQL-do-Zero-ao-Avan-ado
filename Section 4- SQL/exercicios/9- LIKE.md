# LIKE

### Explicação do Operador LIKE

O operador `LIKE` é usado para realizar buscas de padrões em valores de texto. Por exemplo, se quisermos selecionar todos os usuários cujo nome comece com a letra "A", podemos usar `LIKE`. Aqui está um exemplo:

```sql
SELECT *
FROM studyingSQL.users
WHERE name LIKE 'A%';
```

Neste exemplo, `%` é um caractere curinga que corresponde a zero ou mais caracteres de qualquer tipo. Portanto, a consulta selecionará todos os usuários cujo nome comece com "A", seguido por qualquer número de caracteres.

#### Saída Esperada:

| user_id | name  | email             | date_of_birth | gender |
|---------|-------|-------------------|---------------|--------|
| 1       | Alice | alice@example.com | 1990-01-01    | Female |

### Explicação Adicional do Operador LIKE

Você também pode usar o `%` no início e no final do padrão para selecionar nomes que contenham a letra "a" em qualquer posição:

```sql
SELECT *
FROM studyingSQL.users
WHERE name LIKE '%a%';
```

Esta consulta selecionará todos os usuários cujo nome contenha a letra "a" em qualquer posição.

#### Saída Esperada:

| user_id | name    | email             | date_of_birth | gender |
|---------|---------|-------------------|---------------|--------|
| 1       | Alice   | alice@example.com | 1990-01-01    | Female |
| 3       | Charlie | charlie@example.com| 1992-07-15  | Male   |
| 5       | Eva     | eva@example.com   | 1995-12-19    | Female |
| 7       | Grace   | grace@example.com | 1993-03-03    | Female |

O operador `LIKE` é útil para realizar buscas de padrões em dados de texto, tornando mais flexíveis as consultas em que você precisa considerar variações nos valores dos campos de texto.