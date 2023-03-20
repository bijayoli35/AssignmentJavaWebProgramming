<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>  
<head>  
    <title>Java Web login system</title>  
    <link rel = "stylesheet" type = "text/css" href = "styles.css">   
</head>  
<body>  
    <div id = "frm">  
        <h1>Login</h1>  
        <form action="LoginServlet.jsp" method="post">  
            <p>  
                <label> UserName: </label>  
                <input type = "text" id ="user" name  = "username" />  
            </p>  
            <p>  
                <label> Password: </label>  
                <input type = "password" id ="pass" name  = "password" />  
            </p>  
            <p>     
                <input type =  "submit" id = "btn" value = "Login" />  
            </p>
        </form>
    </div>
</body>     
</html>

