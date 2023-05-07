hadoop fs -mkdir /app/AdventureWorks/address 
hadoop fs -mkdir /app/AdventureWorks/customer 
hadoop fs -mkdir /app/AdventureWorks/customeraddress 
hadoop fs -mkdir /app/AdventureWorks/product 
hadoop fs -mkdir /app/AdventureWorks/productcategory 
hadoop fs -mkdir /app/AdventureWorks/productmodel 
hadoop fs -mkdir /app/AdventureWorks/productdescription 
hadoop fs -mkdir /app/AdventureWorks/productmodeldescription 
hadoop fs -mkdir /app/AdventureWorks/salesorderdetail 
hadoop fs -mkdir /app/AdventureWorks/salesorderhead 
hadoop fs -put ./address.csv /app/AdventureWorks/address 
hadoop fs -put ./customer.csv /app/AdventureWorks/customer 
hadoop fs -put ./customeraddress.csv /app/AdventureWorks/customeraddress 
hadoop fs -put ./product.csv /app/AdventureWorks/product
hadoop fs -put ./productcategory.csv /app/AdventureWorks/productcategory 
hadoop fs -put ./productmodel.csv /app/AdventureWorks/productmodel 
hadoop fs -put ./productdescription.csv /app/AdventureWorks/productdescription 
hadoop fs -put ./productmodeldescription.csv /app/AdventureWorks/productmodeldescription
hadoop fs -put ./salesorderdetail.csv /app/AdventureWorks/salesorderdetail 
hadoop fs -put ./salesorderhead.csv /app/AdventureWorks/salesorderhead