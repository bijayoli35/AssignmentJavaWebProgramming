<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.sql.*, javax.servlet.*, javax.servlet.http.*"%>

<!DOCTYPE html>
<html>
<head>
    <title>Login Servlet</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <link rel="stylesheet" type="text/css" href="pstyles.css">
 
</head>
<body>
<%
    // Get user input from the form
    String user = request.getParameter("username");
    String pass = request.getParameter("password");

    // Connect to the database
    Connection conn = null;
    String url = "jdbc:mysql://localhost:3306/";
    String dbName = "mydatabase";
    String driver = "com.mysql.jdbc.Driver";
    String userName = "root";
    String dbPassword = "";
    try {
        Class.forName(driver).newInstance();
        conn = DriverManager.getConnection(url + dbName, userName, dbPassword); 

        // Check if the user exists in the database
        PreparedStatement pst = conn.prepareStatement("SELECT * FROM login WHERE username=? AND password=?");
        pst.setString(1, user);
        pst.setString(2, pass);
        ResultSet rs = pst.executeQuery();
        if (rs.next()) {
            // If the user exists, retrieve their first name and last name from the database
            String firstName = rs.getString("firstname");
            String lastName = rs.getString("lastname");
            // Display a welcome message
%>
            <p>Welcome, <%= firstName %> <%= lastName %>!</p>
<%
        } else {
            // If the user does not exist, display an error message
%>
            <p>Sorry, you are not registered.</p>
<%
        }

    } catch (Exception e) {
        out.println(e);
    } finally {
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            out.println("Error closing database connection: " + e.getMessage());
        }
    }
%>

</body>
</html>
