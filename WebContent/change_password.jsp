<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/png" href="image/favicon.png" />
<link rel="stylesheet" type="text/css" href="css/change_password.css">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/passwordChecker.js"></script>
</head>
<body>
	<div class="row">
		<jsp:include page="header.jsp" />
	</div>
	<div class="container-fullwidth">
		<div class="row" style="margin-top: 50px;">
			<div class="col-md-4 col-md-offset-4">
				<form role="form">
					<h2>Change Password</h2>
					<div class="col-md-12">
						<hr class="colorgraph">
					</div>
					<label class="col-md-4 control-label">Current Password</label>
					<div class="col-sm-8 form-group">
						<input type="password" required
							placeholder="Enter Current Password.." class="form-control">
					</div>
					<label class="col-md-4 control-label">New Password</label>
					<div class="col-sm-8 form-group">
						<input type="password" required placeholder="Enter New Password.."
							class="form-control" id="password">
					</div>

					<label class="col-md-4 control-label">Re-Password</label>
					<div class="col-sm-8 form-group">
						<input type="password" required placeholder="Enter Re-Password.."
							class="form-control" id="re_password"
							onkeyup="checkPass(); return false;">
					</div>
					<p id="confirmMessage" class="text-center" style="margin-top: 10x;"></p>

					<div class="col-md-12">
						<hr class="colorgraph">
					</div>
					<div class="row col-md-10 col-md-offset-1">
						<div class="col-xs-6 col-md-6">
							<input type="submit" value="Submit"
								class="btn btn-success btn-block btn-md" tabindex="7">
						</div>
						<div class="col-xs-6 col-md-6">
							<input class="btn btn-danger btn-block btn-md" type="reset"
								value="Clear">
						</div>
					</div>
				</form>
			</div>
		</div>

		<!-- Footer start here -->
		<div class="row" style="margin-top: 50px;">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>