Create Table Produto (

id_Produto int primary key not null,
Nome_Produto varchar (30) not null,
Marca varchar(27),
Preço money,
Categoria varchar (21),
Data_Vencimento date not null,
Número_Série char (27) );

Create Table Importação_A (
id_Importação_A int primary key not null,
Nome_Estabelecimento varchar (33) not null,
Previsão_Chegada_Produto date,
Tel_Fixo char(15),
Tel_Celular_ou_WhatsApp char(18),
Localidade varchar (45) not null,
Cidade varchar (27) not null,
Região varchar (27) not null );

Create Table Exportação_A(
id_Exportação_A int primary key not null,
Nome_Transportadora varchar (30) not null,
Data_Saída_da_Transportadora date,
Data_Entrega Date not null,
Tel_Fixo char(15),
Tel_Celular_ou_WhatsApp char (18),
Localidade_Transportadora varchar (39),
Cidade varchar (27),
Região varchar(27) );

Alter Table Produto
Add Constraint produ_Import foreign key (id_Produto) References Importação_A (id_Importação_A);

Alter Table Produto
Add Constraint produ_Export foreign key (id_Produto) References Exportação_A (id_Exportação_A);

Alter Table Importação_A
Add Constraint Import_Export_Produtos foreign key (id_Importação_A) References Exportação_A (id_Exportação_A);




