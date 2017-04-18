package com.green.bank.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.green.bank.model.AccountModel;

public class DatabaseOperations {
	Connection conn;
	int count1, count2;

	public boolean insertAccountDetails(AccountModel model) throws Exception {
		try {
			JDBC_Connect connect = new JDBC_Connect();
			conn = connect.getConnection();
			PreparedStatement ps1 = conn.prepareStatement("insert into account(id,f_name,l_name,address,city,"
					+ "branch,zip,username,password,phone,email,account_type,reg_date) values('" + model.getAccount_no()
					+ "','" + model.getFirst_name() + "','" + model.getLast_name() + "','" + model.getAddress() + "','"
					+ model.getCity() + "','" + model.getBranch() + "','" + model.getZip() + "','" + model.getUsername()
					+ "','" + model.getPassword() + "','" + model.getPhone_number() + "','" + model.getEmail() + "','"
					+ model.getAccount_type() + "','" + model.getReg_date() + "')");
			count1 = ps1.executeUpdate();
			System.out.println("Inserted " + count1 + " row");

			PreparedStatement ps2 = conn.prepareStatement("insert into amount(id,amount) values('"
					+ model.getAccount_no() + "','" + model.getAmount() + "')");
			count2 = ps2.executeUpdate();

			System.out.println("Inserted " + count2 + " row");

			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return ((count1 > 0) && (count2 > 0));
	}

	public AccountModel getAccountDetails(Connection conn, String account_no) throws Exception {
		AccountModel am = new AccountModel();

		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("select * from account where id ='" + account_no + "'");
		while (rs.next()) {

			// Setting all variables to model class
			am = new AccountModel();
			am.setAccount_no(rs.getString(1));
			am.setFirst_name(rs.getString(2));
			am.setLast_name(rs.getString(3));
			am.setAddress(rs.getString(4));
			am.setCity(rs.getString(5));
			am.setBranch(rs.getString(6));
			am.setZip(rs.getString(7));
			am.setUsername(rs.getString(8));
			am.setPassword(rs.getString(9));
			am.setPhone_number(rs.getString(10));
			am.setEmail(rs.getString(11));
			am.setAccount_type(rs.getString(12));
			am.setReg_date(rs.getString(13));
		}
		ResultSet rs1 = stmt.executeQuery("select * from amount where id ='" + am.getAccount_no() + "'");
		while (rs1.next()) {
			am.setAmount(rs1.getInt(2));
		}
		return am;
	}
}
