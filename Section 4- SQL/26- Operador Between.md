O operador `BETWEEN` em SQL é usado para selecionar valores dentro de um intervalo específico. O intervalo inclui os valores de limite inferior e superior. Ele é frequentemente usado com valores numéricos, datas ou textos.

### Exemplo Básico

Suponha que temos a seguinte tabela `Funcionarios`:

| ID | Nome     | Departamento | Salario | DataContratacao |
|----|----------|--------------|---------|-----------------|
| 1  | Alice    | TI           | 6000    | 2020-01-15      |
| 2  | Bob      | Vendas       | 5000    | 2019-03-22      |
| 3  | Carol    | TI           | 7000    | 2018-07-11      |
| 4  | Dave     | Marketing    | 4500    | 2021-05-30      |
| 5  | Eve      | TI           | 6500    | 2022-09-05      |

### Usando o Operador BETWEEN

#### Exemplo 1: Selecionar funcionários com salário dentro de um intervalo

Queremos selecionar todos os funcionários que têm um salário entre 5000 e 6500.

**Query:**

```sql
SELECT * FROM Funcionarios
WHERE Salario BETWEEN 5000 AND 6500;
```

**Saída:**

| ID | Nome  | Departamento | Salario |
|----|-------|--------------|---------|
| 1  | Alice | TI           | 6000    |
| 2  | Bob   | Vendas       | 5000    |
| 5  | Eve   | TI           | 6500    |

#### Exemplo 2: Selecionar funcionários contratados dentro de um intervalo de datas

Queremos selecionar todos os funcionários que foram contratados entre 1º de janeiro de 2020 e 31 de dezembro de 2021.

**Query:**

```sql
SELECT * FROM Funcionarios
WHERE DataContratacao BETWEEN '2020-01-01' AND '2021-12-31';
```

**Saída:**

| ID | Nome  | Departamento | Salario | DataContratacao |
|----|-------|--------------|---------|-----------------|
| 1  | Alice | TI           | 6000    | 2020-01-15      |
| 4  | Dave  | Marketing    | 4500    | 2021-05-30      |

### Uso do NOT BETWEEN

O operador `NOT BETWEEN` é usado para selecionar valores que não estão dentro do intervalo especificado.

#### Exemplo 3: Selecionar funcionários com salário fora de um intervalo

Queremos selecionar todos os funcionários que têm um salário fora do intervalo de 5000 a 6500.

**Query:**

```sql
SELECT * FROM Funcionarios
WHERE Salario NOT BETWEEN 5000 AND 6500;
```

**Saída:**

| ID | Nome  | Departamento | Salario |
|----|-------|--------------|---------|
| 3  | Carol | TI           | 7000    |
| 4  | Dave  | Marketing    | 4500    |

### Considerações Importantes

1. **Inclusão dos Limites:** O operador `BETWEEN` inclui os valores de limite inferior e superior no intervalo. Portanto, `BETWEEN 5000 AND 6500` inclui exatamente 5000 e 6500.
2. **Tipos de Dados:** `BETWEEN` pode ser usado com números, datas e até textos (dependendo da ordenação alfabética).

### Exemplos Combinando Operadores

Podemos combinar `BETWEEN` com outros operadores para criar consultas mais complexas.

#### Exemplo 4: Selecionar funcionários de um departamento específico com salário dentro de um intervalo

Queremos selecionar todos os funcionários do departamento de TI que têm um salário entre 6000 e 7000.

**Query:**

```sql
SELECT * FROM Funcionarios
WHERE Departamento = 'TI' AND Salario BETWEEN 6000 AND 7000;
```

**Saída:**

| ID | Nome  | Departamento | Salario |
|----|-------|--------------|---------|
| 1  | Alice | TI           | 6000    |
| 5  | Eve   | TI           | 6500    |

O operador `BETWEEN` é uma ferramenta poderosa e intuitiva para selecionar valores dentro de um intervalo específico em SQL, tornando as consultas mais legíveis e fáceis de escrever.