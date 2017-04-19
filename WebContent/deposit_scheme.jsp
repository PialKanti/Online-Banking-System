<%@page import="com.green.bank.model.AccountModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Deposit Scheme</title>
<link rel="shortcut icon" type="image/png" href="image/favicon.png" />
<link href="css/deposit-scheme.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="row">
		<jsp:include page="header.jsp" />
	</div>

	<div class="container-fullwidth">
		<div class="row" style="margin-top: 50px;">
			<div class="col-md-6 col-md-offset-3">
				<h1 style="font-weight: 600">Deposit Schemes</h1>
				<p class="deposit_text">We offer some elegant deposit schemes
					which meets the needs of individual and commercial customers
					through our schedule benefit.</p>
			</div>
		</div>
		<div class="row scheme">
			<div class="col-md-6 col-md-offset-3">
				<h2 style="font-weight: 600;margin-bottom: 30px;">Deposit Products</h2>
				<div class="col-md-4">
					<div class="well">
						<h2 class="muted" style="color:#CD7F32;">Bronze</h2>
						<p>
							<span class="label label-success" style="font-size: 12px;">Short-term</span>
						</p>
						<ul>
							<li>10 users</li>
							<li>1, 3 or 5 lakh deposit amount</li>
						</ul>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis
							sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue
							semper porta.</p>
						<hr>
						<h3>Interest rate: 8%</h3>
						<hr>
						<p>
							<a class="btn btn-success btn-large" href="#"><i class="icon-ok"></i>
								Select plan</a>
						</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="well">
						<h2 class="muted" style="color:#A9A9A9;">Silver</h2>
						<p>
							<span class="label label-success" style="font-size: 12px;">Mid-term</span>
						</p>
						<ul>
							<li>20 users</li>
							<li>1, 3 or 5 lakh deposit amount</li>
						</ul>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis
							sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue
							semper porta.</p>
						<hr>
						<h3>Interest rate: 10%</h3>
						<hr>
						<p>
							<a class="btn btn-success btn-large" href="#"><i
								class="icon-ok"></i> Select plan</a>
						</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="well">
						<h2 class="muted" style="color:#D4AF37;">Gold</h2>
						<p>
							<span class="label label-success" style="font-size: 12px;">Long-term</span>
						</p>
						<ul>
							<li>10 users</li>
							<li>1, 3 or 5 lakh deposit amount</li>
						</ul>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis
							sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue
							semper porta.</p>
						<hr>
						<h3>Interest rate: 12%</h3>
						<hr>
						<p>
							<a class="btn btn-success btn-large" href="#"><i class="icon-ok"></i>
								Select plan</a>
						</p>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer start here -->
		<div class="row" style="margin-top: 50px;">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>