-- 1) Pedidos com nome do cliente (JOIN)
SELECT pedido.id_pedido, cliente.nome, pedido.status
FROM pedido
JOIN cliente ON pedido.id_cliente = cliente.id_cliente;

-- 2) Produtos ordenados pelo nome (ORDER BY)
SELECT id_produto, nome_produto, modelo
FROM produto
ORDER BY nome_produto ASC;

-- 3) Materiais com quantidade em estoque acima de 100 (WHERE)
SELECT material.descricao, estoque.quantidade_atual
FROM estoque
JOIN material ON estoque.id_material = material.id_material
WHERE estoque.quantidade_atual > 100;

-- 4) Itens do pedido com nome do produto (JOIN)
SELECT item_do_pedido.id_item, produto.nome_produto, item_do_pedido.quantidade
FROM item_do_pedido
JOIN produto ON item_do_pedido.id_produto = produto.id_produto;