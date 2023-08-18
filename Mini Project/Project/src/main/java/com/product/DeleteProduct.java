package com.product;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import com.connection.DatabaseConnection;

@WebServlet("/DeleteProduct")
public class DeleteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String prodId = request.getParameter("prodId");
		HttpSession hs=request.getSession();
		try {
			int deleteProduct = DatabaseConnection.insertUpdateFromSqlQuery("delete from product_details where prod_id='" + prodId + "'");
			if (deleteProduct > 0) {
				String message="Product deleted successfully.";
				hs.setAttribute("delete", message);
				response.sendRedirect("update-product.jsp");
			} else {
				response.sendRedirect("update-product.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}