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
public class ResumeForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResumeForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
        // Forward to /jsp/searchResults.jsp for display
        this.getServletContext().getRequestDispatcher("/view/TemplateResult.jsp").
           forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
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
		
		//Education Information
		String schoolAttended = request.getParameter("schoolAttended");
		String degreeReceived = request.getParameter("degreeReceived");
		String achievements = request.getParameter("achievements");
		String schoolCity = request.getParameter("schoolCity");
		String schoolState = request.getParameter("schoolState");
		
		//Experience Information
		String company = request.getParameter("company");
		String title = request.getParameter("title");
		String dateStarted = request.getParameter("dateStarted");
		String dateEnded = request.getParameter("dateEnded");
		String description = request.getParameter("description");
		
		//Social Media
		String facebook = request.getParameter("facebook");
		String linkedIn = request.getParameter("linkedIn");
		String twitter = request.getParameter("twitter");
		String github = request.getParameter("github");
		if(FirstName.isEmpty()||LastName.isEmpty())
		{
			RequestDispatcher rd = request.getRequestDispatcher("registration.jsp");
			out.println("<font color=red>Please fill all the fields</font>");
			rd.include(request, response);
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("TemplateResult.jsp");
			rd.forward(request, response);
		}
	}


}
