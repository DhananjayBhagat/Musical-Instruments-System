package com.shops;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import com.connection.DatabaseConnection;

@WebServlet("/DeleteShops")
public class DeleteShops extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid = request.getParameter("sid");
		HttpSession hs=request.getSession();
		try {
			int deleteShop = DatabaseConnection.insertUpdateFromSqlQuery("delete from shop_registration where shop_id='" + sid + "'");
			if (deleteShop > 0) {
				String message="Shop deleted successfully.";
				hs.setAttribute("delete", message);
				response.sendRedirect("view-shops.jsp");
			} else {
				response.sendRedirect("view-shops.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}