# Ordenando com o ORDER BY

O comando **ORDER BY** em SQL é usado para ordenar os resultados de uma consulta em ordem ascendente ou descendente, com base em uma ou mais colunas.

### Sintaxe do `ORDER BY`
```sql
SELECT column1, column2, ...
FROM table_name
ORDER BY column1 [ASC|DESC], column2 [ASC|DESC], ...;
```
- `ASC` significa ordem ascendente (padrão).
- `DESC` significa ordem descendente.

### Exemplos do `ORDER BY`

Vamos usar a tabela `Customers` que criamos anteriormente.

#### Dados na Tabela `Customers`
```sql
SELECT * FROM Customers;
```

| ID | Name        | Email                 |
|----|-------------|-----------------------|
| 1  | Anna Smith  | anna.smith@example.com|
| 2  | John Doe    | john.doe@example.com  |
| 3  | Maria Garcia| maria.garcia@example.com|
| 4  | Tom Hanks   | tom.hanks@example.com |

#### Ordenar por Nome em Ordem Ascendente (ASC)
```sql
SELECT * FROM Customers
ORDER BY Name ASC;
```

Resultado:

| ID | Name        | Email                 |
|----|-------------|-----------------------|
| 1  | Anna Smith  | anna.smith@example.com|
| 2  | John Doe    | john.doe@example.com  |
| 3  | Maria Garcia| maria.garcia@example.com|
| 4  | Tom Hanks   | tom.hanks@example.com |

#### Ordenar por Nome em Ordem Descendente (DESC)
```sql
SELECT * FROM Customers
ORDER BY Name DESC;
```

Resultado:

| ID | Name        | Email                 |
|----|-------------|-----------------------|
| 4  | Tom Hanks   | tom.hanks@example.com |
| 3  | Maria Garcia| maria.garcia@example.com|
| 2  | John Doe    | john.doe@example.com  |
| 1  | Anna Smith  | anna.smith@example.com|

#### Ordenar por Email em Ordem Ascendente (ASC)
```sql
SELECT * FROM Customers
ORDER BY Email ASC;
```

Resultado:

| ID | Name        | Email                 |
|----|-------------|-----------------------|
| 1  | Anna Smith  | anna.smith@example.com|
| 2  | John Doe    | john.doe@example.com  |
| 3  | Maria Garcia| maria.garcia@example.com|
| 4  | Tom Hanks   | tom.hanks@example.com |

#### Ordenar por ID em Ordem Descendente (DESC)
```sql
SELECT * FROM Customers
ORDER BY ID DESC;
```

Resultado:

| ID | Name        | Email                 |
|----|-------------|-----------------------|
| 4  | Tom Hanks   | tom.hanks@example.com |
| 3  | Maria Garcia| maria.garcia@example.com|
| 2  | John Doe    | john.doe@example.com  |
| 1  | Anna Smith  | anna.smith@example.com|

### Ordenar por Múltiplas Colunas
Podemos ordenar por mais de uma coluna. Primeiro ordenamos pela primeira coluna e, se houver valores iguais, usamos a segunda coluna para ordenar esses valores.

#### Ordenar por Nome em Ordem Ascendente e, em caso de empate, por Email em Ordem Descendente
```sql
SELECT * FROM Customers
ORDER BY Name ASC, Email DESC;
```

Resultado (se adicionarmos um cliente com o mesmo nome):

| ID | Name        | Email                 |
|----|-------------|-----------------------|
| 1  | Anna Smith  | anna.smith@example.com|
| 2  | John Doe    | john.doe@example.com  |
| 3  | Maria Garcia| maria.garcia@example.com|
| 4  | Tom Hanks   | tom.hanks@example.com |
| 5  | Tom Hanks   | tomh@example.com      |

### Resumo dos Comandos `ORDER BY`
- **ORDER BY**: Ordena os resultados com base em uma ou mais colunas.
- **ASC**: Ordem ascendente (padrão).
- **DESC**: Ordem descendente.
- **Múltiplas colunas**: Ordena por uma coluna e, em caso de empate, por outra coluna.

Esses exemplos mostram como ordenar os dados em uma tabela SQL usando o comando `ORDER BY`.