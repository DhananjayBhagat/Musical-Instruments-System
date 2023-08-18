<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<html>
<head>
<title>Musical Instrument System</title>
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
<link href="assets/css/style.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' 	rel='stylesheet' type='text/css' />
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
				int prod_rate = 0;
				String prod_id=null;
				String custId = request.getParameter("custId");
				String pname = request.getParameter("pname");
				ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from product_details where prod_name='" + pname + "'");
				while (resultset.next()) {
					prod_rate = resultset.getInt("prod_rate");
					prod_id=resultset.getString("prod_id");
				}
			%>
			<form action="CreateSales" method="post">
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
												<th>Product Id</th>
												<th>Product Name</th>
												<th>Product Rate</th>
												<th>Quantity</th>
												<th>Total Amount</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><input class="form-control" type="text"	value="<%=custId%>" name="custId" /></td>
												<td><input class="form-control" type="text"	value="<%=prod_id%>" name="prod_id" /></td>
												<td><input class="form-control" type="text"	name="pname" value="<%=pname%>" /></td>
												<td><input class="form-control" type="text" name="prate" value="<%=prod_rate%>" id="prate" /></td>
												<td><input class="form-control" type="text"	name="pquantity" id="pquantity" onkeyup="myFunction()" /></td>
												<td><input class="form-control" type="text"	name="totalAmount" id="totalAmount" value="" /></td>
												<td><input type="submit" value="Add Sales"	class="btn btn-info"></td>
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
	<script src="assets/js/jquery-1.10.2.js"></script>
	<script src="assets/js/bootstrap.js"></script>
	<script src="assets/js/dataTables/jquery.dataTables.js"></script>
	<script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
	<script src="assets/js/custom.js"></script>
		<script type="text/javascript">
		function myFunction(vatid) {			
			var myBox2 = parseFloat(document.getElementById('prate').value);			
			var myBox1 = parseFloat(document.getElementById('pquantity').value);
			var result = document.getElementById('totalAmount');
			var myResult =  myBox2 * myBox1;
			result.value = myResult;			
			document.getElementById("totalAmount").value = myResult;
			}
	</script>
</body>
<%	} else {
			response.sendRedirect("index.jsp");
		}
	%>
</html>