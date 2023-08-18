<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<html>
<head>
<title>Musical Instrument System</title>
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<link href="assets/js/dataTables/dataTables.bootstrap.css"	rel="stylesheet" />
<link href="assets/css/style.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans'rel='stylesheet' type='text/css' />
</head>
<body>
<%	if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="content-wrapper">
		<div class="container">
			<div class="row pad-botm">
				<div class="col-md-12">
					<h4 class="header-line">View Purchase Product</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<!--   Basic Table  -->
					<div class="panel panel-default">
						<div class="panel-heading">View Purchase Product</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th>Id</th>
											<th>Product Name</th>
											<th>Vendor Id</th>
											<th>Product Quantity</th>
											<th>Single Product Rate</th>
											<th>Total Price</th>
										</tr>
									</thead>
									<%	int count=1;
										int totalCost=0;
										int purchaseQuantity=0;
										int singleProductCost=0;
										ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select product_details.prod_name,purchase.vendor_id,purchase.order_qty,product_details.prod_rate from product_details,purchase where product_details.prod_id=purchase.prod_id");
										while (resultset.next()) {
											purchaseQuantity=resultset.getInt(3);
											singleProductCost=resultset.getInt(4);
											totalCost=purchaseQuantity*singleProductCost;
									%>
									<tbody>
										<tr>
											<td><%=count++ %></td>
											<td><%=resultset.getString(1) %></td>
											<td><%=resultset.getString(2) %></td>
											<td><%=resultset.getInt(3) %></td>
											<td><%=resultset.getInt(4) %></td>
											<td><font color="green"><strong><%=totalCost%></strong></font></td>
										</tr>
									</tbody>
									<%		}
									%>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="assets/js/jquery-1.10.2.js"></script>
	<script src="assets/js/bootstrap.js"></script>
	<script src="assets/js/dataTables/jquery.dataTables.js"></script>
	<script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
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