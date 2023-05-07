# Hive - Criando tabelas, consultando e analisando dados 
<hr/>

> Inicializando o Hive 

Para acessar o container execute o comando a seguir

```sh
docker exec -it hive-server bash
```
![image](https://user-images.githubusercontent.com/42544892/236658998-2dc04ebf-42e6-48c5-bcde-c07dd2af89f4.png)

Agora vamos inicializar o Hive, basta executar o comando:

```sh
hive
```

Você deverá ter um resultado parecido com o da imagem abaixo 

![image](https://user-images.githubusercontent.com/42544892/236659100-12f719c3-99ec-454f-bf56-0daed6dd5a7b.png)


Para garantir que os comandos de consulta estão operando, execute:

```sql
show databases;
```

Se o comando executar sem problemas, igual no exemplo abaixo, está tudo certo! Então podemos seguir com o tutorial. 

![image](https://user-images.githubusercontent.com/42544892/236659256-7b5e5c3c-e5e9-4f34-98f7-ec433494a059.png)


<br><hr>

> Criar um DataBase para execução da Atividade Chamado AdventureWorks
 <br>

Vamos criar um banco de dados utilizando o hive, para isso execute o comando: 

```sql
create database AdventureWorks;
```

![image](https://user-images.githubusercontent.com/42544892/236659345-96f93300-27da-4f7e-a642-bb2bd628a5a9.png)

<br/>

Agora podemos utilizar o [HUE](https://gethue.com/), para verificarmos o banco de dados que criamos.

Porta | URL 
----- | --------------
8888  | http://localhost:8888/  


Podemos verificar o nosso banco de dados destacado abaixo 

![image](https://user-images.githubusercontent.com/42544892/236659654-1cfb69b6-4abd-4132-af03-a91ec9f8a385.png)


<br>
<hr>



> Carregar no HDFS os arquivos do diretório 

A seguir, vamos carregar os arquivos abaixo que foram disponibilizados [aqui](https://drive.google.com/drive/folders/1OfZTSYcgcun-S7UFNVAzbcr0-PzlEc08), no HFDS.


Arquivo/Tabela | 
-----   | 
address.csv | 
customer.csv | 
customeraddress.csv | 
product.csv |
productcategory.csv | 
productdescription.csv | 
productmodel.csv | 
productmodeldescription.csv | 
salesorderdetail.csv | 
salesorderhead.csv | 

<br/>
<hr>
<br>

### Antes de executar os DDLs para a criação das tablelas, certifique-se de que executou o comando abaixo, na dúvida execute novamente.

![image](https://user-images.githubusercontent.com/42544892/236663207-f17e8351-4e8d-46e7-b204-dc9f56a2f7db.png)

```sql
use adventureworks;
```

<br/>
<hr>
<br>

> Criar tabelas externas com os dados no Hive


>> 1. address

<b>Diagrama </b>

![image](https://user-images.githubusercontent.com/42544892/236662082-a54d0ecb-b2cc-439e-beda-cd7310b4f44c.png)


<b>DDL </b>


```sql
create external table address (AddressID int, AddressLine1 string, AddressLine2 string,City string,PostalCode string,rowguid string,ModifiedDate string) 
row format delimited fields terminated by ';' 
stored as textfile 
location '/app/AdventureWorks/tables/address';
```


<b> Após executar o DDL, tevemos ter o seguinte resultado no Hive: </b>

![image](https://user-images.githubusercontent.com/42544892/236662577-c69e13be-de5c-480c-8216-55e847504e0b.png)



<hr>
<br>

>> 2. Customer

<b>Diagrama </b>

![image](https://user-images.githubusercontent.com/42544892/236662941-045516f5-bac5-4690-ae76-6bc3447c33f4.png)


<b>DDL </b>


```sql
create external table customer (CustomerID int,Title string,Suffix string,CompanyName string,SalesPerson string, EmailAddress string,PasswordHash string,PasswordSalt string,rowguid string,ModifiedDate string) 
row format delimited fields terminated by ';' 
stored as textfile location '/app/AdventureWorks/tables/customer';
```


<b> Resultado no Hive: </b>


![image](https://user-images.githubusercontent.com/42544892/236663038-0ac4e90f-fdba-4182-b72c-08ddadc1d4ac.png)



<hr>
<br>

>> 3. CustomerAddress

<b>Diagrama </b>

Coluna | Tipo
----- | --------------
CustomerID | Int
AddressID | Int
rowguid | String
ModifiedDate | DATE



<b>DDL </b>


```sql
create external table customeraddress (CustomerID int,AddressID string,rowguid string,ModifiedDate string) 
row format delimited fields terminated by ';' 
stored as textfile location '/app/AdventureWorks/tables/customeraddress';
```


<b> Resultado no Hive: </b>


![image](https://user-images.githubusercontent.com/42544892/236664408-cf7dc6b6-afa6-4a4b-b991-93388b7679ef.png)



<hr>
<br>

>> 4. Product

<b>Diagrama </b>

![image](https://user-images.githubusercontent.com/42544892/236664480-2308af49-6829-41f3-b2f4-f265f2cba8a8.png)



<b>DDL </b>


```sql
create external table product (
   ProductID int,
   ProductNumber string,
   Color string,
   StandardCost float,
   ListPrice float,
   Size string,
   Weight float,
   ProductCategoryID int,
   ProductModelID int,
   SellStartDate string,
   SellEndDate string,
   DiscontinuedDate string,
   ThumbNailPhoto string,
   ThumbnailPhotoFileName string,
   rowguid string,
   ModifiedDate string
)
 row format delimited fields terminated by ';'
 stored as textfile location '/app/AdventureWorks/tables/product';
```


<b> Resultado no Hive: </b>


![image](https://user-images.githubusercontent.com/42544892/236664576-a4c9a216-0f0e-4d27-9826-509d42e2c85f.png)




<hr>
<br>

>> 5. ProductCategory

<b>Diagrama </b>

![image](https://user-images.githubusercontent.com/42544892/236664661-1d826508-f194-4fa3-b572-c8b7e7b708e7.png)



<b>DDL </b>


```sql
create external table productcategory (ProductCategoryID int,ParentProductCategoryID int,rowguid string,ModifiedDate string)
row format delimited fields terminated by ';' 
stored as textfile location '/app/AdventureWorks/tables/productcategory';
```


<b> Resultado no Hive: </b>


![image](https://user-images.githubusercontent.com/42544892/236664732-b085bc5a-dc27-464a-8c8c-9d233d30917c.png)




<hr>
<br>

>> 6. ProductDescription

<b>Diagrama </b>

![image](https://user-images.githubusercontent.com/42544892/236664928-41a52234-8260-4e9a-9050-7f50efb27a6d.png)




<b>DDL </b>


```sql

create external table productdescription (ProductDescriptionID int,Description string,rowguid string, ModifiedDate string)
row format delimited fields terminated by ';' 
stored as textfile location '/app/AdventureWorks/tables/productdescription';
```


<b> Resultado no Hive: </b>


![image](https://user-images.githubusercontent.com/42544892/236664952-1da3efb8-0001-4d4e-984c-42403a6eb36f.png)




<hr>
<br>

>> 7. ProductModel

<b>Diagrama </b>

![image](https://user-images.githubusercontent.com/42544892/236665010-c876bc0f-8b55-4243-9505-aa264c54915d.png)




<b>DDL </b>


```sql
create external table productmodel (ProductModelID int,CatalogDescription string,rowguid string,ModifiedDate string)
row format delimited fields terminated by ';'
stored as textfile location '/app/AdventureWorks/tables/productmodel';
```


<b> Resultado no Hive: </b>


![image](https://user-images.githubusercontent.com/42544892/236665066-55d53675-9006-449d-b72a-123bfed6262f.png)





<hr>
<br>

>> 8. ProductModelDescription

<b>Diagrama </b>


Coluna | Tipo
----- | --------------
ProductModelID | Int
ProductDescriptionID | Int
Culture | String
rowguid | String
ModifiedDate | DATE




<b>DDL </b>


```sql
create external table productmodeldescription (ProductModelID int,ProductDescriptionID int,Culture string,rowguid string,ModifiedDate string)
row format delimited fields terminated by ';'
stored as textfile location '/app/AdventureWorks/tables/productmodeldescription';
```


<b> Resultado no Hive: </b>


![image](https://user-images.githubusercontent.com/42544892/236665358-858a3161-f14b-4d5d-bb66-5d80f8527cc4.png)





<hr>
<br>

>> 9. SalesOrderDetail

<b>Diagrama </b>


![image](https://user-images.githubusercontent.com/42544892/236665493-a919aaf5-a542-4520-bb37-fad0c33f9998.png)



<b>DDL </b>


```sql
create external table salesorderdetail (SalesOrderID int, SalesOrderDetailID int,OrderQty int,ProductID int,UnitPrice float,UnitPriceDiscount float,LineTotal float,rowguid string,ModifiedDate string) 
row format delimited fields terminated by ';'
stored as textfile location '/app/AdventureWorks/tables/salesorderdetail';
```


<b> Resultado no Hive: </b>


![image](https://user-images.githubusercontent.com/42544892/236665533-215c4246-5b57-4722-bc8b-52129d944b6f.png)




<hr>
<br>

>> 9. SalesOrderHeader
<b>Diagrama </b>


![image](https://user-images.githubusercontent.com/42544892/236665551-e0da0072-f585-4100-85d3-1c2e07b4c13e.png)



<b>DDL </b>


```sql
create external table salesorderhead (
   SalesOrderID int,
   RevisionNumber int,
   OrderDate string,
   DueDate string,
   ShipDate string,
   Status int,
   SalesOrderNumber string,
   CustomerID int,
   ShipToAddressID int,
   BillToAddressID int,
   ShipMethod string,
   CreditCardApprovalCode string,
   SubTotal float,
   TaxAmt float,
   Freight float,
   TotalDue float,
   Comment string,
   rowguid string,
   ModifiedDate string
) 
row format delimited fields terminated by ';'
stored as textfile location '/app/AdventureWorks/tables/salesorderhead';
```


<b> Resultado no Hive: </b>


![image](https://user-images.githubusercontent.com/42544892/236665622-4ea19299-b905-4512-8fb8-a362ed9b4d3e.png)



<hr>
<br>

### Verificando as tabelas criadas ...

Vamos acessar o [HUE](https://gethue.com/) novamente, caso esteja aberto atualize a página. Após isso verifique abaixo do banco de dados todas as tabelas que criamos.

![image](https://user-images.githubusercontent.com/42544892/236665728-902a279e-6d8b-499c-9d77-c5b0bf88f0bb.png)

<br/>

Acesse a aba files, e acesse a nossa estrutura no qual adicionamos ao criar cada tabela (externa), com o parametro 'location'. 

![image](https://user-images.githubusercontent.com/42544892/236665973-02a3288c-f12e-4c26-8c3b-6e05083fdbc9.png)


<hr>
<br>


> Consultar dados sobre Pessoas e “serviços” consumidos




> Criar uma tabela com a visão dos tipos de serviço/Aventura contratados agregados;




> Criar uma tabela com dados para seguimentação e analíse dos clients;

