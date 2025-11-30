BEGIN;

INSERT INTO cliente (id_cliente, nome, email, telefone, endereco) VALUES
(1, 'Ana Paula Ferreira', 'ana@gmail.com', '64999990001', 'Rua das Flores, 120 - Centro'),
(2, 'João Batista Ramos', 'joao@gmail.com', '64988880002', 'Av. Goiás, 450 - Setor Central'),
(3, 'Marcos Aurélio Silva', 'marcos@gmail.com', '64977770003', 'Rua 5, 98 - Vila Nova');

INSERT INTO funcionario (id_funcionario, nome, cargo, salario, data_admissao) VALUES
(1, 'Carlos Mendes', 'Auxiliar', 1800.00, '2023-03-15'),
(2, 'Juliana Braga', 'Operadora', 2100.00, '2022-11-02'),
(3, 'Roberto Azevedo', 'Conferente', 1950.00, '2023-01-20');

INSERT INTO material (id_material, descricao, unidade, preco_unitario) VALUES
(1, 'Couro marrom', 'm²', 45.00),
(2, 'Sola de borracha', 'un', 12.00),
(3, 'Cadarço reforçado', 'par', 5.00);

INSERT INTO estoque (id_estoque, quantidade_atual, id_material) VALUES
(1, 50, 1),
(2, 200, 2),
(3, 150, 3);

INSERT INTO ficha_de_fabricacao (id_ficha, nome_produto, descricao, tempo_producao) VALUES
(1, 'Botina Clássica', 'Produção de botina padrão', 2.5),
(2, 'Bota Casual', 'Modelo casual simples', 3.0),
(3, 'Botina Premium', 'Linha premium reforçada', 4.2);

INSERT INTO produto (id_produto, nome_produto, modelo, cor, tamanho, id_ficha) VALUES
(1, 'Botina Clássica', 'CL001', 'Marrom', '41', 1),
(2, 'Bota Casual', 'CS110', 'Preta', '42', 2),
(3, 'Botina Premium', 'PM900', 'Caramelo', '40', 3);

INSERT INTO ficha_material (id_ficha_material, quantidade_necessaria, id_ficha, id_material) VALUES
(1, 1.2, 1, 1),
(2, 1.0, 1, 2),
(3, 1.0, 1, 3);

INSERT INTO pedido (id_pedido, data_pedido, status, id_cliente) VALUES
(1, '2024-01-10', 'Aberto', 1),
(2, '2024-01-15', 'Concluído', 2),
(3, '2024-01-20', 'Enviado', 3);

INSERT INTO item_do_pedido (id_item, quantidade, preco_unitario, id_produto, id_pedido) VALUES
(1, 2, 150.00, 1, 1),
(2, 1, 180.00, 2, 2),
(3, 3, 250.00, 3, 3);

COMMIT;