# Tabelas Relacionais e Keys

### Tabelas Relacionais
Em um banco de dados relacional, os dados são organizados em tabelas que podem se relacionar entre si através de chaves. Isso ajuda a evitar duplicação de dados e a manter a integridade dos dados.

### Chaves (Keys)
Existem dois tipos principais de chaves que ajudam a estabelecer relações entre tabelas:
1. **Primary Key (Chave Primária)**
2. **Foreign Key (Chave Estrangeira)**

### Primary Key (Chave Primária)
- A chave primária é uma coluna (ou conjunto de colunas) que identifica unicamente cada registro em uma tabela.
- Cada tabela pode ter apenas uma chave primária.
- Os valores na chave primária devem ser únicos e não nulos.

### Foreign Key (Chave Estrangeira)
- A chave estrangeira é uma coluna (ou conjunto de colunas) que cria um vínculo entre os dados em duas tabelas.
- A chave estrangeira em uma tabela aponta para a chave primária em outra tabela.
- Esse vínculo ajuda a garantir a integridade referencial, ou seja, que os valores da chave estrangeira correspondam a valores existentes na tabela referenciada.

### Exemplo Prático

#### Tabela `Customers`
```sql
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100)
);
```
- `CustomerID` é a chave primária, identificando unicamente cada cliente.

#### Tabela `Orders`
```sql
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
```
- `OrderID` é a chave primária, identificando unicamente cada pedido.
- `CustomerID` é a chave estrangeira, referenciando a chave primária `CustomerID` na tabela `Customers`.

### Inserção de Dados
Vamos adicionar alguns dados nas tabelas `Customers` e `Orders`.

##### Tabela `Customers`
```sql
INSERT INTO Customers (CustomerID, Name, Email)
VALUES (1, 'Anna Smith', 'anna.smith@example.com'),
       (2, 'John Doe', 'john.doe@example.com');
```

##### Tabela `Orders`
```sql
INSERT INTO Orders (OrderID, OrderDate, CustomerID)
VALUES (101, '2023-05-15', 1),
       (102, '2023-05-16', 2),
       (103, '2023-05-17', 1);
```

### Visualização dos Dados em Cada Tabela Separadamente

#### Seleção de Dados na Tabela `Customers`
```sql
SELECT * FROM Customers;
```
| CustomerID | Name        | Email                 |
|------------|-------------|-----------------------|
| 1          | Anna Smith  | anna.smith@example.com|
| 2          | John Doe    | john.doe@example.com  |

#### Seleção de Dados na Tabela `Orders`
```sql
SELECT * FROM Orders;
```
| OrderID | OrderDate  | CustomerID |
|---------|------------|------------|
| 101     | 2023-05-15 | 1          |
| 102     | 2023-05-16 | 2          |
| 103     | 2023-05-17 | 1          |

### Explicação Detalhada
- **Customers**: Tabela com dados dos clientes. `CustomerID` é a chave primária.
- **Orders**: Tabela com dados dos pedidos. `OrderID` é a chave primária, e `CustomerID` é a chave estrangeira, que referencia `CustomerID` na tabela `Customers`.

### Resumo
- **Tabelas Relacionais**: Tabelas que se relacionam através de chaves.
- **Primary Key**: Identifica unicamente cada registro em uma tabela.
- **Foreign Key**: Cria um vínculo entre tabelas, referenciando a chave primária de outra tabela.

Esses conceitos ajudam a manter a integridade dos dados e a organizar informações de maneira eficiente em um banco de dados relacional.