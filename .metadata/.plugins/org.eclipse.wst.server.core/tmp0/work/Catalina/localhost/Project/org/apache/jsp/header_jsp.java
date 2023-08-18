/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.0.27
 * Generated at: 2023-03-12 13:22:50 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
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

      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<div class=\"navbar navbar-inverse set-radius-zero\">\r\n");
      out.write("		<div class=\"container\">\r\n");
      out.write("			<div class=\"navbar-header\">\r\n");
      out.write("				<button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\"\r\n");
      out.write("					data-target=\".navbar-collapse\">\r\n");
      out.write("					<span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> <span\r\n");
      out.write("						class=\"icon-bar\"></span>\r\n");
      out.write("				</button>\r\n");
      out.write("				<h1 style=\"text-shadow: 2px 2px 4px #000000;\">Musical Instrument System</h1>\r\n");
      out.write("			</div>\r\n");
      out.write("			<div class=\"right-div\">\r\n");
      out.write("				<a href=\"logout.jsp\" class=\"btn btn-danger pull-right\">LOG ME OUT</a>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("	<section class=\"menu-section\">\r\n");
      out.write("		<div class=\"container\">\r\n");
      out.write("			<div class=\"row \">\r\n");
      out.write("				<div class=\"col-md-12\">\r\n");
      out.write("					<div class=\"navbar-collapse collapse \">\r\n");
      out.write("						<ul id=\"menu-top\" class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("							<li><a href=after-admin-login.jsp>Dashboard</a></li>\r\n");
      out.write("							<li><a href=\"#\" class=\"dropdown-toggle\" id=\"ddlmenuItem\" data-toggle=\"dropdown\">Product <i class=\"fa fa-angle-down\"></i></a>\r\n");
      out.write("								<ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"ddlmenuItem\">\r\n");
      out.write("									<li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"add-product.jsp\">Add Product</a></li>\r\n");
      out.write("									<li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"update-product.jsp\">Update Product</a></li>\r\n");
      out.write("								</ul></li>\r\n");
      out.write("							<li><a href=\"#\" class=\"dropdown-toggle\" id=\"ddlmenuItem\" data-toggle=\"dropdown\">Customer <i class=\"fa fa-angle-down\"></i></a>\r\n");
      out.write("								<ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"ddlmenuItem\">\r\n");
      out.write("									<li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"add-customer.jsp\">Add Customer</a></li>\r\n");
      out.write("									<li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"display-customer.jsp\">Update Customer</a></li>\r\n");
      out.write("								</ul></li>\r\n");
      out.write("							<li><a href=\"#\" class=\"dropdown-toggle\" id=\"ddlmenuItem\" data-toggle=\"dropdown\">Shop <i class=\"fa fa-angle-down\"></i></a>\r\n");
      out.write("								<ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"ddlmenuItem\">\r\n");
      out.write("									<li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"add-shop.jsp\">Add Shops</a></li>\r\n");
      out.write("									<li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"view-shops.jsp\">View Shops</a></li>\r\n");
      out.write("								</ul></li>\r\n");
      out.write("							<li><a href=\"#\" class=\"dropdown-toggle\" id=\"ddlmenuItem\" data-toggle=\"dropdown\">Purchase <i class=\"fa fa-angle-down\"></i></a>\r\n");
      out.write("								<ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"ddlmenuItem\">\r\n");
      out.write("									<li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"purchase-product.jsp\">Purchase Product</a></li>\r\n");
      out.write("									<li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"view-purchase-product.jsp\">View Purchase Product</a></li>\r\n");
      out.write("							</ul></li>\r\n");
      out.write("						<li><a href=\"sales.jsp\">Sales</a></li>\r\n");
      out.write("						<li><a href=\"#\" class=\"dropdown-toggle\" id=\"ddlmenuItem\" data-toggle=\"dropdown\">Vendor <i class=\"fa fa-angle-down\"></i></a>\r\n");
      out.write("							<ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"ddlmenuItem\">\r\n");
      out.write("								<li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"add-vendor.jsp\">Add Vendor</a></li>\r\n");
      out.write("								<li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"view-vendors.jsp\">View Vendors</a></li>\r\n");
      out.write("							</ul></li>\r\n");
      out.write("						<li><a href=\"#\" class=\"dropdown-toggle\" id=\"ddlmenuItem\" data-toggle=\"dropdown\">Reports <i class=\"fa fa-angle-down\"></i></a>\r\n");
      out.write("							<ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"ddlmenuItem\">\r\n");
      out.write("								<li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"daily-report.jsp\">Sales Report</a></li>\r\n");
      out.write("							</ul></li>\r\n");
      out.write("						<li><a href=\"\"><strong style=\"text-shadow: 2px 2px 4px #000000;\">");
      out.print(session.getAttribute("uname") );
      out.write("</strong></a></li>\r\n");
      out.write("					</ul>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("</section>");
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