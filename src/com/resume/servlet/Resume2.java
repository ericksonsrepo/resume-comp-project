package com.resume.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Resume2
 */
public class Resume2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		//Education Information
		String schoolAttended = request.getParameter("schoolAttended");
		String degreeReceived = request.getParameter("degreeReceived");
		String achievements = request.getParameter("achievements");
		String schoolCity = request.getParameter("schoolCity");
		String schoolState = request.getParameter("schoolState");

		RequestDispatcher rd = request.getRequestDispatcher("/jsp/resume1/result.jsp");
		rd.forward(request, response);
	}

}
