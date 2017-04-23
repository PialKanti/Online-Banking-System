<%@page import="com.green.bank.model.AccountModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%
	String value = request.getParameter("value");
%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><%=value%>> Deposit Scheme</title>
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
		<div class="row scheme-plan">
			<div class="col-md-6 col-md-offset-3">
				<h3><%=value%>
					Deposit Scheme
				</h3>
				<p style="margin-left: 30px;">Introducing the new Bronze Deposit
					Scheme linked pricing for your Mortgage Loan. The interest rate for
					your Mortgage Loan will be calculated based on the sum of the FDR
					and a fixed margin.</p>
				<h3 style="margin-top: 50px;">Eligibility</h3>
				<ul>
					<%
						if (value.equals("Bronze")) {
					%>
					<li>1 year</li>
					<li>Interest: 8%</li>
					<%
						} else if (value.equals("Silver")) {
					%>
					<li>3 year</li>
					<li>Interest: 10%</li>
					<%
						} else if (value.equals("Gold")) {
					%>
					<li>5 year</li>
					<li>Interest: 12%</li>
					<%
						}
					%>
				</ul>
			</div>

			<%
				AccountModel ac = null;
				ac = (AccountModel) session.getAttribute("userDetails");
			%>


			<div class="form col-md-6 col-md-offset-3" style="margin-top: 50px;">
				<div class="form-group">
					<div style="padding-top: 5px; padding-left: 15px">
						<label>Deposit Amount</label>
					</div>
					<div class="col-md-4" style="margin-top: 10px;">
						<form action="DepositSchemeServlet" method="post">
							<%
								if (ac != null) {
							%>
							<input type="hidden" name="account_no"
								value="<%=ac.getAccount_no()%>" />

							<%
								if (value.equals("Bronze")) {
							%>
							<input type="hidden" name="year" value="1" /> <input
								type="hidden" name="interest_rate" value="8" />
							<%
								} else if (value.equals("Silver")) {
							%>
							<input type="hidden" name="year" value="3" /> <input
								type="hidden" name="interest_rate" value="10" />
							<%
								} else if (value.equals("Gold")) {
							%>
							<input type="hidden" name="year" value="5" /> <input
								type="hidden" name="interest_rate" value="12" />
							<%
								}
							%>

							<%
								}
							%>
							<input type="hidden" name="value" value="<%= value %>" /> 
							<select class="form-control btn btn-default"
								name="deposit_amount" required>
								<option selected disabled>Choose Deposit amount</option>
								<option>1,00,000&#2547;</option>
								<option>3,00,000&#2547;</option>
								<option>5,00,000&#2547;</option>
							</select>
							<%
								if (ac != null) {
							%>
							<%
								String Not_Enough = (String) request.getAttribute("Not_Enough");
									if (Not_Enough != null && Not_Enough.equals("Yes")) {
							%>
							<div class="col-md-12" style="margin-top:10px;">
								<div class="alert alert-danger" role="alert">
									<strong>Sorry!</strong> You do not have enough money.
								</div>
							</div>
							<%
								}
							%>
							<div class="row" style="margin-top: 20px; margin-left: 2px">
								<input type="submit" value="Deposit"
									class="btn btn-lg btn-success" />
							</div>
							<%
								} else {
							%>

							<div class="row">
								<div class="alert alert-warning" role="alert"
									style="margin-top: 20px;">
									<strong>Warning!</strong> You have to login first.
								</div>
							</div>

							<%
								}
							%>

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