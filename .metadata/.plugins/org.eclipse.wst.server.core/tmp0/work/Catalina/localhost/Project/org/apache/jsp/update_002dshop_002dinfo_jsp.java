/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.0.27
 * Generated at: 2023-03-22 13:48:03 UTC
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

public final class update_002dshop_002dinfo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<link href=\"assets/css/style.css\" rel=\"stylesheet\" />\r\n");
      out.write("<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
	if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	
      out.write('\r');
      out.write('\n');
      out.write('	');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("	<div class=\"content-wrapper\">\r\n");
      out.write("		<div class=\"container\">\r\n");
      out.write("			<div class=\"row pad-botm\">\r\n");
      out.write("				<div class=\"col-md-12\">\r\n");
      out.write("					<h4 class=\"header-line\">Update Shop</h4>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"row\">\r\n");
      out.write("				<div class=\"col-md-6 col-sm-6 col-xs-12\">\r\n");
      out.write("					<img src=\"assets/img/musical-instruments.jpg\" style=\"width: 550px;\"></img>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"col-md-6 col-sm-6 col-xs-12\">\r\n");
      out.write("					<div class=\"panel panel-primary\">\r\n");
      out.write("						<div class=\"panel-heading\">Update Shop</div>\r\n");
      out.write("						<div class=\"panel-body\">\r\n");
      out.write("							<form role=\"form\" action=\"update-shop-info-process.jsp\" method=\"post\">\r\n");
      out.write("								");
	String shopId = request.getParameter("shopId");
									ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from shop_registration where shop_id='" + shopId + "'");
									while (resultset.next()) {
								
      out.write("\r\n");
      out.write("								<div class=\"form-group\">\r\n");
      out.write("									<label>Shop Id</label> <input class=\"form-control\" type=\"text\" name=\"sid\" value=\"");
      out.print(resultset.getString(1));
      out.write("\" readonly/>\r\n");
      out.write("								</div>\r\n");
      out.write("								<div class=\"form-group\">\r\n");
      out.write("									<label>Shop Name</label> <input class=\"form-control\" type=\"text\" name=\"sname\" value=\"");
      out.print(resultset.getString(2));
      out.write("\" />\r\n");
      out.write("								</div>\r\n");
      out.write("								<div class=\"form-group\">\r\n");
      out.write("									<label>Mobile No</label> <input class=\"form-control\" type=\"text\" name=\"mobile\" value=\"");
      out.print(resultset.getString(3));
      out.write("\" />\r\n");
      out.write("								</div>\r\n");
      out.write("								<div class=\"form-group\">\r\n");
      out.write("									<label>Email Id</label> <input class=\"form-control\" type=\"text\"	name=\"email\" value=\"");
      out.print(resultset.getString(4));
      out.write("\" />\r\n");
      out.write("								</div>\r\n");
      out.write("								<div class=\"form-group\">\r\n");
      out.write("									<label>Address</label> <input class=\"form-control\" type=\"text\" name=\"address\" value=\"");
      out.print(resultset.getString(5));
      out.write("\" />\r\n");
      out.write("								</div>\r\n");
      out.write("								<button type=\"submit\" class=\"btn btn-info\">Update Shop</button>\r\n");
      out.write("								<button type=\"reset\" class=\"btn btn-danger\">Reset</button>\r\n");
      out.write("								");

									}
								
      out.write("\r\n");
      out.write("							</form>\r\n");
      out.write("						</div>\r\n");
      out.write("					</div>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("	<script src=\"assets/js/jquery-1.10.2.js\"></script>\r\n");
      out.write("	<script src=\"assets/js/bootstrap.js\"></script>\r\n");
      out.write("	<script src=\"assets/js/custom.js\"></script>\r\n");
      out.write("</body>\r\n");
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
