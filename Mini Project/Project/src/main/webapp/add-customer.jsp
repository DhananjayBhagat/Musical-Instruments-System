<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<html>
<head>
	<title>Musical Instruments System</title>
	<link href="assets/css/bootstrap.css" rel="stylesheet">
	<link href="assets/css/font-awesome.css" rel="stylesheet">
	<link href="assets/css/style.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="content-wrapper">
		<div class="container">
			<div class="row pad-botm">
				<div class="col-md-12">
					<h4 class="header-line">Add Customer</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<img src="assets/img/musical-instruments.jpg" style="width: 550px;"></img>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="panel panel-info">
						<div class="panel-heading">Add Customer</div>
						<div class="panel-body">
							<form role="form" action="AddCustomer" method="post">
								<div class="form-group"><label>Customer Name</label>
									<input class="form-control" type="text" name="cname" />
								</div>
								<div class="form-group"><label>Mobile No</label>
									<input class="form-control" type="text" name="mobile" />
								</div>
								<div class="form-group"><label>Email Id</label>
									<input class="form-control" type="text" name="email" />
								</div>
								<div class="form-group"><label>Address</label>
									<input class="form-control" type="text" name="address" />
								</div>
								<button type="submit" class="btn btn-info">Add Customer</button>
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
<script type="text/javascript">
	$(function() {
		$('#danger').delay(1500).show().fadeOut('slow');
	});
</script>
</html>