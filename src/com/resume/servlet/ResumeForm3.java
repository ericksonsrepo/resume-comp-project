package com.resume.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.resume.beans.*;

/**
 * Servlet implementation class Resume
 */
public class ResumeForm3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		//Personal Information
		String FirstName =  request.getParameter("FirstName");
		String LastName = request.getParameter("LastName");
		String PhoneNumber = request.getParameter("PhoneNumber");
		String emailAddress = request.getParameter("emailAddress");
		String objective = request.getParameter("objective");
		String skills = request.getParameter("skills");
		String achievements = request.getParameter("achievements");
		
		
		//Education Information
		String schoolAttended = request.getParameter("schoolAttended");
		String degreeReceived = request.getParameter("degreeReceived");
		String gradePointAverage = request.getParameter("gradePointAverage");
		
		//Association Information
		String associationName = request.getParameter("associationName");
		String associationLocation = request.getParameter("associationLocation");
		String associationTasks = request.getParameter("associationTasks");
		
		//Work Information
		String company = request.getParameter("company");
		String companyLocation = request.getParameter("companyLocation");
		String workplaceTasks= request.getParameter("workplaceTasks");
		
		
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/resume3/result.jsp");
			rd.forward(request, response);
	}


}
