Os operadores lógicos AND, OR e NOT são amplamente utilizados em SQL para combinar condições em consultas (queries). Aqui estão as explicações e exemplos básicos de cada um, juntamente com as respostas esperadas:

### Operador AND

O operador AND é usado para combinar múltiplas condições em uma query, e todas as condições devem ser verdadeiras para que os registros sejam selecionados.

**Exemplo:**

Suponha que temos uma tabela chamada `Funcionarios`:

| ID | Nome     | Departamento | Salario |
|----|----------|--------------|---------|
| 1  | Alice    | TI           | 6000    |
| 2  | Bob      | Vendas       | 5000    |
| 3  | Carol    | TI           | 7000    |
| 4  | Dave     | Marketing    | 4500    |
| 5  | Eve      | TI           | 6500    |

Queremos selecionar todos os funcionários do departamento de TI com salário maior que 6000.

**Query:**

```sql
SELECT * FROM Funcionarios
WHERE Departamento = 'TI' AND Salario > 6000;
```

**Saída:**

| ID | Nome  | Departamento | Salario |
|----|-------|--------------|---------|
| 3  | Carol | TI           | 7000    |
| 5  | Eve   | TI           | 6500    |

### Operador OR

O operador OR é usado para combinar múltiplas condições, mas apenas uma das condições precisa ser verdadeira para que os registros sejam selecionados.

**Exemplo:**

Queremos selecionar todos os funcionários do departamento de TI ou que tenham um salário maior que 6000.

**Query:**

```sql
SELECT * FROM Funcionarios
WHERE Departamento = 'TI' OR Salario > 6000;
```

**Saída:**

| ID | Nome  | Departamento | Salario |
|----|-------|--------------|---------|
| 1  | Alice | TI           | 6000    |
| 3  | Carol | TI           | 7000    |
| 5  | Eve   | TI           | 6500    |

### Operador NOT

O operador NOT é usado para negar uma condição. Ele seleciona registros onde a condição especificada não é verdadeira.

**Exemplo:**

Queremos selecionar todos os funcionários que não estão no departamento de TI.

**Query:**

```sql
SELECT * FROM Funcionarios
WHERE NOT Departamento = 'TI';
```

**Saída:**

| ID | Nome  | Departamento | Salario |
|----|-------|--------------|---------|
| 2  | Bob   | Vendas       | 5000    |
| 4  | Dave  | Marketing    | 4500    |

### Combinação de Operadores

Podemos combinar os operadores AND, OR e NOT para criar consultas mais complexas.

**Exemplo:**

Queremos selecionar todos os funcionários do departamento de TI com salário maior que 6000 ou que não estão no departamento de Marketing.

**Query:**

```sql
SELECT * FROM Funcionarios
WHERE (Departamento = 'TI' AND Salario > 6000) OR NOT Departamento = 'Marketing';
```

**Saída:**

| ID | Nome  | Departamento | Salario |
|----|-------|--------------|---------|
| 1  | Alice | TI           | 6000    |
| 2  | Bob   | Vendas       | 5000    |
| 3  | Carol | TI           | 7000    |
| 5  | Eve   | TI           | 6500    |

Neste exemplo, o operador AND é avaliado primeiro, e depois o operador OR combina os resultados com a condição NOT.

Esses operadores são essenciais para construir consultas SQL eficazes, permitindo filtrar dados de forma precisa e flexível.