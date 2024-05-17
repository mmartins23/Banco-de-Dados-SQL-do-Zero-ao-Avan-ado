# Informações dentro de uma Tabela

Claro! Vou explicar os conceitos de **coluna**, **linha**, **ID** e **chave primária (primary key)** usando exemplos bem simples e básicos.

### Tabela
Uma tabela em SQL é uma coleção de dados organizada em linhas e colunas. Vamos criar uma tabela simples chamada `Clientes`.

### Coluna
Uma coluna é um campo específico em uma tabela. Cada coluna tem um nome e um tipo de dado. Por exemplo:
- `ID` (número inteiro)
- `Nome` (texto)
- `Email` (texto)

### Linha
Uma linha é um registro na tabela. Cada linha contém valores para cada coluna. 

### ID
O ID é um identificador único para cada linha na tabela. Ele garante que cada registro possa ser distinguido de outros.

### Chave Primária (Primary Key)
A chave primária é uma coluna (ou conjunto de colunas) que identifica unicamente cada registro na tabela. Ela não pode conter valores duplicados ou nulos.

Vamos criar uma tabela chamada `Clientes` com as colunas `ID`, `Nome` e `Email`. A coluna `ID` será a chave primária.

### Criação da Tabela
```sql
CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100)
);
```

### Inserção de Dados
Agora, vamos adicionar alguns registros (linhas) na tabela `Clientes`.

```sql
INSERT INTO Clientes (ID, Nome, Email)
VALUES (1, 'Ana Silva', 'ana.silva@example.com');

INSERT INTO Clientes (ID, Nome, Email)
VALUES (2, 'Bruno Costa', 'bruno.costa@example.com');
```

### Visualização dos Dados
Vamos selecionar todos os registros da tabela `Clientes`.

```sql
SELECT * FROM Clientes;
```

O resultado será algo assim:

| ID | Nome        | Email                 |
|----|-------------|------------------------|
| 1  | Ana Silva   | ana.silva@example.com  |
| 2  | Bruno Costa | bruno.costa@example.com|

### Explicação Detalhada

1. **Colunas**:
   - `ID`: Identificador único para cada cliente.
   - `Nome`: Nome do cliente.
   - `Email`: Endereço de email do cliente.

2. **Linhas**:
   - Cada linha representa um cliente com um `ID`, `Nome` e `Email`.

3. **ID**:
   - Na tabela `Clientes`, os valores de `ID` são 1 e 2, garantindo que cada cliente possa ser identificado de forma única.

4. **Chave Primária**:
   - `ID` é a chave primária, o que significa que não pode haver dois clientes com o mesmo `ID`.

### Resumo
- **Coluna**: Campo específico em uma tabela (ex.: `ID`, `Nome`, `Email`).
- **Linha**: Registro completo na tabela (ex.: `1, 'Ana Silva', 'ana.silva@example.com'`).
- **ID**: Identificador único para cada linha.
- **Chave Primária**: Coluna que identifica unicamente cada linha.

Esses são os conceitos básicos de como dados são organizados em uma tabela SQL.