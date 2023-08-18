<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<html>
<head>
<title>Musical Instruments System</title>
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<link href="assets/css/style.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
<%	if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="content-wrapper">
		<div class="container">
			<div class="row pad-botm">
				<div class="col-md-12">
					<h4 class="header-line">Update Product</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<img src="assets/img/musical-instruments.jpg" style="width: 550px;"></img>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="panel panel-danger">
						<div class="panel-heading">Update Musical Product</div>
						<div class="panel-body">
							<form role="form" action="update-product-info-process.jsp" method="post">
								<%
									String prodId = request.getParameter("prodId");
									ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from product_details where prod_id='" + prodId + "'");
									while (rs.next()) {
								%>
								<div class="form-group">
									<label>Product Id</label> <input class="form-control"
										type="text" name="pid" value="<%=rs.getString("prod_id") %>" readonly/>
								</div>
								<div class="form-group">
									<label>Product Name</label> <input class="form-control"
										type="text" name="pname" value="<%=rs.getString("prod_name") %>"  />
								</div>
								<div class="form-group">
									<label>Vendor Id</label> <input class="form-control"
										type="text" name="" value="<%=rs.getString("vendor_id") %>"  readonly/>
								</div>
								<div class="form-group">
									<label>Select Vendor Id To Change</label> <select class="form-control"
										name="vid">
										<option>Select</option>
										<%	String vendorId = null;
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
									<label>Product Quantity</label> <input class="form-control"
										type="text" name="pquantity" value="<%=rs.getString("prod_qty") %>" />
								</div>
								<div class="form-group">
									<label>Single Product Rate</label> <input class="form-control"
										type="text" name="pprice" value="<%=rs.getString("prod_rate") %>" />
								</div>
								<button type="submit" class="btn btn-info">Update
									Product</button>
								<button type="reset" class="btn btn-danger">Reset</button>
								<%
									}
								%>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="assets/js/jquery-1.10.2.js"></script>
	<script src="assets/js/bootstrap.js"></script>
	<script src="assets/js/custom.js"></script>
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})
				(		window,
						document,
						'script',
						'../../../../../../www.google-analytics.com/analytics.js',
						'ga');
		ga('create', 'UA-58127580-1', 'auto');
		ga('send', 'pageview');
	</script>
</body>
<%		} else {
			response.sendRedirect("index.jsp");
		}	%>
		</html>
