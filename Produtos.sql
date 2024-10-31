Create Table Produto (

id_Produto int primary key not null,
Nome_Produto varchar (30) not null,
Marca varchar(27),
Pre�o money,
Categoria varchar (21),
Data_Vencimento date not null,
N�mero_S�rie char (27) );

Create Table Importa��o_A (
id_Importa��o_A int primary key not null,
Nome_Estabelecimento varchar (33) not null,
Previs�o_Chegada_Produto date,
Tel_Fixo char(15),
Tel_Celular_ou_WhatsApp char(18),
Localidade varchar (45) not null,
Cidade varchar (27) not null,
Regi�o varchar (27) not null );

Create Table Exporta��o_A(
id_Exporta��o_A int primary key not null,
Nome_Transportadora varchar (30) not null,
Data_Sa�da_da_Transportadora date,
Data_Entrega Date not null,
Tel_Fixo char(15),
Tel_Celular_ou_WhatsApp char (18),
Localidade_Transportadora varchar (39),
Cidade varchar (27),
Regi�o varchar(27) );

Alter Table Produto
Add Constraint produ_Import foreign key (id_Produto) References Importa��o_A (id_Importa��o_A);

Alter Table Produto
Add Constraint produ_Export foreign key (id_Produto) References Exporta��o_A (id_Exporta��o_A);

Alter Table Importa��o_A
Add Constraint Import_Export_Produtos foreign key (id_Importa��o_A) References Exporta��o_A (id_Exporta��o_A);




