<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<html>
<head>
<title>Musical Instruments System</title>
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<link href="assets/js/dataTables/dataTables.bootstrap.css"	rel="stylesheet" />
<link href="assets/css/style.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<%	if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
	%>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="content-wrapper">
		<div class="container-fluid">
			<div class="row pad-botm">
				<div class="col-md-12">
					<h4 class="header-line">View Vendors</h4>
				</div>
			</div>
			<%	String success = (String) session.getAttribute("success");
				if (success != null) {
				session.removeAttribute("success");
			%>
			<div class="alert alert-info" id="info">Vendor updated
				successfully.</div>
			<%
				}
			%>			
			<%	String delete = (String) session.getAttribute("delete");
				if (delete != null) {
				session.removeAttribute("delete");
			%>
			<div class="alert alert-danger" id="danger">Vendor deleted
				successfully.</div>
			<%	}
			%>			
			<div class="row">
				<div class="col-md-12">
					<!-- Advanced Tables -->
					<div class="panel panel-default">
						<div class="panel-heading">View Vendors</div>
						<div class="panel-body">
							<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover" id="dataTables-example">
									<thead>
										<tr>
											<th>Vendor Id</th>
											<th>Vendor Name</th>
											<th>Mobile</th>
											<th>Email Id</th>
											<th>Address</th>
											<th>Created At</th>
											<th>Updated At</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<%
											ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from vendor");
											while (resultset.next()) {
										%>
										<tr class="odd gradeX">
											<td><%=resultset.getString("vendor_id")%></td>
											<td><%=resultset.getString("vendor_name")%></td>
											<td><%=resultset.getString("contact")%></td>
											<td class="center"><%=resultset.getString("email")%></td>
											<td class="center" style="width:150px;"><%=resultset.getString("address")%></td>
											<td class="center"><%=resultset.getString("created_at")%></td>
											<td class="center"><%=resultset.getString("updated_at")%></td>
											<td><a href="update-vendor-info.jsp?vid=<%=resultset.getString("vendor_id")%>" class="btn btn-info">Update</a>|<a
												href="DeleteVendor?vid=<%=resultset.getString("vendor_id")%>" class="btn btn-danger">Delete</a></td>
										</tr>
										<%
											}
										%>

									</tbody>
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
<%		} else {
			response.sendRedirect("index.jsp");
		}
	%>
</html>