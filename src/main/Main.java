package main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import request.Request;

/**
 * Servlet implementation class Main
 */
@WebServlet("/Main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Main() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		Request req = new Request();
		//************ jokes *************//
//		String jokeNorris = req.makeHTTPRequestJokeNorris();
//		request.setAttribute("jokeNorris", jokeNorris);
		
//		String jokeMomma = req.makeHTTPRequestJokeMomma();
//		request.setAttribute("jokeMomma", jokeMomma);
		
		//************ cats *************//
//		String pathToYesOrNo = req.makeHTTPRequestYesOrNo();
//		request.setAttribute("yesOrNo", pathToYesOrNo);
		
		//************ music *************//
//		String pathToMusic = req.makeHTTPRequestMusic();
//		request.setAttribute("music", pathToMusic);
		//String onlyUrl= request.getRequestURL().substring(0,request.getRequestURL().lastIndexOf("?")); //this has the URL

		request.getRequestDispatcher("main.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
