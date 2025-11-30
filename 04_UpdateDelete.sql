-- 1) Atualizar status de um pedido
UPDATE pedido
SET status = 'Concluído'
WHERE id_pedido = 1;

-- 2) Atualizar salário de um funcionário
UPDATE funcionario
SET salario = salario + 200
WHERE id_funcionario = 2;

-- 3) Atualizar quantidade de um item no estoque
UPDATE estoque
SET quantidade_atual = 300
WHERE id_estoque = 2;

-- 4) Apagar um item específico de pedido
DELETE FROM item_do_pedido
WHERE id_item = 1;

-- 5) Apagar um cliente fictício de teste
DELETE FROM cliente
WHERE id_cliente = 3;

-- 6) Apagar um material com base no ID
DELETE FROM material
WHERE id_material = 3;