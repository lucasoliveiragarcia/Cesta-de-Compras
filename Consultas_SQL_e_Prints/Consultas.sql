/*Join nome sobrenome email e datas das compras dos clientes*/
select nome,sobrenome,email,datacompra from consumidor 
join compra on(consumidor.idconsumidor=compra.idconsumidor)
join pessoa on(consumidor.idpessoa=pessoa.idpessoa)

/*view dados cliente*/
create or replace view nome_sobrenome_email_pessoa as
select nome,sobrenome,email from pessoa;

select * from nome_sobrenome_email_pessoa limit 10;

/*view produtos e suas marcas*/
create or replace view produtos as 
select produto.nome as produto,marca.nome as marca from produto join marca on (produto.idmarca=marca.idmarca);

select * from produtos limit 10;

/*exist 1*/
select exists(select * from compra where valortotal>10.0 and valortotal<20.0)

/*exist 2*/
select exists (select * from itemcompra where preco > 100.0) 

/*exist 3*/
select not exists (select * from compra where datacompra > '2018-07-20') 

/*check 1*/
alter table itemlistacompra add check (quantidade>0)

INSERT INTO itemlistacompra (iditemlistacompra,idlistacompra,idproduto,quantidade) 
VALUES (1,1,1,0) 

/*check 2*/
alter table compra add check (valortotal>0)

INSERT INTO compra (idcompra,idconsumidor,idestabelecimento,valortotal,datacompra) 
VALUES (1,1,1,0,'2008-07-02') 

/*Asserção/Trigger/Função*/
CREATE OR REPLACE FUNCTION checkPrecoItemCompra() RETURNS TRIGGER AS ' BEGIN
IF EXISTS ( select valortotal as valor_da_compra,preco as valor_do_item from itemcompra
			join compra on(itemcompra.idcompra=compra.idcompra) where preco>valortotal
) THEN
RAISE EXCEPTION ''Erro: Preço do item da compra maior que o valor total da compra!''; END IF; RETURN NULL; END
'
LANGUAGE plpgsql;
CREATE TRIGGER checkPrecoItemCompraTrigger AFTER INSERT OR UPDATE OF preco ON itemcompra
FOR EACH ROW
EXECUTE PROCEDURE checkPrecoItemCompra();

Insert into ItemCompra (idproduto,idcompra ,valido , preco,iditemcompra,quantidade) VALUES (1,1,1,5.00,11,1);
