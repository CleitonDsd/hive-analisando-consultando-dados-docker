# Hive - Consultando e analisando dados 
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

> Criar tabelas externas com os dados no Hive


>> 1. address

Atributos

Nome | Tipo 
----- | --------------
AddressID | Int
AddressLine1 |  String
AddressLine2 |  String
City | String
PostalCode | String
rowguid | String 
ModifiedDate | Date


<b>Diagrama </b>

![image](https://user-images.githubusercontent.com/42544892/236662082-a54d0ecb-b2cc-439e-beda-cd7310b4f44c.png)


<b>DDL </b>


```sql
create external table address (AddressID int, AddressLine1 string, AddressLine2 string,City string,PostalCode string,rowguid string,ModifiedDate string) 
row format delimited fields terminated by ';' 
stored as textfile 
location '/app/AdventureWorks/tables/address';
```

<hr>



> Consultar dados sobre Pessoas e “serviços” consumidos




> Criar uma tabela com a visão dos tipos de serviço/Aventura contratados agregados;




> Criar uma tabela com dados para seguimentação e analíse dos clients;

