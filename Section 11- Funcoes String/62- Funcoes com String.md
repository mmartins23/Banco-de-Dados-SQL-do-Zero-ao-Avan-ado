### Funções de Strings em SQL

Funções de strings em SQL são usadas para manipular e transformar dados textuais. Elas são especialmente úteis para formatar resultados, realizar buscas, substituições e outras operações sobre colunas de texto.

### Exemplos de Funções de Strings

#### Tabela `clients`:

| client_id | client_name | client_email              |
|-----------|-------------|---------------------------|
| 1         | Alice       | alice@example.com         |
| 2         | Bob         | bob@example.com           |
| 3         | Charlie     | charlie@example.com       |
| 4         | David       | david@example.com         |
| 5         | Eve         | eve@example.com           |

#### Tabela `payments`:

| payment_id | client_id | amount | payment_date | payment_method |
|------------|-----------|--------|--------------|----------------|
| 1          | 1         | 100.00 | 2023-01-10   | Credit Card    |
| 2          | 2         | 200.00 | 2023-02-15   | PayPal         |
| 3          | 3         | 150.00 | 2023-03-20   | Bank Transfer  |
| 4          | 4         | 250.00 | 2023-04-25   | Credit Card    |
| 5          | 5         | 300.00 | 2023-05-30   | PayPal         |

### Funções Comuns de Strings

1. **`UPPER()` e `LOWER()`**
   - Convertem uma string para maiúsculas (`UPPER`) ou minúsculas (`LOWER`).

   ```sql
   SELECT client_name, UPPER(client_name) AS upper_name, LOWER(client_name) AS lower_name
   FROM `clients`;
   ```

   **Resultado**:

   | client_name | upper_name | lower_name |
   |-------------|------------|------------|
   | Alice       | ALICE      | alice      |
   | Bob         | BOB        | bob        |
   | Charlie     | CHARLIE    | charlie    |
   | David       | DAVID      | david      |
   | Eve         | EVE        | eve        |

2. **`CONCAT()`**
   - Concatena duas ou mais strings.

   ```sql
   SELECT client_name, CONCAT('Hello, ', client_name, '!') AS greeting
   FROM `clients`;
   ```

   **Resultado**:

   | client_name | greeting      |
   |-------------|---------------|
   | Alice       | Hello, Alice! |
   | Bob         | Hello, Bob!   |
   | Charlie     | Hello, Charlie!|
   | David       | Hello, David! |
   | Eve         | Hello, Eve!   |

3. **`SUBSTRING()`**
   - Extrai uma substring de uma string, começando em uma posição específica e com um comprimento opcional.

   ```sql
   SELECT client_name, SUBSTRING(client_name, 1, 3) AS short_name
   FROM `clients`;
   ```

   **Resultado**:

   | client_name | short_name |
   |-------------|------------|
   | Alice       | Ali        |
   | Bob         | Bob        |
   | Charlie     | Cha        |
   | David       | Dav        |
   | Eve         | Eve        |

4. **`LENGTH()`**
   - Retorna o comprimento de uma string.

   ```sql
   SELECT client_name, LENGTH(client_name) AS name_length
   FROM `clients`;
   ```

   **Resultado**:

   | client_name | name_length |
   |-------------|-------------|
   | Alice       | 5           |
   | Bob         | 3           |
   | Charlie     | 7           |
   | David       | 5           |
   | Eve         | 3           |

5. **`REPLACE()`**
   - Substitui todas as ocorrências de uma substring dentro de uma string.

   ```sql
   SELECT client_email, REPLACE(client_email, 'example', 'test') AS new_email
   FROM `clients`;
   ```

   **Resultado**:

   | client_email      | new_email            |
   |-------------------|----------------------|
   | alice@example.com | alice@test.com       |
   | bob@example.com   | bob@test.com         |
   | charlie@example.com| charlie@test.com    |
   | david@example.com | david@test.com       |
   | eve@example.com   | eve@test.com         |

6. **`TRIM()`**
   - Remove espaços em branco de ambos os lados de uma string.

   ```sql
   SELECT TRIM('   Alice   ') AS trimmed_name;
   ```

   **Resultado**:

   | trimmed_name |
   |--------------|
   | Alice        |

7. **`POSITION()`**
   - Retorna a posição de uma substring dentro de uma string.

   ```sql
   SELECT client_email, POSITION('@' IN client_email) AS at_position
   FROM `clients`;
   ```

   **Resultado**:

   | client_email      | at_position |
   |-------------------|-------------|
   | alice@example.com | 6           |
   | bob@example.com   | 4           |
   | charlie@example.com| 8          |
   | david@example.com | 6           |
   | eve@example.com   | 4           |

### Aplicações Práticas

1. **Filtrar Clientes pelo Domínio de Email**

   ```sql
   SELECT client_name, client_email
   FROM `clients`
   WHERE client_email LIKE '%@example.com';
   ```

2. **Criar uma Saudação Personalizada**

   ```sql
   SELECT client_name, CONCAT('Dear ', client_name, ', your payment is due.') AS message
   FROM `clients`;
   ```

3. **Obter a Parte Local dos Endereços de Email**

   ```sql
   SELECT client_name, SUBSTRING(client_email, 1, POSITION('@' IN client_email) - 1) AS local_part
   FROM `clients`;
   ```

### Conclusão

Funções de strings em SQL são ferramentas poderosas para manipulação e análise de dados textuais. Usando funções como `UPPER()`, `LOWER()`, `CONCAT()`, `SUBSTRING()`, `LENGTH()`, `REPLACE()`, `TRIM()`, e `POSITION()`, você pode transformar e analisar seus dados textuais de maneiras variadas e significativas. Esses exemplos demonstram como você pode aplicar essas funções em consultas SQL para obter resultados específicos e úteis a partir de suas tabelas `clients` e `payments`.