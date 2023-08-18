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
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<%	if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="content-wrapper">
		<div class="container">
			<div class="row pad-botm">
				<div class="col-md-12">
					<h4 class="header-line">Sales Data</h4>
				</div>
			</div>
			<%
				String quantity = (String) session.getAttribute("quantity-short");
				if (quantity != null) {
				session.removeAttribute("quantity-short");
			%>
			<div class="alert alert-danger" id="danger">Product quantity is not enough to sales.</div>
			<%	}	%>			
			<%
				String success = (String) session.getAttribute("sale");
				if (success != null) {
				session.removeAttribute("sale");
			%>
			<div class="alert alert-info" id="info">Sales data added successfully.</div>
			<%	}	%>			
			<form action="sales-data.jsp" method="post">
				<div class="form-row">
					<div class="form-group col-md-3"></div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">Sales</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>Select Customer Id</th>
												<th>Product Name</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><select class="form-control" name="custId"
													style="width: 200px">
														<option>Select Customer Id</option>
														<%
															ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from customer");
														while (resultset.next()) {
														%>
														<option><%=resultset.getString("c_id")%></option>
														<%
															}
														%>
												</select></td>
												<td><select class="form-control" name="pname"
													style="width: 200px">
														<option>Select Product Name</option>
														<%
															ResultSet resultProduct = DatabaseConnection.getResultFromSqlQuery("select * from product_details");
														while (resultProduct.next()) {
														%>
														<option><%=resultProduct.getString("prod_name")%></option>
														<%
															}
														%>
												</select></td>
												<td><input type="submit" value="Search"
													class="btn btn-info"></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
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