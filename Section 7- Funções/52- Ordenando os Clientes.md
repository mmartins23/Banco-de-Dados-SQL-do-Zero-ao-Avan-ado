Em SQL, a cláusula `ORDER BY` é utilizada para ordenar o resultado de uma consulta de acordo com uma ou mais colunas específicas. Ela pode ser usada para ordenar os resultados em ordem ascendente (padrão) ou descendente.

A sintaxe básica da cláusula `ORDER BY` é a seguinte:

```sql
ORDER BY coluna1 [ASC|DESC], coluna2 [ASC|DESC], ...
```

- `coluna1`, `coluna2`, etc.: As colunas pelas quais você deseja ordenar os resultados.
- `ASC`: Ordenação ascendente (do menor para o maior). Este é o padrão se não for especificado.
- `DESC`: Ordenação descendente (do maior para o menor).

Agora, sobre o exemplo de consulta que você forneceu:

```sql
SELECT cli.client_id,
       cli.client_name,
       SUM(pay.amount) AS total
FROM `compact-gadget-424114-m6.section7.payments` pay
JOIN `compact-gadget-424114-m6.section7.clients` cli USING(client_id)
GROUP BY cli.client_id, cli.client_name
ORDER BY total DESC;
```

Essa consulta realiza o seguinte:

1. Selecione as colunas `client_id` e `client_name` da tabela `clients`, juntamente com a soma dos valores de `amount` da tabela `payments`, renomeada como `total`.
2. Faça uma junção (`JOIN`) entre as tabelas `payments` e `clients` usando a coluna `client_id`.
3. Agrupe os resultados pelo `client_id` e `client_name`.
4. Calcule a soma dos valores de `amount` para cada cliente.
5. Ordene os resultados em ordem descendente com base no total de pagamentos (`total`) de cada cliente.

Portanto, esta consulta irá listar os clientes com o maior total de pagamentos no topo, seguido pelos clientes com valores menores de pagamentos.