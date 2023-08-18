<html>
<head>
	<meta charset="utf-8" />
	<title>Musical Instrument System</title>
	<link href="assets/css/bootstrap.css" rel="stylesheet" />
	<link href="assets/css/font-awesome.css" rel="stylesheet" />
	<link href="assets/css/style.css" rel="stylesheet" />
	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<header>
		<div class="navbar navbar-inverse set-radius-zero">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<h1>Musical Instrument System</h1>
				</div>
			</div>
		</div>
	</header>
	<nav>
		<section class="menu-section">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="navbar-collapse collapse">
							<ul id="menu-top" class="nav navbar-nav navbar-right">
								<li><a href="index.jsp">Admin Login</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
	</nav>
	<main>
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<img src="assets/img/musical-instruments.jpg" style="width: 550px;"></img>
				</div>
				<div class="col-md-6">
					<div class="panel panel-info">
						<div class="panel-heading">Admin Login</div>
						<div class="panel-body">
							
							<form role="form" action="AdminLogin" method="post">
								<div class="form-group">
									<label>User Name</label> <input class="form-control" type="text" name="uname" />
								</div>
								<div class="form-group">
									<label>Password</label> <input class="form-control" type="password" name="upass" />
								</div>
								<button type="submit" class="btn btn-success">Login</button>
								<button type="reset" class="btn btn-danger">Reset</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<script src="assets/js/jquery-1.10.2.js"></script>
	<script src="assets/js/bootstrap.js"></script>
	<script src="assets/js/custom.js"></script>
</body>
<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
</html>