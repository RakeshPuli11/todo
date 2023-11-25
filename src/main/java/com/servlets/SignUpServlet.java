package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Entities.UserDetails;
import com.Helper.FactoryProvider;


public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public SignUpServlet() {
        super();
    }

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			String username = request.getParameter("uname");
			String password = request.getParameter("pass1");
			String password2 = request.getParameter("pass2");
			 if (password.equals(password2)) {
			try {
				

				UserDetails auth = new UserDetails(username,password);
				
				Session s = FactoryProvider.getFactory().openSession();
				Transaction tx = s.beginTransaction();
				
				
				s.save(auth);
				tx.commit();
				System.out.println(auth.getUsername()+" : "+auth.getPassword());
				s.close();
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<h1 style = 'text-align : center' >Registration successfully</h1>");
				out.println("<h1 style = 'text-align : center' ><a href='index.jsp'>Go to login page</h1>");
				
			}catch(Exception e) {
				e.printStackTrace();
				}
			
			}
		}
}


