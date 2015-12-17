package main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import javax.servlet.http.*;
/**
 * Servlet implementation class ServletRest
 */
@WebServlet(name = "ServletRest", urlPatterns = {"/ServletRest"})
public class ServletRest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletRest() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("methodHTTP", "doGet");
		request.getRequestDispatcher("index.jsp").forward(request, response); 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("methodHTTP", "doPost");
		request.getRequestDispatcher("index.jsp").forward(request, response); 
	}
	
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("methodHTTP", "doDelete");
		request.getRequestDispatcher("index.jsp").forward(request, response); 
	}
	
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("methodHTTP", "doPut");
		request.getRequestDispatcher("index.jsp").forward(request, response); 
	}

}
