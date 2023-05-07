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




> Carregar no HDFS os arquivos do diretório 





> Criar tabelas externas com os dados no Hive




> Consultar dados sobre Pessoas e “serviços” consumidos




> Criar uma tabela com a visão dos tipos de serviço/Aventura contratados agregados;




> Criar uma tabela com dados para seguimentação e analíse dos clients;

