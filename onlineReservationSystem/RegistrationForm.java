package com.oasis.onlineReservationSystem;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/reg")
public class RegistrationForm extends HttpServlet {
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String id= req.getParameter("id");
			String pass= req.getParameter("pass");
			
			try {
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/online_reservation_system","root","Aadesh@1991");
				PreparedStatement ps= con.prepareStatement("insert into user(login_id, password) values(?,?)");
				
				ps.setString(1, id);
				ps.setString(2, pass);
				ps.execute();
				
				
				RequestDispatcher rd= req.getRequestDispatcher("login.html");
				rd.forward(req, resp);
				
				
			} catch (Exception e) {
				e.getMessage();
			}
		}
}
