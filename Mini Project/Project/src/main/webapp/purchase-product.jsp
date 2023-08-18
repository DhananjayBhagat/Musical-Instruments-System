<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<html>
<head>
<title>Musical Instrument System</title>
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<link href="assets/css/style.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<%	if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {	%>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="content-wrapper">
		<div class="container">
			<div class="row pad-botm">
				<div class="col-md-12">
					<h4 class="header-line">Purchase Product</h4>
				</div>
			</div>
			<%	String success = (String) session.getAttribute("purchase");
				if (success != null) {
				session.removeAttribute("purchase");
			%>
			<div class="alert alert-info" id="info">Purchase Product
				successfully.</div>
			<%	}	%>			
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="panel panel-info">
						<div class="panel-heading">Purchase Product</div>
						<div class="panel-body">
							<form role="form" action="PurchaseProduct" method="post">
								<div class="form-group">
									<label>Vendor Id</label> 
									<select class="form-control" name="vendorId">
										<option>Select Vendor Id</option>
										<%	ResultSet resultVendorId = DatabaseConnection.getResultFromSqlQuery("select * from vendor");
											while (resultVendorId.next()) {
										%>
										<option><%=resultVendorId.getString("vendor_id")%></option>
										<% } %>
									</select>
								</div>
								<div class="form-group">
									<label>Product Id</label> 
									<select class="form-control" name="productId">
										<option>Select Product Id</option>
										<%	ResultSet resultProductId = DatabaseConnection.getResultFromSqlQuery("select * from product_details");
										while (resultProductId.next()) {
										%>
										<option><%=resultProductId.getString("prod_id")%></option>
										<%
											}
										%>
									</select>
								</div>
								<div class="form-group">
									<label>Enter Order Quantity</label> <input class="form-control"
										type="text" name="orderQuantity" />
								</div>
								<button type="submit" class="btn btn-info">Add Purchase	</button>
								<button type="reset" class="btn btn-danger">Reset</button>
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<img src="assets/img/musical-instruments.jpg" style="width: 550px;"></img>
				</div>
			</div>
		</div>
	</div>
	<script src="assets/js/jquery-1.10.2.js"></script>
	<script src="assets/js/bootstrap.js"></script>
	<script src="assets/js/custom.js"></script>
</body>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#info').delay(1500).show().fadeOut('slow');
	});
</script>
<script type="text/javascript">
	$(function() {
		$('#danger').delay(1500).show().fadeOut('slow');
	});
</script>
<%	} else {
			response.sendRedirect("index.jsp");
		}
	%>
</html>