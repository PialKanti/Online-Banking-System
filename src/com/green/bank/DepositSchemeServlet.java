package com.green.bank;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.green.bank.database.DatabaseOperations;
import com.green.bank.database.JDBC_Connect;
import com.green.bank.model.AccountModel;
import com.green.bank.model.DepositSchemeModel;

import oracle.net.aso.b;
import oracle.net.aso.d;

public class DepositSchemeServlet extends HttpServlet {
	String account_no, deposit_amount, value;
	int year, interest_rate, amount;
	Connection conn;
	Statement stmt;
	boolean pass_wrong = false;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		account_no = request.getParameter("account_no");
		year = Integer.parseInt(request.getParameter("year"));
		interest_rate = Integer.parseInt(request.getParameter("interest_rate"));
		deposit_amount = request.getParameter("deposit_amount");
		value = request.getParameter("value");

		if (deposit_amount.equals("1,00,000&#2547;")) {
			amount = 100000;
		} else if (deposit_amount.equals("3,00,000&#2547;")) {
			amount = 300000;

		} else if (deposit_amount.equals("5,00,000&#2547;")) {
			amount = 500000;
		}

		DepositSchemeModel dpModel = new DepositSchemeModel();
		dpModel.setAccount_no(account_no);
		dpModel.setYear(year);
		dpModel.setInterest_rate(interest_rate);
		dpModel.setAmount(amount);
		dpModel.setValue(value);

		try {
			JDBC_Connect connect = new JDBC_Connect();
			Connection conn = connect.getConnection();
			DatabaseOperations operations = new DatabaseOperations();

			AccountModel am = operations.getAccountDetails(conn, account_no);

			if (am.getAmount() >= amount) {
				int main_amount  = am.getAmount() - amount;
				PreparedStatement ps = conn.prepareStatement("update amount set amount=? where id= ?");
				ps.setInt(1, main_amount);
				ps.setString(2, account_no);
				ps.executeUpdate();
				
				boolean allRight = operations.insertDepositScheme(dpModel);
				request.setAttribute("DepositScheme", dpModel);
				request.setAttribute("allRight", allRight);
				RequestDispatcher rd = request.getRequestDispatcher("deposit_scheme_progress.jsp");
				rd.forward(request, response);

			} else {
				request.setAttribute("Not_Enough", "Yes");
				RequestDispatcher rd = request.getRequestDispatcher("single_deposit_scheme.jsp?value=" + value);
				rd.forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
