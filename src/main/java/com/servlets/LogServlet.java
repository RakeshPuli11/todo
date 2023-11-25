package com.servlets;
import com.Entities.UserDetails;
import com.Helper.FactoryProvider;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;
public class LogServlet extends HttpServlet {
	
	public LogServlet() {
	        super();
	    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		try {
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			 UserDetails user = s.get(UserDetails.class, username);
			 if (user != null) {
			 response.sendRedirect("Home.jsp");
			 }
			 else {
				 out.println("<h1 style = 'text-align : center' >Invalid user</h1>");
			 }
		}catch(Exception e) {
			e.printStackTrace();
			}
		
		}
		
	} 
