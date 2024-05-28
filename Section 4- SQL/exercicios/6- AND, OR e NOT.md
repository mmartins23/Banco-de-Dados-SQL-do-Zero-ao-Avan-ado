# Operadores AND, OR e NOT

### Exemplo com `AND`

Suponha que você queira selecionar usuários do sexo feminino (gender = 'Female') que nasceram após 1990-01-01:

```sql
SELECT * 
FROM studyingSQL.users 
WHERE gender = 'Female' AND date_of_birth > '1990-01-01';
```

Esta consulta seleciona todas as colunas da tabela `users` onde o sexo é 'Female' **e** a data de nascimento é posterior a 1990-01-01.

### Exemplo com `OR`

Suponha que você queira selecionar usuários do sexo masculino (gender = 'Male') **ou** usuários que nasceram antes de 1985-01-01:

```sql
SELECT * 
FROM studyingSQL.users 
WHERE gender = 'Male' OR date_of_birth < '1985-01-01';
```

Esta consulta seleciona todas as colunas da tabela `users` onde o sexo é 'Male' **ou** a data de nascimento é anterior a 1985-01-01.

### Exemplo com `NOT`

Suponha que você queira selecionar todos os usuários que **não** são do sexo masculino (gender != 'Male'):

```sql
SELECT * 
FROM studyingSQL.users 
WHERE NOT gender = 'Male';
```

Esta consulta seleciona todas as colunas da tabela `users` onde o sexo **não é** 'Male'.

Esses exemplos ilustram como os operadores lógicos `AND`, `OR` e `NOT` podem ser utilizados em consultas SQL para filtrar dados com base em múltiplos critérios.