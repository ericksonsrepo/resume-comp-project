package com.resume.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Resume3
 */
public class Resume3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		//Experience Information
		String company = request.getParameter("company");
		String title = request.getParameter("title");
		String dateStarted = request.getParameter("dateStarted");
		String dateEnded = request.getParameter("dateEnded");
		String description = request.getParameter("description");
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/resume1/result.jsp");
		rd.forward(request, response);
		}
	}