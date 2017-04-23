<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Green Bank</title>
<link rel="shortcut icon" type="image/png" href="image/favicon.png" />
<link rel="stylesheet" type="text/css" href="css/main_css.css">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="row">
		<jsp:include page="header.jsp" />
	</div>
	<div class="container-fullwidth" style="margin-top: 0 px">
		<div class="row">
			<div class="col-md-12">
				<div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">

					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>

					<div class="carousel-inner">
						<div class="item active">
							<img src="image/Current-Deposit1.jpg" alt="First slide">

						</div>
						<div class="item">
							<img src="image/Savings-Deposit1.jpg" alt="Second slide">

						</div>
					</div>

					<a class="left carousel-control" href="#carousel-example-generic"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span></a><a
						class="right carousel-control" href="#carousel-example-generic"
						data-slide="next"><span
						class="glyphicon glyphicon-chevron-right"> </span> </a>


				</div>
			</div>
		</div>
		<div class="row">
			<div class="schemes" style="margin-bottom: -155px;">
				<div class="col-md-4 scheme-type-1">
					<h2 class="text-center text-medium">
						Loan<br>Scheme
					</h2>
					<p class="col-md-6 col-md-offset-3 text-center scheme-text">There
						is a variety of saving plans which can be tailored to your needs,
						including: Tax Exempt Savings Regular Savings.</p>
					<div class="scheme-button col-md-4 col-md-offset-4">
						<a type="button" class="btn btn-default btn-lg" href="loan.jsp"
							style="border-radius: 24px;">Learn more..</a>
					</div>
				</div>
				<div class="col-md-4 scheme-type-2">
					<h2 class="text-center text-medium">
						Deposit<br>Scheme
					</h2>
					<p class="col-md-6 col-md-offset-3 text-center scheme-text">There
						is a variety of saving plans which can be tailored to your needs,
						including: Tax Exempt Savings Regular Savings.</p>
					<div class="scheme-button col-md-4 col-md-offset-4">
						<a type="button" class="btn btn-default btn-lg"
							href="deposit_scheme.jsp" style="border-radius: 24px;">Learn
							more..</a>
					</div>
				</div>
				<div class="col-md-4 scheme-type-3">
					<h2 class="text-center text-medium">
						Payment<br>Bill
					</h2>
					<p class="col-md-6 col-md-offset-3 text-center scheme-text">There
						is a variety of saving plans which can be tailored to your needs,
						including: Tax Exempt Savings Regular Savings.</p>
					<div class="scheme-button col-md-4 col-md-offset-4">
						<a type="button" class="btn btn-default btn-lg"
							style="border-radius: 24px;">Learn more..</a>
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