package ums;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet("/delete")
public class DeleteServlet extends HttpServlet{
@Override
public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
	
	
	int id=Integer.parseInt(req.getParameter("id"));
	
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ums", "root", "root");
		PreparedStatement ps=con.prepareStatement("delete from user where id=?");
		ps.setInt(1, id);
		int row=ps.executeUpdate();
		if(row==1) {
			//System.out.println("Deleted Succesfully");
			PrintWriter pw=res.getWriter();
			pw.write("<html><body><h1>Deleted Successfuly....</h1></body></html>");
			
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/ums", "root", "root");
			PreparedStatement ps1=con1.prepareStatement("Select * from user");
			ResultSet rs=ps1.executeQuery();
			req.setAttribute("rs",rs );
			
			
			RequestDispatcher rd=req.getRequestDispatcher("home.jsp");
			rd.include(req, res);
		}
		
		
		else {
			//System.out.println("Invalid user id");
			PrintWriter pw=res.getWriter();
			pw.write("<html><body><h1>Invalid User id...</h1></body></html>");
		}
		
		
		
	} catch (ClassNotFoundException | SQLException e) {
		
		e.printStackTrace();
	}
}
}
