-- inserção de dados e queries 
use ecommerce_refatorado 

-- Inserir dados na tabela Produtos
INSERT INTO Produtos (ID_Produto, Nome_Produto, Descricao, StatusProduto, Validade, Codigo, Preco, Quantidade)
VALUES
    (1, 'Camiseta', 'Camiseta de algodão branca', 'Disponivel', '2024-12-31', 'ABC123', 29.99, 100),
    (2, 'Calça Jeans', 'Calça jeans azul', 'Disponivel', '2024-12-31', 'DEF456', 59.99, 50),
    (3, 'Tênis', 'Tênis esportivo preto', 'Disponivel', '2024-12-31', 'GHI789', 79.99, 80);
-- Adicione mais linhas conforme necessário

-- Inserir dados na tabela Clientes
INSERT INTO Clientes (ID_Cliente, Nome_Cliente, CPF_Cliente, Dt_Aniversario, Endereco, Telefone)
VALUES
    (1, 'João Silva', '12345678901', '1990-05-15', 'Rua das Flores, 123', '9999-9999'),
    (2, 'Maria Santos', '98765432101', '1985-10-20', 'Avenida Principal, 456', '8888-8888');
-- Adicione mais linhas conforme necessário

-- Inserir dados na tabela Fornecedores
INSERT INTO Fornecedores (ID_Fornecedor, Nome_Fornecedor, Cod_Fornecedor, Contato)
VALUES
    (1, 'Fornecedor A', 'ABC001', '1111-1111'),
    (2, 'Fornecedor B', 'DEF002', '2222-2222');
-- Adicione mais linhas conforme necessário

-- Inserir dados na tabela Estoque
INSERT INTO Estoque (ID_Estoque, ID_Produto, Lote, Armazem)
VALUES
    (1, 1, 'Lote001', 'Armazém A'),
    (2, 2, 'Lote002', 'Armazém B');
-- Adicione mais linhas conforme necessário

-- Inserir dados na tabela Pedidos
INSERT INTO Pedidos (ID_Pedido, ID_Cliente, StatusPedido, Quantidade)
VALUES
    (1, 1, 'Em andamento', 3),
    (2, 2, 'Aprovado', 2);
-- Adicione mais linhas conforme necessário

-- Inserir dados na tabela Pagamentos
INSERT INTO Pagamentos (ID_Pagamento, ID_Cliente, TipoPagamento, LimiteDisponivel)
VALUES
    (1, 1, 'Boleto', 1000.00),
    (2, 2, 'Credito', 500.00);
-- Adicione mais linhas conforme necessário

-- Inserir dados na tabela Fornecedor_Produto
INSERT INTO Fornecedor_Produto (ID_Fornecedor, ID_Produto, Quantidade)
VALUES
    (1, 1, 50),
    (2, 2, 30);
-- Adicione mais linhas conforme necessário

-- Inserir dados na tabela Estoque_Produto
INSERT INTO Estoque_Produto (ID_Estoque, ID_Produto, Quantidade)
VALUES
    (1, 1, 50),
    (2, 2, 30);
-- Adicione mais linhas conforme necessário

-- Inserir dados na tabela Pedido_Produto
INSERT INTO Pedido_Produto (ID_Pedido, ID_Produto, Quantidade)
VALUES
    (1, 1, 3),
    (2, 2, 2);
-- Adicione mais linhas conforme necessário

-- Inserir dados na tabela Meio_Pagamento
INSERT INTO Meio_Pagamento (ID_MeioPagamento, ID_Pagamento, ID_Cliente)
VALUES
    (1, 1, 1),
    (2, 2, 2);
-- Adicione mais linhas conforme necessário

-- Inserir dados na tabela Status_Pagamentos
INSERT INTO Status_Pagamentos (ID_StatusPagamento, ID_Pagamento)
VALUES
    (1, 1),
    (2, 2);
-- Adicione mais linhas conforme necessário
