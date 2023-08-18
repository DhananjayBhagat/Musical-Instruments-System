/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.0.27
 * Generated at: 2023-03-17 11:20:52 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;
import java.sql.*;
import com.connection.*;

public final class update_002dproduct_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_packages.add("com.connection");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>Musical Instruments System</title>\r\n");
      out.write("<link href=\"assets/css/bootstrap.css\" rel=\"stylesheet\" />\r\n");
      out.write("<link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\" />\r\n");
      out.write("<link href=\"assets/js/dataTables/dataTables.bootstrap.css\" rel=\"stylesheet\" />\r\n");
      out.write("<link href=\"assets/css/style.css\" rel=\"stylesheet\" />\r\n");
      out.write("<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />\r\n");
      out.write("<script	src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
	if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	
      out.write('\r');
      out.write('\n');
      out.write('	');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("	<div class=\"content-wrapper\">\r\n");
      out.write("		<div class=\"container-fluid\">\r\n");
      out.write("			<div class=\"row pad-botm\">\r\n");
      out.write("				<div class=\"col-md-12\">\r\n");
      out.write("					<h4 class=\"header-line\">View Products</h4>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			");
	String success = (String) session.getAttribute("success");
				if (success != null) {
				session.removeAttribute("success");
			
      out.write("\r\n");
      out.write("			<div class=\"alert alert-info\" id=\"info\">Product updated	successfully.</div>\r\n");
      out.write("			");
	}
			
      out.write("			\r\n");
      out.write("			");
	String delete = (String) session.getAttribute("delete");
				if (delete != null) {
				session.removeAttribute("delete");
			
      out.write("\r\n");
      out.write("			<div class=\"alert alert-danger\" id=\"danger\">Product deleted	successfully.</div>\r\n");
      out.write("			");
	}
			
      out.write("\r\n");
      out.write("			<div class=\"row\">\r\n");
      out.write("				<div class=\"col-md-12\">\r\n");
      out.write("					<!-- Advanced Tables -->\r\n");
      out.write("					<div class=\"panel panel-default\">\r\n");
      out.write("						<div class=\"panel-heading\">View Products</div>\r\n");
      out.write("						<div class=\"panel-body\">\r\n");
      out.write("							<div class=\"table-responsive\">\r\n");
      out.write("								<table class=\"table table-striped table-bordered table-hover\" id=\"dataTables-example\">\r\n");
      out.write("									<thead>\r\n");
      out.write("										<tr>\r\n");
      out.write("											<th>Product Id</th>\r\n");
      out.write("											<th>Product Name</th>\r\n");
      out.write("											<th>Product Quantity</th>\r\n");
      out.write("											<th>Single Product Rate</th>\r\n");
      out.write("											<th>Vendor Id</th>\r\n");
      out.write("											<th>Created At</th>\r\n");
      out.write("											<th>Updated At</th>\r\n");
      out.write("											<th>Action</th>\r\n");
      out.write("										</tr>\r\n");
      out.write("									</thead>\r\n");
      out.write("									<tbody>\r\n");
      out.write("										");
 ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from product_details");
										while (resultset.next()) {
										
      out.write("\r\n");
      out.write("										<tr class=\"odd gradeX\">\r\n");
      out.write("											<td>");
      out.print(resultset.getString("prod_id"));
      out.write("</td>\r\n");
      out.write("											<td>");
      out.print(resultset.getString("prod_name"));
      out.write("</td>\r\n");
      out.write("											<td>");
      out.print(resultset.getString("prod_qty"));
      out.write("</td>\r\n");
      out.write("											<td class=\"center\">");
      out.print(resultset.getString("prod_rate"));
      out.write("</td>\r\n");
      out.write("											<td class=\"center\">");
      out.print(resultset.getString("vendor_id"));
      out.write("</td>\r\n");
      out.write("											<td class=\"center\">");
      out.print(resultset.getString("created_at"));
      out.write("</td>\r\n");
      out.write("											<td class=\"center\">");
      out.print(resultset.getString("updated_at"));
      out.write("</td>\r\n");
      out.write("											<td><a\r\n");
      out.write("												href=\"update-product-info.jsp?prodId=");
      out.print(resultset.getString("prod_id"));
      out.write("\"\r\n");
      out.write("												class=\"btn btn-info\">Update</a>||<a\r\n");
      out.write("												href=\"DeleteProduct?prodId=");
      out.print(resultset.getString("prod_id"));
      out.write("\"\r\n");
      out.write("												class=\"btn btn-danger\">Delete</a></td>\r\n");
      out.write("										</tr>\r\n");
      out.write("										");
		}
										
      out.write("\r\n");
      out.write("									</tbody>\r\n");
      out.write("								</table>\r\n");
      out.write("							</div>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("	<script src=\"assets/js/jquery-1.10.2.js\"></script>\r\n");
      out.write("	<script src=\"assets/js/bootstrap.js\"></script>\r\n");
      out.write("	<script src=\"assets/js/dataTables/jquery.dataTables.js\"></script>\r\n");
      out.write("	<script src=\"assets/js/dataTables/dataTables.bootstrap.js\"></script>\r\n");
      out.write("	<script src=\"assets/js/custom.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("<script src=\"http://code.jquery.com/jquery-1.10.1.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("	$(function() {\r\n");
      out.write("		$('#info').delay(1500).show().fadeOut('slow');\r\n");
      out.write("	});\r\n");
      out.write("</script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("	$(function() {\r\n");
      out.write("		$('#danger').delay(1500).show().fadeOut('slow');\r\n");
      out.write("	});\r\n");
      out.write("</script>\r\n");
	} else {
			response.sendRedirect("index.jsp");
		}	
      out.write("\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
