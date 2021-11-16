Create Table bdfullsports.tbEndeCliente(
idEndeCliente int(100) NOT NULL,
Primary Key(idEndeCliente),
unique(idEndeCliente),
estadoEndeCliente VARCHAR(30)NOT NULL,
cidadeEndeCliente VARCHAR(30)NOT NULL,
bairroEndeCliente VARCHAR(30)NOT NULL,
completoEndeCliente VARCHAR(30)NOT NULL,
numeroEndeCliente VARCHAR(30)NOT NULL,
logEndeCliente VARCHAR(10)
);
Create Table bdfullsports.tbCliente(
cpfCliente VARCHAR(12) NOT NULL,
Primary Key(cpfCliente),
unique(cpfCliente),
nomeCliente VARCHAR(50)NOT NULL,
dataNascCliente VARCHAR(10),
generoCliente VARCHAR(20),
emailCliente VARCHAR(50)NOT NULL,
idEndeCliente int,
FOREIGN KEY(idEndeCliente) REFERENCES tbEndeCliente(idEndeCliente)
);
Create Table bdfullsports.tbPedido(
idPedido int(100)NOT NULL,
Primary Key(idPedido),
unique(idPedido),
cpfCliente int,
Foreign Key(cpfCliente) References tbCliente(cpfCliente),
tipoPagamente VARCHAR(25),
totalPagamento int(10)NOT NULL,
totalPedido int(1000),
dataPedido VARCHAR(10)
);
Create Table bdfullsports.tbNFCliente(
idNFCliente int(100)NOT NULL,
Primary Key(idNFCliente),
unique(idNFCliente),
valorTotalCompraNF int(10000),
idPedido int,
Foreign Key(idPedido) References tbPedido(idPedido)
);


Create Table bdfullsports.tbPedido_Produto(
idPedido_Produdo int(100)NOT NULL,
Primary Key(idPedido_Produdo),
unique(idPedido_Produdo),
qtdItensPP int(1000)NOT NULL,
idProduto int,
idPedido int,
idDevolucao int,
Foreign Key(idProduto)References tbProduto(idProduto),
Foreign Key(idPedido)References tbPedido(idPedido),
Foreign Key(idDevolucao)References tbDevolucao(idDevolucao)
);
Create Table bdfullsports.tbDevolucao(
idDevolucao int(100)NOT NULL,
Primary Key(idDevolucao),
unique(idDevolucao),
statusDevolucao VARCHAR(50)
);
Create Table bdfullsports.tbProduto(
idProduto int(100)NOT NULL,
Primary Key(idProduto),
unique(idProduto),
idCategoria int,
Foreign Key(idCategoria) References tbCategoria(idCategoria),
precoProduto int(10000)NOT NULL,
descProduto int(1000),
corProduto VARCHAR(50),
tamanhoProduto VARCHAR(200),
cnpjFornecedor int,
Foreign Key(cnpjFornecedor) References tbFornecedor(cnpjFornecedor),
idDepto int,
Foreign Key(idDepto)References tbDepartamentos(idDpto),
fxEtariaProduto Varchar(50)
);

Create Table bdfullsports.Ordem_de_Compra(
idOrdemCompra int(100)NOT NULL,
horaOrdemCompra VARCHAR(5),
dataOrdemCompra VARCHAR(10),
idProduto int,
Foreign Key(idProduto) References tbProduto(idProduto)
);
Create Table bdfullsports.Fornecedor(
cnpjFornecedor int(18)NOT NULL,
Primary Key(cnpjFornecedor),
unique(cnpjFornecedor),
enderecoFornecedor VARCHAR(50),
nomeFornecedor VARCHAR(50)
);

Create Table bdfullsports.tbDepartamentos(
idDpto int(100)NOT NULL,
Primary Key(idDpto),
unique(idDpto),
descDpto int(1000)
);
Create Table bdfullsports.tbCategoria(
idCategoria int(100)Not NULL,
Primary Key(idCategoria),
unique(idCategoria),
desCategoria int(1000)
);

