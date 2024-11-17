<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        //background-color: #f4f4f9;
        background-color:#89CFF0;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
       
    }

    h1 {
        //color: #007bff;
       // color:#00CED1;
        color: #011F5B;
        font-size: 2.5em;
        margin-bottom: 20px;
        text-transform: uppercase;
        letter-spacing: 2px;
    }

    form {
        background: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 400px;
        text-align: center;
    }

    form input {
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
        box-sizing: border-box;
    }

    form input:focus {
        border-color: #007bff;
        outline: none;
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    }

    form button {
        width: 100%;
        padding: 12px;
        margin-top: 20px;
        border: none;
        border-radius: 5px;
        //background: #007bff;
        background:#00CED1;
        color: #ffffff;
        font-size: 16px;
        cursor: pointer;
        transition: background 0.3s ease;
    }

    form button:hover {
        background: #0056b3;
    }

    @media (max-width: 768px) {
        h1 {
            font-size: 2em;
        }

        form {
            padding: 20px;
        }

        form input {
            font-size: 14px;
            padding: 10px;
        }

        form button {
            font-size: 14px;
            padding: 10px;
        }
    }
</style>

</head>
<body>
<h1>Update Page</h1>

<%

ResultSet rs=(ResultSet)request.getAttribute("rs");


%>

<form action="update">


<input type="text" value="<%= rs.getString(1) %>" name="id">
<input type="text" value="<%= rs.getString(2) %>" name="name">
<input type="text" value="<%= rs.getString(3) %>" name="email">
<input type="text" value="<%= rs.getString(4) %>" name="phone">
<input type="text" value="<%= rs.getString(5) %>" name="password">
<button type="submit">Update</button>


</form>
</body>
</html>
















