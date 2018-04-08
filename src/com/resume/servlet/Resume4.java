package com.resume.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Resume4
 */
public class Resume4 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		//Social Media
		String facebook = request.getParameter("facebook");
		String linkedIn = request.getParameter("linkedIn");
		String twitter = request.getParameter("twitter");
		String github = request.getParameter("github");
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/resume1/result.jsp");
		rd.forward(request, response);
	}

}
