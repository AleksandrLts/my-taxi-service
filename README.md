# Taxi-service
>A simple implementation of Taxi Service where you can authenticate / register new driver account , manage manufacturers, cars and drivers (CRUD operations).
## Features
* Authentication 
* View all cars, drivers, manufacturers
* View all cars for current driver
* Add and delete cars
* Add and delete drivers
* Add and delete manufacturers
## How to run?
* Clone this remote repository to your local repository : <code>git clone [https://github.com/AleksandrLts/my-taxi-service.git](https://github.com/AleksandrLts/my-taxi-service.git)</code>;
* Run the SQL script located in <code>src/main/resources/init_db.sql</code> to initialize the database;
* Update src/main/java/taxi/util/ConnectionUtil.java with your database connection information;
* Build the project using Maven command: <code>mvn clean install</code>;
* Deploy the generated WAR file to servlet container such as Tomcat
* Enjoy!
## Project Structure
* Controller:
    * Car:
       * AddCarController - create new car 
       * AddDriverToCarController - add driver to car
       * DeleteCarController - delete car
       * GetAllCarsController - get all cars
       * GetCarsForDriverController - get cars for current driver
    * Driver:
        * AddDriverController - create new driver
        * DeleteDriverController - delete driver
        * GetAllDriversController - get all drivers
    * Manufacturer:
        * AddManufacturerController - create new manufacturer
        * DeleteManufacturerController - delete manufacturer
        * GetAllManufacturers - get all manufacturers
    * IndexController - home page
    * LoginController - authenticate the driver
    * LogoutController - logout the current driver
* DAO: 
    * CarDaoImpl - handler of Car model to DB
    * DriverDaoImpl - handler of Driver model to DB
    * ManufacturerDaoImpl - handler of Manufacturer model to DB
* Exception (custom exceptions): 
    * AuthenticationException
    * DataProcessingException  
* Lib (annotations with injector implementation)
* Model:
    * Car model
    * Driver model
    * Manufacturer model
* Service (handling all business logic):
    * AuthenticationServiceImpl
    * CarServiceImpl
    * DriverServiceImpl
    * ManufacturerServiceImpl
* Util:
    * ConnectionUtil - for instance connection to DB
* web/filter:
    * AuthenticationFilter - class for handle Authentication process
* Resources : configuration files and database scripts
* Webapp : web resources(JSP files, configuration file - web.xml)
## Used technologies
* JDK <code>17</code>
* Apache Maven <code>4.0.0</code>
* JDBC <code>4.2</code>
* MySQL <code>8.0.22</code>
* Java Servlets <code>4.0.1</code>
* JSTL <code>1.2</code>
* Apache Tomcat <code>9.0.73</code>
