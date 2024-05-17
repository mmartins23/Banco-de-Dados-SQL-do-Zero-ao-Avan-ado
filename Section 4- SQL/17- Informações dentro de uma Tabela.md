# Informações dentro de uma Tabela


### Tabela
Uma tabela em SQL é uma coleção de dados organizada em linhas e colunas. Vamos criar uma tabela simples chamada `Customers`.

### Coluna
Uma coluna é um campo específico em uma tabela. Cada coluna tem um nome e um tipo de dado. Por exemplo:
- `ID` (número inteiro)
- `Name` (texto)
- `Email` (texto)

### Linha
Uma linha é um registro na tabela. Cada linha contém valores para cada coluna.

### ID
O ID é um identificador único para cada linha na tabela. Ele garante que cada registro possa ser distinguido de outros.

### Chave Primária (Primary Key)
A chave primária é uma coluna (ou conjunto de colunas) que identifica unicamente cada registro na tabela. Ela não pode conter valores duplicados ou nulos.

Vamos criar uma tabela chamada `Customers` com as colunas `ID`, `Name` e `Email`. A coluna `ID` será a chave primária.

### Criação da Tabela
```sql
CREATE TABLE Customers (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);
```

### Inserção de Dados
Agora, vamos adicionar alguns registros (linhas) na tabela `Customers`.

```sql
INSERT INTO Customers (ID, Name, Email)
VALUES (1, 'Anna Smith', 'anna.smith@example.com');

INSERT INTO Customers (ID, Name, Email)
VALUES (2, 'John Doe', 'john.doe@example.com');
```

### Visualização dos Dados
Vamos selecionar todos os registros da tabela `Customers`.

```sql
SELECT * FROM Customers;
```

O resultado será algo assim:

| ID | Name        | Email                 |
|----|-------------|------------------------|
| 1  | Anna Smith  | anna.smith@example.com |
| 2  | John Doe    | john.doe@example.com   |

### Explicação Detalhada

1. **Colunas**:
   - `ID`: Identificador único para cada cliente.
   - `Name`: Nome do cliente.
   - `Email`: Endereço de email do cliente.

2. **Linhas**:
   - Cada linha representa um cliente com um `ID`, `Name` e `Email`.

3. **ID**:
   - Na tabela `Customers`, os valores de `ID` são 1 e 2, garantindo que cada cliente possa ser identificado de forma única.

4. **Chave Primária**:
   - `ID` é a chave primária, o que significa que não pode haver dois clientes com o mesmo `ID`.

### Resumo
- **Coluna**: Campo específico em uma tabela (ex.: `ID`, `Name`, `Email`).
- **Linha**: Registro completo na tabela (ex.: `1, 'Anna Smith', 'anna.smith@example.com'`).
- **ID**: Identificador único para cada linha.
- **Chave Primária**: Coluna que identifica unicamente cada linha.

Esses são os conceitos básicos de como dados são organizados em uma tabela SQL.