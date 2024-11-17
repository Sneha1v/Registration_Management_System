package ums;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
@WebServlet("/update")
public class UpdateServlet1 extends HttpServlet{
@Override
public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
	int id=Integer.parseInt(req.getParameter("id"));
	
	String name=req.getParameter("name");
	String email=req.getParameter("email");
	Long phone=Long.parseLong(req.getParameter("phone"));
	String password=req.getParameter("password");
	
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ums", "root", "root");
		PreparedStatement ps=con.prepareStatement("update user set name=? , email=?, phone=?,password=? where id=?");
		
		
		ps.setString(1, name);
		ps.setString(2, email);
		ps.setLong(3, phone);
		ps.setString(4, password);
		ps.setInt(5, id);
		
		int row=ps.executeUpdate();
		
		if(row==1) {
			res.getWriter().write("<html><body><h1>Update Successfully</h1></body><html>");
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			rd.include(req, res);
		}
			
			
		
		ps.close();
		con.close();
		
		
		
		
	} catch (ClassNotFoundException | SQLException e) {
		
		e.printStackTrace();
	}
}
}
