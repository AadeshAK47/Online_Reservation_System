package com.oasis.onlineReservationSystem;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/reser")
public class Reservation extends HttpServlet {

		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			String name= req.getParameter("name");
			String contact= req.getParameter("con");
			String email= req.getParameter("email");
			String tnum= req.getParameter("tnum");
			String tname= req.getParameter("tname");
			String classt= req.getParameter("classtype");
			String date= req.getParameter("date");
			String from= req.getParameter("place1");
			String to= req.getParameter("place2");
			
			java.sql.Date date2= java.sql.Date.valueOf(date);
			
			try {
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/online_reservation_system","root","Aadesh@1991");
				PreparedStatement ps= con.prepareStatement("insert into reservation(name, contact, email, train_no, train_name, class_type, date, from_loc, to_loc) values(?,?,?,?,?,?,?,?,?)");
				ps.setString(1, name);
				ps.setString(2, contact);
				ps.setString(3, email);
				ps.setString(4, tnum);
				ps.setString(5, tname);
				ps.setString(6, classt);
				ps.setDate(7,date2);
				ps.setString(8, from);
				ps.setString(9, to);
				int b=ps.executeUpdate();
				
				HttpSession hs= req.getSession();
				hs.setAttribute("ins", b);
				RequestDispatcher rd= req.getRequestDispatcher("reservation.jsp");
				rd.forward(req, resp);
				
			} catch (Exception e) {
				e.getMessage();
			}
			
		}
}
