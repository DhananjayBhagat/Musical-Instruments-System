<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<html>
<head>
<title>Musical Instruments System</title>
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<link href="assets/css/style.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans'rel='stylesheet' type='text/css' />
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<%	if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {	%>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="content-wrapper">
		<div class="container">
			<div class="row pad-botm">
				<div class="col-md-12">
					<h4 class="header-line">Add Product</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<img src="assets/img/musical-instruments.jpg" style="width: 550px;"></img>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="panel panel-danger">
						<div class="panel-heading">Add Musical Product</div>
						<div class="panel-body">
							<%
								String product = (String) session.getAttribute("add-product");
								if (product != null) {
								session.removeAttribute("add-product");
							%>
							<div class="alert alert-info" id="info">Product Added Successfully.</div>
							<%
								}
							%>
							<form role="form" action="AddProduct" method="post">
								<div class="form-group">
									<label>Product Name</label> <input class="form-control"	type="text" name="pname"/>
								</div>
								<div class="form-group">
									<label>Select Vendor Id</label> <select class="form-control" name="vid">
									<option>Select</option>
										<%
											String vendorId = null;
											ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from vendor");
											while (resultset.next()) {
											vendorId = resultset.getString("vendor_id");
										%>
											<option><%=vendorId%></option>
										<%
											}
										%>
									</select>
								</div>
								<div class="form-group">
									<label>Product Quantity</label> <input class="form-control"	type="text" name="pquantity"/>
								</div>
								<div class="form-group">
									<label>Single Product Rate</label> <input class="form-control" type="text" name="pprice"/>
								</div>
								<button type="submit" class="btn btn-info">Add Product</button>
								<button type="reset" class="btn btn-danger">Reset</button>
							</form>
						</div>
					</div>
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
<%} else {
			response.sendRedirect("index.jsp");
		}
	%>
</html>