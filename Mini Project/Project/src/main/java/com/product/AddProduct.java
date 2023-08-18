package com.product;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import com.connection.DatabaseConnection;

@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid=DatabaseConnection.generateProductId();
		String pname=request.getParameter("pname");
		String vid=request.getParameter("vid");
		String pquantity=request.getParameter("pquantity");
		String pprice=request.getParameter("pprice");
		HttpSession hs=request.getSession();		
		try {
			int addProduct=DatabaseConnection.insertUpdateFromSqlQuery("insert into product_details(prod_id,prod_name,prod_qty,prod_rate,vendor_id)values('"+pid+"','"+pname+"','"+pquantity+"','"+pprice+"','"+vid+"')");
			if(addProduct>0) {
				String message="Product Added Successfully.";
				hs.setAttribute("add-product", message);
				response.sendRedirect("add-product.jsp");	
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}