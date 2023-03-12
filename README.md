
# Java web Crud User

A crud project to learn the basic of java web


## Topics

[Configuration of mysql](#STEP-1) 
<br/>
[Import the project to eclipse](#STEP-5)
<br/>
[Setting the variable enviroment](#STEP-9)
<br/>
[Screenshot of the project](#Demonstration)



## Configuration guide 

after download the project you need configurate some things(the guide of installation is thinkable for IDE eclipse, so i can't help you with other IDE or text editor like vs code)

* download and install eclipse: https://shp.icu/eclipsedownload...

* download and install wildfly 25 on eclipse: https://shp.icu/eclipse-wildfly-configuration...

* donload and install mysqlworkbench:  https://shp.icu/mysql-workbench-installation-guide

now follow the steps below:
#### STEP 1
* Open the MysqlOrkBench and create a mysql connection, after click on, put your password and enter on DB
![Mysqlconfiguration3](https://i.ibb.co/5ky4PMK/image.png)
#### STEP 2
*  Open MySQL Workbench and right-click on the left corner, as shown in the screenshot. Then click on "Create Schema".

![Mysqlconfiguration2](https://i.ibb.co/xYtV7c4/image.png)

#### STEP 3 
* Insert the name "shoeshappy" for the schema and apply it, as shown in the screenshot.

![Mysqlconfiguration3](https://i.ibb.co/djLWtYR/image.png)

#### STEP 4
* First, click on your schema "shoeshappy". Then click on the top left corner to open an SQL file to execute queries. Paste the code below:
``` 
create table `cliente` (
	matricula INT(4) NOT NULL AUTO_INCREMENT,
	nome VARCHAR(120) NOT NULL,
	endereco VARCHAR(120) NOT NULL,
	cidade VARCHAR(120) NOT NULL,
	estado VARCHAR(120) NOT NULL,
	modalidade VARCHAR(220) NOT NULL,
	PRIMARY KEY (matricula)

```
After that, click on the lightning icon to execute the query. We have now finished the MySQL Workbench configuration.
![Mysqlconfiguration4](https://i.ibb.co/z6hqcSZ/image.png)

#### STEP 5
* Now we will open the project in Eclipse and configure the MySQL connection. First, extract the downloaded project to a desired folder.
![Mysqlconfiguration5](https://i.ibb.co/QQPvM5V/image.png)

#### STEP 6 
* Click on "General", then "File System", and click "Next"
![Mysqlconfiguration6](https://i.ibb.co/Hn5sDz3/image.png)

#### STEP 7  
* Click on "Directory...", select the project folder, and click "Select Folder".
![Mysqlconfiguration7](https://i.ibb.co/Jr2b41y/image.png)


#### STEP 8 
* Select the checkbox next to the project name and click "Finish".
![Mysqlconfiguration8](https://i.ibb.co/8gB3Tyh/image.png)

#### STEP 9
* We have already imported the project. Now we will set the environment variables for the DB connection. To do that, expand the project, click on "src", "main", "java", and then "dao". Click to open "clienteDAO". The first item marked in red is the schema name, the second item is the MySQL user, and the last item is the MySQL password. Update them with your credentials.
![Mysqlconfiguration7](https://i.ibb.co/p4sg3j4/image.png)


### Run the project
* Right-click on the project, select "Run As", then "Run on Server", and use the WildFly 25 server mentioned before. The app will run and you can see it in action.
![Mysqlconfiguration8](https://i.ibb.co/cCvFk4V/image.png)

## Demonstration

* Client listing page
<br/>

![Demonstration1](https://i.ibb.co/fFfmpNV/Lista-de-Clientes.png)

* Add client and edit client page
<br/>

![Demonstration2](https://i.ibb.co/KFw5h1B/Adicionar-Editar.png)

