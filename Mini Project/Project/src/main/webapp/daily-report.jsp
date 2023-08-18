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
<%	if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {	%>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="content-wrapper">
		<div class="container">
			<div class="row pad-botm">
				<div class="col-md-12">
					<h4 class="header-line">Sales Report</h4>
				</div>
			</div>
			<form action="" method="post">
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">Sales Report</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>Id</th>
												<th>Product Id</th>
												<th>Product Name</th>
												<th>Single Product Rate</th>
												<th>Quantity</th>
												<th>Total Amount</th>
												<th>Sales Date</th>
											</tr>
										</thead>
										<%	int count = 1;
											String sdate = request.getParameter("sdate");
											ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from sales");
											while (resultset.next()) {
										%>
										<tbody>
											<tr>
												<td><%=count++%></td>
												<td><%=resultset.getString("prod_id")%></td>
												<td><%=resultset.getString("prod_name")%></td>
												<td><%=resultset.getString("prod_rate")%></td>
												<td><%=resultset.getString("quantity")%></td>
												<td><%=resultset.getString("total_amt")%></td>
												<td><%=resultset.getString("created_at")%></td>
											</tr>
										</tbody>
										<%	}	%>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script src="assets/js/jquery-1.10.2.js"></script>
	<script src="assets/js/bootstrap.js"></script>
	<script src="assets/js/dataTables/jquery.dataTables.js"></script>
	<script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
	<script src="assets/js/custom.js"></script>
</body>
<%	} else {
			response.sendRedirect("index.jsp");
		}	%>
</html>