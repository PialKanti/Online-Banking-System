<%@page import="com.green.bank.model.LoanModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.green.bank.database.JDBC_Connect"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.green.bank.database.DatabaseOperations"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Loan Request List</title>
<link rel="shortcut icon" type="image/png" href="image/favicon.png" />
<link rel="stylesheet" type="text/css" href="css/loan_request.css">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		DatabaseOperations operations = new DatabaseOperations();
		JDBC_Connect connect = new JDBC_Connect();
		Connection conn = connect.getConnection();
		ArrayList<LoanModel> loadList = operations.getLoanList(conn);
	%>

	<div class="row">
		<jsp:include page="header.jsp" />
	</div>
	<div class="container-fullwidth">
		<div class="row" style="margin-top: 50px;">
			<div class="col-md-8 col-md-offset-2">
				<h3>Loan Requests</h3>
				<div class="table-responsive" style="margin-top: 40px">


					<table id="mytable" class="table table-bordred table-striped">

						<thead>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Account No</th>
							<th>Address</th>
							<th>Email</th>
							<th>Amount</th>
							<th>Approve</th>
							<th>Delete</th>
						</thead>
						<tbody>
							<%
								for (LoanModel l : loadList) {
							%>
							<tr>
								<td><%=l.getFirst_name()%></td>
								<td><%=l.getLast_name()%></td>
								<td><%=l.getAccount_no()%></td>
								<td><%=l.getAddress()%></td>
								<td><%=l.getEmail()%></td>
								<td><%=l.getLoan_amount()%></td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="Approve">
										<a
											href="loan_request_process.jsp?account_no=<%=l.getAccount_no()%>&amount=<%=l.getLoan_amount()%>"><button
												class="btn btn-primary btn-sm" data-title="Approve"
												data-toggle="modal" data-target="#edit">
												<span class="glyphicon glyphicon-ok"></span>
											</button></a>
									</p></td>
								<td><p data-placement="top" data-toggle="tooltip"
										title="Delete">
										<button class="btn btn-danger btn-sm" data-title="Delete"
											data-toggle="modal" data-target="#delete">
											<span class="glyphicon glyphicon-trash"></span>
										</button>
									</p></td>
							</tr>
							<%
								}
							%>

						</tbody>

					</table>


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