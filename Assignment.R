##Get the name of the top 10 best performing customers, and their value.
name_of_the_top_10_best_performing_customers
sort(unique(odbcListDrivers()[[1]])) 
zuka_database<- dbConnect(odbc::odbc(),
                          Driver = "ODBC Driver 17 for SQL Server",
                          Server= "zukademy.database.windows.net",
                          Database = "zukademy",
                          UID = "zuka@zukademy",
                          PWD = "123Drinks",
                          Port = 1433, 
                          timeout = 30) 


customer_details <- dbGetQuery(zuka_database, "select * from customer_details")
  product_table <-dbGetQuery(zuka_database, "select * from product_table")
  transaction_details <-dbGetQuery(zuka_database, "select *from transaction_details")
merge(customer_details,product_table,transaction_details)


## Plot the number of sales for each day.


## Which is the best performing branch in terms of value of sales.
best_performing_branch


##Get the average number of transactions per customer.
average_number_of_transactions_per_customer


##The fastest moving brand
  fastest_moving_brand <-product_table