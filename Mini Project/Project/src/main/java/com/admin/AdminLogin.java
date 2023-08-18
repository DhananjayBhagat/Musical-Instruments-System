package com.admin;
import java.io.IOException;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import com.connection.DatabaseConnection;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("uname");
		String upass=request.getParameter("upass");
		HttpSession hs=request.getSession();
		try {
			ResultSet resultset=DatabaseConnection.getResultFromSqlQuery("select * from tbladmin where uname='"+uname+"' and password='"+upass+"'");
			if(resultset.next()) {
				hs.setAttribute("uname", resultset.getString("uname"));
				response.sendRedirect("after-admin-login.jsp");
			}else {
				String message="Invalid credential, Please try again.";
				hs.setAttribute("fail", message);
				response.sendRedirect("index.jsp");				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}