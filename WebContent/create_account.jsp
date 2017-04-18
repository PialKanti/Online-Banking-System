<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create new account</title>
<link rel="shortcut icon" type="image/png" href="image/favicon.png" />
<link rel="stylesheet" type="text/css" href="css/create_account.css">
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
		<div class="row">
			<div class="account col-md-6 col-md-offset-3">
				<h1 class="well text-center">Create New Account</h1>
				<div class="col-lg-12 well">
					<div class="row">
						<form action="CreateAccountServlet" method="post">
							<div class="col-sm-12">
								<div class="row">
									<div class="col-sm-6 form-group">
										<label class="required">First Name</label><input type="text"
											placeholder="Enter First Name Here.." class="form-control"
											name="first_name" required>
									</div>
									<div class="col-sm-6 form-group">
										<label class="required">Last Name</label> <input type="text"
											placeholder="Enter Last Name Here.." class="form-control"
											name="last_name" required>
									</div>
								</div>
								<div class="form-group">
									<label class="required">Address</label>
									<textarea placeholder="Enter Address Here.." rows="3"
										class="form-control" name="address" required></textarea>
								</div>
								<div class="row">
									<div class="col-sm-4 form-group">
										<label>City</label> <input type="text"
											placeholder="Enter City Name Here.." class="form-control"
											name="city">
									</div>
									<div class="col-sm-4 form-group">
										<label class="required">Branch Name</label>
										<div class="input-group-btn">
											<select class="form-control btn btn-default" name="branch" required>
												<option>Dhaka</option>
												<option>Khulna</option>
												<option>Chittagong</option>
												<option>Rajshahi</option>
												<option>Sylhet</option>
												<option>Mymensingh</option>
												<option>Rangpur</option>
												<option>Comilla</option>
											</select>
										</div>
									</div>
									<div class="col-sm-4 form-group">
										<label>Zip</label> <input type="text"
											placeholder="Enter Zip Code Here.." class="form-control"
											name="zip">
									</div>
								</div>
								<div class="form-group">
									<label class="required">User Name</label> <input type="text"
										placeholder="Enter User Name Here.." class="form-control"
										name="username" required>
								</div>
								<div class="row">
									<div class="col-sm-6 form-group">
										<label class="required">Password</label> <input
											type="password" required placeholder="Enter Password Here.." min="5"
											class="form-control" name="password" id="password">
									</div>
									<div class="col-sm-6 form-group">
										<label class="required">Re-password</label> <input
											type="password" required
											placeholder="Enter Re-password Here.." class="form-control"
											name="re_password" id="re_password"
											onkeyup="checkPass(); return false;">
										<p id="confirmMessage" style="margin-top: 10x;"></p>
									</div>
								</div>
								<div class="form-group">
									<label class="required">Phone Number</label> <input type="tel"
										placeholder="Enter Phone Number Here.." class="form-control"
										name="phone" required>
								</div>
								<div class="form-group">
									<label class="required">Email Address</label> <input
										type="text" placeholder="Enter Email Address Here.."
										class="form-control" name="email" required>
								</div>
								<div class="row">
									<div class="col-sm-6 form-group">
										<label class="required">Choose Account type</label>
										<div class="input-group-btn">
											<select class="form-control btn btn-default"
												name="account_type" required>
												<option>Saving Account</option>
												<option>Current Account</option>
											</select>
										</div>
									</div>
									<div class="col-sm-6 form-group">
										<label class="required">Amount</label> <input type="number"
											placeholder="Enter Intial Amount Here.." class="form-control"
											name="amount" required>
									</div>
								</div>
								<div class="form-group">
									<span class="text-muted"><em><span
											style="color: red; font-size: 14px">*</span> Indicates
											required field</em> </span>
								</div>
								<%
									String not_match = (String) request.getAttribute("not_match");
									System.out.println(not_match);
									if (not_match != null && not_match.equals("yes")) {
								%>
								<div class="form-group">
									<p class="bg-danger text-center text-danger"
										style="font-size: 18px;">Password doesn't match</p>
								</div>
								<%
									}
								%>
								<input type="submit" class="btn btn-lg btn-info">
								</input>
							</div>
						</form>
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