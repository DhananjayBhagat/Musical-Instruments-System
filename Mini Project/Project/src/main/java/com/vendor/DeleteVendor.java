package com.vendor;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import com.connection.DatabaseConnection;

@WebServlet("/DeleteVendor")
public class DeleteVendor extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vid = request.getParameter("vid");
		HttpSession hs=request.getSession();
		try {
			int deleteVendor = DatabaseConnection.insertUpdateFromSqlQuery("delete from vendor where vendor_id='" + vid + "'");
			if (deleteVendor > 0) {
				String message="Vendor deleted successfully.";
				hs.setAttribute("delete", message);
				response.sendRedirect("view-vendors.jsp");
			} else {
				response.sendRedirect("view-vendors.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}