package com.servlets;
import com.Entities.Note;
import com.Helper.FactoryProvider;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Entities.Note;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public SaveNoteServlet() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	try {
		// title,content fetch
		
		String title = request.getParameter("title");
		String content  = request.getParameter("content");
		
		Note note = new Note(title,content,new Date());
		
		Session s = FactoryProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		
		
		s.save(note);
		tx.commit();
		System.out.println(note.getId()+" : "+note.getTitle());
		s.close();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<h1 style = 'text-align : center' >Note added successfully</h1>");
		out.println("<h1 style = 'text-align : center' ><a href='AllNotes.jsp'>veiw all notes</h1>");
		
	}catch(Exception e) {
		e.printStackTrace();
		}
	
	}

}
