### When we are working with JSP file we need to add the Jasper dependency to the pom file. 

## When we are using H2 database
### 1. we need to enable it as it is the in-memory database. 
for that, go to application.properties and set spring.h2.console.enable=true.

### 2. Also, we need to mention the platform we are working with. 
we can do it by spring.datasource.platform=h2

### 3. we have to mention the URL of the database
we can do it by setting spring.datasource.url=jdbc:h2:mem:database_name(ex:alienData)

We can access the H2 database by going to localhost:8080/h2-console url

### we can add load data into the h2 database during runtime using data.sql file