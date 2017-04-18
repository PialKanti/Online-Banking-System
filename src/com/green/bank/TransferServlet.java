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

import com.green.bank.database.JDBC_Connect;
import com.green.bank.model.AccountModel;

public class TransferServlet extends HttpServlet {
	String account_no, username, target_acc_no, password;
	Connection conn;
	Statement stmt;
	boolean pass_wrong = false;
	int own_amount, transfer_amount, recipient_amount;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		account_no = request.getParameter("account_no");
		username = request.getParameter("username");
		target_acc_no = request.getParameter("target_acc_no");
		password = request.getParameter("password");
		transfer_amount = Integer.parseInt(request.getParameter("amount"));

		try {
			JDBC_Connect connect = new JDBC_Connect();
			conn = connect.getConnection();

			stmt = conn.createStatement();

			ResultSet rsOwn = stmt.executeQuery("select * from account where id='" + account_no + "' and username='"
					+ username + "' and password='" + password + "'");

			ResultSet rstTarget = stmt.executeQuery("select * from account where id='" + target_acc_no + "'");

			if (!rsOwn.isBeforeFirst() && !rstTarget.isBeforeFirst()) {
				request.setAttribute("isPassOK", "No");
				RequestDispatcher rd = request.getRequestDispatcher("transfer.jsp");
				rd.forward(request, response);
			} else {
				System.out.println("I am in");
				ResultSet rs1 = stmt.executeQuery("select * from amount where id ='" + account_no + "'");

				while (rs1.next()) {
					own_amount = rs1.getInt(2);
				}

				if (own_amount >= transfer_amount) {
					own_amount -= transfer_amount;

					ResultSet rs2 = stmt.executeQuery("select * from amount where id ='" + target_acc_no + "'");

					while (rs2.next()) {
						recipient_amount = rs2.getInt(2);
					}

					recipient_amount += transfer_amount;

					PreparedStatement ps = conn.prepareStatement("update amount set amount=? where id= ?");
					ps.setInt(1, own_amount);
					ps.setString(2, account_no);
					ps.executeUpdate();

					PreparedStatement ps1 = conn.prepareStatement("update amount set amount=? where id= ?");
					ps1.setInt(1, recipient_amount);
					ps1.setString(2, target_acc_no);
					ps1.executeUpdate();

					conn.close();

					RequestDispatcher rd = request.getRequestDispatcher("transfer_process.jsp");
					rd.forward(request, response);
				}else{
					conn.close();
					request.setAttribute("EnoughMoney", "No");
					RequestDispatcher rd = request.getRequestDispatcher("transfer.jsp");
					rd.forward(request, response);
				}

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
