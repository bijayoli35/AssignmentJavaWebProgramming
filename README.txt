How to run these web applications?
    All the programs run in Java Web Server, We can use tomcat server module for this. I prefered XAMPP Control
    Panel which provides necessary setup (MySQL, Apache, tomcat) to run these applications.

        prerequisite: XAMPP Control Panel

        1) Bracket Checker
            -Keep the folder with web application files under C:\xampp\tomcat\webapps\
            -Open XAMPP Control Panel
            -Start tomcat
            -Run http://localhost:8080/BracketsChecker/index.jsp in web browser

        2)  Calculator
            -Keep the folder with web application files under C:\xampp\tomcat\webapps\
            -Open XAMPP Control Panel
            -Start tomcat
            -Run http://localhost:8080/Calculator/calculator.jsp in your web browser

        3) Login Web Application
            -Keep the folder with web application files under C:\xampp\tomcat\webapps\
            -Open XAMPP Control Panel
            -start MySQL, Apache
                we need to create database as below:
                        --database name: mydatabase
                        --table: Login
                        --create 4 column with username, password, firstname, lastname
                        --add data in username, password, firstname, lastname
            -Start tomcat
            -Run http://localhost:8080/Login/index.jsp in web browser

                    

        
