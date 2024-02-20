-- Código ecommerce refatorado 

-- criação do banco de dados para o cenário de ecommerce
CREATE DATABASE ecommerce_refatorado;
GO

USE ecommerce;
GO

-- TABELA PRODUTO
CREATE TABLE Produtos (
    ID_Produto INT PRIMARY KEY,
    Nome_Produto VARCHAR(45) NOT NULL,
    Descricao VARCHAR(255),
    StatusProduto VARCHAR(10) CHECK (StatusProduto IN ('Disponivel', 'Indisponivel')),
    Validade DATE,
    Codigo CHAR(9) UNIQUE,
    Preco DECIMAL(10, 2),
    Quantidade INT
);
GO

-- TABELA CLIENTE 
CREATE TABLE Clientes (
    ID_Cliente INT PRIMARY KEY,
    Nome_Cliente VARCHAR(45) NOT NULL, 
    CPF_Cliente CHAR(11) UNIQUE,
    Dt_Aniversario DATE,
    Endereco VARCHAR(255),
    Telefone VARCHAR(15)
);
GO

-- TABELA FORNECEDOR 
CREATE TABLE Fornecedores (
    ID_Fornecedor INT PRIMARY KEY,
    Nome_Fornecedor VARCHAR(45),
    Cod_Fornecedor CHAR(6) UNIQUE,
    Contato VARCHAR(15)
);
GO

-- TABELA ESTOQUE 
CREATE TABLE Estoque (
    ID_Estoque INT PRIMARY KEY,
    ID_Produto INT,
    Lote VARCHAR(15),
    Armazem VARCHAR(15),
    FOREIGN KEY (ID_Produto) REFERENCES Produtos(ID_Produto)
);
GO

-- TABELA PEDIDO
CREATE TABLE Pedidos (
    ID_Pedido INT PRIMARY KEY,
    ID_Cliente INT,
    StatusPedido VARCHAR(10) CHECK (StatusPedido IN ('Aprovado', 'Cancelado', 'Em andamento')),
    Quantidade INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
);
GO

-- TABELA PAGAMENTO
CREATE TABLE Pagamentos (
    ID_Pagamento INT PRIMARY KEY, 
    ID_Cliente INT,
    TipoPagamento CHAR(10) CHECK (TipoPagamento IN ('Boleto', 'Credito', 'Debito')),
    LimiteDisponivel DECIMAL(10, 2),
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
);
GO

-- TABELA FORNECEDOR_HAS_PRODUTO
CREATE TABLE Fornecedor_Produto (
    ID_Fornecedor INT,
    ID_Produto INT, 
    Quantidade INT NOT NULL,
    PRIMARY KEY (ID_Fornecedor, ID_Produto),
    FOREIGN KEY (ID_Fornecedor) REFERENCES Fornecedores(ID_Fornecedor),
    FOREIGN KEY (ID_Produto) REFERENCES Produtos(ID_Produto)
);
GO

-- TABELA ESTOQUE_HAS_PRODUTO
CREATE TABLE Estoque_Produto (
    ID_Estoque INT,
    ID_Produto INT, 
    Quantidade INT NOT NULL,
    PRIMARY KEY (ID_Estoque, ID_Produto),
    FOREIGN KEY (ID_Estoque) REFERENCES Estoque(ID_Estoque),
    FOREIGN KEY (ID_Produto) REFERENCES Produtos(ID_Produto)
);
GO

-- TABELA PEDIDO_HAS_PRODUTO
CREATE TABLE Pedido_Produto (
    ID_Pedido INT,
    ID_Produto INT, 
    Quantidade INT NOT NULL,
    PRIMARY KEY (ID_Pedido, ID_Produto),
    FOREIGN KEY (ID_Pedido) REFERENCES Pedidos(ID_Pedido),
    FOREIGN KEY (ID_Produto) REFERENCES Produtos(ID_Produto)
);
GO

-- TABELA MEIO_DE_PAGAMENTO
CREATE TABLE Meio_Pagamento (
    ID_MeioPagamento INT PRIMARY KEY,
    ID_Pagamento INT,
    ID_Cliente INT,
    FOREIGN KEY (ID_Pagamento) REFERENCES Pagamentos(ID_Pagamento),
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
);
GO

-- TABELA STATUS_DE_PAGAMENTO 
CREATE TABLE Status_Pagamentos (
    ID_StatusPagamento INT PRIMARY KEY, 
    ID_Pagamento INT,
    FOREIGN KEY (ID_Pagamento) REFERENCES Pagamentos(ID_Pagamento)
);
GO
