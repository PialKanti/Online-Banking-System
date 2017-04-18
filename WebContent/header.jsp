<%@page import="com.green.bank.model.AccountModel"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/header_css.css">
</head>
<div class="container-fullwidth">
	<!-- Topper w/ logo -->
	<div class="row hidden-xs topper">
		<div class="col-xs-7 col-sm-7">
			<a href="index.jsp"><img am-TopLogo alt="SECUREVIEW"
				src="image/greenbank.png" class="img-responsive"></a>
		</div>
	</div>
	<!-- End Topper -->
	<!-- Navigation -->
	<div class="row">
		<nav class="navbar navbar-inverse" role="navigation"
			style="margin-bottom: 0px;">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand visible-xs-inline-block nav-logo" href="/"><img
					src="/images/logo-dark-inset.png" class="img-responsive" alt=""></a>
			</div>

			<%!AccountModel ac = null;%>

			<%
				ac = (AccountModel) session.getAttribute("userDetails");
			%>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav js-nav-add-active-class">
					<li><a href="index.jsp">Home</a></li>
					<%
						if (ac == null) {
					%>
					<li><a href="create_account.jsp">Create new account</a></li>
					<%
						}
					%>
					<li><a href="deposit.jsp">Deposit</a></li>
					<li><a href="withdraw.jsp">Withdraw</a></li>
					<li><a href="transfer.jsp">Transfer</a></li>
					<li><a href="close_account.jsp">Close A/C</li>
					<li class="visible-xs-block"><a href="/about.html">About
							Us</a></li>
					<li class="visible-xs-block"><a href="/careers.html">Careers</a></li>
					<li class="visible-xs-block"><a href="/press-release.html">Press
							Release</a></li>
					<li class="visible-xs-block"><a
						href="https://susteen7.zendesk.com/hc/en-us">Support</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Company <b class="caret"></b></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="about.html">About Us</a></li>
							<li><a href="careers.html">Careers</a></li>
							<li><a href="press-release.html">Press Release</a></li>
						</ul></li>
				</ul>

				<!-- If user is logged in this menu will be shown -->


				<%
					if (ac != null) {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <span class="glyphicon glyphicon-user"></span>
							<strong><%=ac.getUsername()%></strong> <span
							class="glyphicon glyphicon-chevron-down"></span>
					</a>
						<ul class="dropdown-menu">
							<li>
								<div class="navbar-login">
									<div class="row">
										<div class="col-md-4">
											<p class="text-center">
												<span class="glyphicon glyphicon-user icon-size"></span>
											</p>
										</div>
										<div class="col-md-8">
											<p class="text-left">
												<strong><%=ac.getFirst_name() + " " + ac.getLast_name()%></strong>
											</p>
											<p class="text-left small"><%=ac.getEmail()%>
											</p>
											<p class="text-left">
												<a href="profile.jsp"
													class="btn btn-primary btn-block btn-sm">Profile</a>
											</p>
										</div>
									</div>
								</div>
							</li>
							<li class="divider navbar-login-session-bg"></li>
							<li><a href="change_password.jsp">Change password<span
									class="glyphicon glyphicon-cog pull-right"></span></a></li>
							<li class="divider"></li>
							<li><a href="logout.jsp">Sign Out <span
									class="glyphicon glyphicon-log-out pull-right"></span></a></li>
						</ul></li>
				</ul>
				<!-- End User menu -->
				<%
					} else {
				%>
				<ul class="nav navbar-nav navbar-right hidden-xs">
					<a type="button" class="navbar-btn btn btn-primary"
						am-latosans="bold" href="login.jsp">Login</a>
				</ul>
				<%
					}
				%>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		</nav>
	</div>
</div>
</html>