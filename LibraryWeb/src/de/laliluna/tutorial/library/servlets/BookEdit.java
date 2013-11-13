package de.laliluna.tutorial.library.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import de.laliluna.tutorial.library.SimulateDB;

/**
 * Servlet implementation class BookEdit
 */
@WebServlet("/BookEdit")
public class BookEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookEdit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		SimulateDB simulateDB = new SimulateDB();
		String action = request.getParameter("do");
		
		long id = 0;
		try {
			id = Long.parseLong(request.getParameter("id"));
		} catch(NumberFormatException e){}
		
		if(action.equals("add")){
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/jsp/bookAdd.jsp");
			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
