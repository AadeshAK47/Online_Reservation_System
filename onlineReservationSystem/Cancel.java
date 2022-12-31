package com.oasis.onlineReservationSystem;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/cancel")
public class Cancel extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pnr= req.getParameter("pnr");

		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/online_reservation_system","root","Aadesh@1991");
			
			PreparedStatement ps= con.prepareStatement("select * from reservation where pnr=?");
			
			ps.setString(1, pnr);
			ResultSet rs= ps.executeQuery();
             
			HttpSession hs= req.getSession();
			hs.setAttribute("res", rs);
			
			RequestDispatcher rd= req.getRequestDispatcher("cancelj.jsp");
			rd.forward(req, resp);
			
		}catch(Exception e) {
			e.getMessage();
		}
	}
}
