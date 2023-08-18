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
					<h4 class="header-line">Update Vendor</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<img src="assets/img/musical-instruments.jpg" style="width: 550px;"></img>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="panel panel-default">
						<div class="panel-heading">Update Vendor</div>
						<div class="panel-body">
							<form role="form" action="update-vendor-info-process.jsp" method="post">
								<%	String vid = request.getParameter("vid");
									ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from vendor where vendor_id='" + vid + "'");
									while (resultset.next()) {
								%>
								<div class="form-group">
									<label>Vendor Id</label> <input class="form-control" type="text" name="vid" value="<%=resultset.getString(1)%>" readonly />
								</div>
								<div class="form-group">
									<label>Vendor Name</label> <input class="form-control" type="text" name="vname" value="<%=resultset.getString(2)%>" />
								</div>
								<div class="form-group">
									<label>Mobile No</label> <input class="form-control" type="text" name="mobile" value="<%=resultset.getString(3)%>"/>
								</div>
								<div class="form-group">
									<label>Email Id</label> <input class="form-control" type="text"	name="email" value="<%=resultset.getString(4)%>"/>
								</div>
								<div class="form-group">
									<label>Address</label> <input class="form-control" type="text"	name="address" value="<%=resultset.getString(5)%>"/>
								</div>
								<button type="submit" class="btn btn-primary">Update Vendor</button>
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