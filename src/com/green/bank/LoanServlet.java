package com.green.bank;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.green.bank.database.DatabaseOperations;
import com.green.bank.model.LoanModel;

public class LoanServlet extends HttpServlet {
	int loan_amount;
	String account_no,first_name,last_name,address,email;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		account_no = request.getParameter("account_no");
		loan_amount = Integer.parseInt(request.getParameter("loan_amount"));
		first_name = request.getParameter("first_name");
		last_name = request.getParameter("last_name");
		address = request.getParameter("address");
		email = request.getParameter("email");

		LoanModel lModel = new LoanModel();
		lModel.setAccount_no(account_no);
		lModel.setFirst_name(first_name);
		lModel.setLast_name(last_name);
		lModel.setAddress(address);
		lModel.setEmail(email);
		lModel.setLoan_amount(loan_amount);
		lModel.setStatus("pending");

		try {
			DatabaseOperations operations = new DatabaseOperations();
			boolean check =  operations.insertLoanDetails(lModel);
			
			if(check){
				RequestDispatcher rd = request.getRequestDispatcher("loan_process.jsp");
				request.setAttribute("loan_details", lModel);
				rd.forward(request, response);
			}
			else{
				RequestDispatcher rd = request.getRequestDispatcher("loan_process.jsp");
				request.setAttribute("error", "yes");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
