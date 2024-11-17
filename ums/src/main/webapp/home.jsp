<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>

<style>
    body {
        font-family: Arial, sans-serif;
      
       background-color:#89CFF0;
        margin: 0;
        padding: 20px;
    }

    h1 {
        text-align: center;
        
        margin-bottom: 20px;
       
          color:#011F5B;
          
    }

    table {
        width: 100%;
        max-width: 800px;
        margin: 0 auto;
        border-collapse: collapse;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        background: #fff;
       
    }

    table th, table td {
        padding: 12px;
        text-align: center;
        border: 1px solid #ddd;
        font-size: 16px;
    }

    table th {
       
        color: white;
        text-transform: uppercase;
         background:#00CED1;
    }

    table tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    table tr:hover {
        background-color: #f1f1f1;
    }

    a button {
        padding: 8px 12px;
        border: none;
        border-radius: 5px;
        font-size: 14px;
        cursor: pointer;
        transition: background 0.3s ease;
    }

    a button:hover {
        opacity: 0.8;
    }

    a button:first-of-type {
        background: #dc3545; /* Delete button color */
        color: white;
    }

    a button:first-of-type:hover {
        background: #b02a37;
    }

    a button:last-of-type {
       /* Update button color */
        background:#00CED1;
        color: white;
    }

    a button:last-of-type:hover {
        background: #218838;
    }

    @media (max-width: 768px) {
        table {
            font-size: 14px;
        }

        table th, table td {
            padding: 8px;
        }

        a button {
            font-size: 12px;
            padding: 6px 10px;
        }
    }
</style>


</head>
<body>
	<h1>Home Page</h1>
	<table>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Password</th>
			<th>Action</th>
			<th>Update</th>
		</tr>
		<%
			ResultSet rs = (ResultSet) request.getAttribute("rs");
			while(rs.next()){
		%>
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><a href="delete?id=<%=rs.getString(1) %>"><button>Delete</button></a></td>
			<td><a href="updatepage?id=<%=rs.getString(1) %>"><button>Update</button></a></td>
		</tr>
		<%} %>
	</table>
	
	
</body>
</html>