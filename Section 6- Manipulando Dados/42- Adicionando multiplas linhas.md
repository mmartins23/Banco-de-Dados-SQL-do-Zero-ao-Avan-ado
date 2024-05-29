Vou mostrar como a tabela `languages` se parece antes e depois de executar a query `INSERT INTO languages (language_id, name, last_update) VALUES (DEFAULT, 'Portuguese', '2024-01-01 12:00:00'), (DEFAULT, 'Italian', '2024-01-01 12:00:00'), (DEFAULT, 'Dutch', '2024-01-01 12:00:00');`.

### Tabela Antes da Inserção

#### Tabela: languages

| language_id | name       | last_update          |
|-------------|------------|----------------------|
| 1           | English    | 2024-01-01 12:00:00  |
| 2           | Spanish    | 2024-01-01 12:00:00  |
| 3           | French     | 2024-01-01 12:00:00  |
| 4           | German     | 2024-01-01 12:00:00  |
| 5           | Chinese    | 2024-01-01 12:00:00  |

### Query para Adicionar Múltiplas Linhas

Aqui está a query para adicionar múltiplas linhas à tabela:

```sql
INSERT INTO languages (language_id, name, last_update) 
VALUES 
(DEFAULT, 'Portuguese', '2024-01-01 12:00:00'), 
(DEFAULT, 'Italian', '2024-01-01 12:00:00'), 
(DEFAULT, 'Dutch', '2024-01-01 12:00:00');
```

### Tabela Após a Inserção

Após executar a query, a tabela `languages` deve incluir as novas linhas com os idiomas "Portuguese", "Italian" e "Dutch".

#### Tabela: languages (Após a Inserção)

| language_id | name       | last_update          |
|-------------|------------|----------------------|
| 1           | English    | 2024-01-01 12:00:00  |
| 2           | Spanish    | 2024-01-01 12:00:00  |
| 3           | French     | 2024-01-01 12:00:00  |
| 4           | German     | 2024-01-01 12:00:00  |
| 5           | Chinese    | 2024-01-01 12:00:00  |
| 6           | Portuguese | 2024-01-01 12:00:00  |
| 7           | Italian    | 2024-01-01 12:00:00  |
| 8           | Dutch      | 2024-01-01 12:00:00  |

### Explicação

- **`INSERT INTO languages (language_id, name, last_update)`**: Especifica a tabela `languages` e as colunas `language_id`, `name` e `last_update` onde os valores serão inseridos.
- **`VALUES (DEFAULT, 'Portuguese', '2024-01-01 12:00:00'), (DEFAULT, 'Italian', '2024-01-01 12:00:00'), (DEFAULT, 'Dutch', '2024-01-01 12:00:00')`**: Fornece os valores a serem inseridos nas respectivas colunas. `DEFAULT` indica que o valor padrão será usado para `language_id`, geralmente um valor auto-incrementado.

Essa abordagem permite a inserção de várias linhas em uma única operação SQL, garantindo que cada `language_id` seja gerado automaticamente pelo banco de dados, se configurado como auto-incremento.