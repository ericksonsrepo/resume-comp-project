package com.resume.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Resume
 */
public class Resume1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		//Personal Information
		String FirstName =  request.getParameter("FirstName");
		String LastName = request.getParameter("LastName");
		String Address = request.getParameter("Address");
		String City = request.getParameter("City");
		String State = request.getParameter("State");
		String ZipCode = request.getParameter("ZipCode");
		String PhoneNumber = request.getParameter("PhoneNumber");
		String emailAddress = request.getParameter("emailAddress");
		String position = request.getParameter("position");
		String careerProfile = request.getParameter("careerProfile");
		String objective = request.getParameter("objective");
		String Website = request.getParameter("Website");
		String skills = request.getParameter("skills");
	
		if(FirstName.isEmpty()||LastName.isEmpty())
		{
			RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
			out.println("<font color=red>Please fill all the fields</font>");
			rd.include(request, response);
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/resume1/result.jsp");
			rd.forward(request, response);
		}
	}


}
