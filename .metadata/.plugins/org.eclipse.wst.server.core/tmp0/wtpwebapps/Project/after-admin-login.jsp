<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<html>
<head>
<title>Musical Instrument System</title>
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<link href="assets/css/style.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
<% if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {	%>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="content-wrapper">
		<div class="container">
			<div class="row pad-botm">
				<div class="col-md-12">
					<h4 class="header-line">ADMIN DASHBOARD</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="alert alert-info back-widget-set text-center">
						<i class="fa fa-history fa-5x"></i>
						<%	int products=0;
							ResultSet resultsetProduct=DatabaseConnection.getResultFromSqlQuery("select count(*) from product_details");
							while(resultsetProduct.next()){
								products=resultsetProduct.getInt(1);
							}	%>
						<h3><%=products %></h3>
						Total Products
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="alert alert-success back-widget-set text-center">
						<i class="fa fa-bars fa-5x"></i>
						<%	int customer=0;
							ResultSet resultsetCustomer=DatabaseConnection.getResultFromSqlQuery("select count(*) from customer");
							while(resultsetCustomer.next()){
								customer=resultsetCustomer.getInt(1);
							} %>
						<h3><%=customer %></h3>
						Total Customers
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="alert alert-warning back-widget-set text-center">
						<i class="fa fa-recycle fa-5x"></i>
						<%	int vendor=0;
							ResultSet resultsetVendor=DatabaseConnection.getResultFromSqlQuery("select count(*) from vendor");
							while(resultsetVendor.next()){
								vendor=resultsetVendor.getInt(1);
							}	%>
						<h3><%=vendor %></h3>
						Total Vendors
					</div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-6">
					<div class="alert alert-danger back-widget-set text-center">
						<i class="fa fa-briefcase fa-5x"></i>
						<%
							int shops=0;
							ResultSet resultsetShops=DatabaseConnection.getResultFromSqlQuery("select count(*) from shop_registration");
							while(resultsetShops.next()){
								shops=resultsetShops.getInt(1);
							}	%>
						<h3><%=shops %></h3>
						Total Shops
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="assets/js/jquery-1.10.2.js"></script>
	<script src="assets/js/bootstrap.js"></script>
	<script src="assets/js/custom.js"></script>
</body>
<%} 
	%>
</html>