BEGIN TRANSACTION;


-- ==========================
-- TABELA: CLIENTE
-- ==========================
CREATE TABLE cliente (
    id_cliente INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    email TEXT NOT NULL,
    telefone TEXT NOT NULL,
    endereco TEXT NOT NULL
);

-- ==========================
-- TABELA: FUNCIONARIO
-- ==========================
CREATE TABLE funcionario (
    id_funcionario INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    cargo TEXT NOT NULL,
    salario DECIMAL NOT NULL,
    data_admissao TEXT NOT NULL
);

-- ==========================
-- TABELA: MATERIAL
-- ==========================
CREATE TABLE material (
    id_material INTEGER PRIMARY KEY,
    descricao TEXT NOT NULL,
    unidade TEXT NOT NULL,
    preco_unitario DECIMAL NOT NULL
);

-- ==========================
-- TABELA: ESTOQUE
-- ==========================
CREATE TABLE estoque (
    id_estoque INTEGER PRIMARY KEY,
    quantidade_atual DECIMAL NOT NULL,
    id_material INTEGER NOT NULL,
    FOREIGN KEY (id_material) REFERENCES material(id_material)
);

-- ==========================
-- TABELA: PEDIDO
-- ==========================
CREATE TABLE pedido (
    id_pedido INTEGER PRIMARY KEY,
    data_pedido TEXT NOT NULL,
    status TEXT NOT NULL,
    id_cliente INTEGER NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- ==========================
-- TABELA: PRODUTO
-- ==========================
CREATE TABLE produto (
    id_produto INTEGER PRIMARY KEY,
    nome_produto TEXT NOT NULL,
    modelo TEXT NOT NULL,
    cor TEXT NOT NULL,
    tamanho TEXT NOT NULL,
    id_ficha INTEGER,
    FOREIGN KEY (id_ficha) REFERENCES ficha_de_fabricacao(id_ficha)
);

-- ==========================
-- TABELA: FICHA DE FABRICAÇÃO
-- ==========================
CREATE TABLE ficha_de_fabricacao (
    id_ficha INTEGER PRIMARY KEY,
    nome_produto TEXT NOT NULL,
    descricao TEXT NOT NULL,
    tempo_producao DECIMAL NOT NULL
);

-- ==========================
-- TABELA ASSOCIATIVA: FICHA_MATERIAL (N:N)
-- ==========================
CREATE TABLE ficha_material (
    id_ficha_material INTEGER PRIMARY KEY,
    quantidade_necessaria DECIMAL NOT NULL,
    id_ficha INTEGER NOT NULL,
    id_material INTEGER NOT NULL,
    FOREIGN KEY (id_ficha) REFERENCES ficha_de_fabricacao(id_ficha),
    FOREIGN KEY (id_material) REFERENCES material(id_material)
);

-- ==========================
-- TABELA: ITEM_DO_PEDIDO
-- ==========================
CREATE TABLE item_do_pedido (
    id_item INTEGER PRIMARY KEY,
    quantidade INTEGER NOT NULL,
    preco_unitario DECIMAL NOT NULL,
    id_produto INTEGER NOT NULL,
    id_pedido INTEGER NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
);