<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>


    <!-- Theme CSS -->  
    <link id="theme-style" rel="stylesheet" href="http://localhost:9090/ResumeComp/jsp/resume2/css/resume.css" media="all">
<title>Template 2</title>
</head>
<body>

<!-- Personal Information -->
	<% String FirstName =  request.getParameter("FirstName");
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
	String skills = request.getParameter("skills");%>
	
	<!-- Education Information -->
	<%String schoolAttended = request.getParameter("schoolAttended");
	String degreeReceived = request.getParameter("degreeReceived");
	String achievements = request.getParameter("achievements");
	String schoolCity = request.getParameter("schoolCity");
	String schoolState = request.getParameter("schoolState");%>
	
		<!-- Experience Information -->
	<%String company = request.getParameter("company");
	String title = request.getParameter("title");
	String dateStarted = request.getParameter("dateStarted");
	String dateEnded = request.getParameter("dateEnded");
	String description = request.getParameter("description");%>
	
			<!-- Social Media -->
	<%String facebook = request.getParameter("facebook");
	String linkedIn = request.getParameter("linkedIn");
	String twitter = request.getParameter("twitter");
	String github = request.getParameter("github");%>

    <p>
      <a href="http://pdf-ace.com/pdfme?cache=1&cache_for=86400" target="_blank"><button type="button" class="btn btn-primary">Download as PDF</button></a>

    <button class="btn btn-primary hidden-print" onclick="myFunction()"><span class="glyphicon glyphicon-print" aria-hidden="true"></span> Print</button>
    <div class="wrapper" id="content">
    </div>
    </p>
    
    	    <div id="doc2" class="yui-t7">
	<div id="inner">
	
		<div id="hd">
			<div class="yui-gc">
				<div class="yui-u first">
					<h1 style="text-transform: uppercase"><%= FirstName %><%= LastName %></h1>
					<h2><%= position %></h2>
				</div>

				<div class="yui-u">
					<div class="contact-info">
						<h3><a href="mailto:name@yourdomain.com"><%=emailAddress %></a></h3>
						<h3><%= PhoneNumber %> </h3>
					</div><!--// .contact-info -->
				</div>
			</div><!--// .yui-gc -->
		</div><!--// hd -->

		<div id="bd">
			<div id="yui-main">
				<div class="yui-b">

					<div class="yui-gf">
						<div class="yui-u first">
							<h2>Objective</h2>
						</div>
						<div class="yui-u">
							<p class="enlarge">
								<%= careerProfile %> 
							</p>
						</div>
					</div><!--// .yui-gf -->

					<div class="yui-gf">
						<div class="yui-u first">
							<h2>Skills</h2>
						</div>
						<div class="yui-u">
							<ul class="talent">
								<li><%= skills %></li>
								<li><%= skills %></li>
								<li class="last"><%= skills %></li>
							</ul>

							<ul class="talent">
								<li><%= skills %></li>
								<li><%= skills %></li>
								<li class="last"><%= skills %></li>
							</ul>

							<ul class="talent">
								<li><%= skills %></li>
								<li><%= skills %></li>
								<li class="last"><%= skills %></li>
							</ul>
						</div>
					</div><!--// .yui-gf-->

					<div class="yui-gf">
	
						<div class="yui-u first">
							<h2>Experience</h2>
						</div><!--// .yui-u -->

						<div class="yui-u">

							<div class="job">
								<h2><%= company %></h2>
								<h3><%= title %></h3>
								<h4><%=dateStarted %> - <%=dateEnded %></h4>
								<p><%=description%></p>
							</div>

							<div class="job">
								<h2><%= company %></h2>
								<h3><%= title %></h3>
								<h4><%=dateStarted %> - <%=dateEnded %></h4>
								<p><%=description%></p>
							</div>

							<div class="job">
								<h2><%= company %></h2>
								<h3><%= title %></h3>
								<h4><%=dateStarted %> - <%=dateEnded %></h4>
								<p><%=description%></p>
							</div>

							<div class="job last">
								<h2><%= company %></h2>
								<h3><%= title %></h3>
								<h4><%=dateStarted %> - <%=dateEnded %></h4>
								<p><%=description%></p>
							</div>

						</div><!--// .yui-u -->
					</div><!--// .yui-gf -->


					<div class="yui-gf last">
						<div class="yui-u first">
							<h2>Education</h2>
						</div>
						<div class="yui-u">
							<h2><%=schoolAttended %></h2>
							<h3><%=degreeReceived %> &mdash; <strong>4.0 GPA</strong> </h3>
						</div>
					</div><!--// .yui-gf -->


				</div><!--// .yui-b -->
			</div><!--// yui-main -->
		</div><!--// bd -->

		<div id="ft">
			<p><%= FirstName %><%= LastName %> &mdash; <a href="mailto:<%=emailAddress %>"><%=emailAddress %></a> &mdash; <%=PhoneNumber %></p>
		</div><!--// footer -->

	</div><!-- // inner -->


</div><!--// doc -->
    <!--Print-->
<script type="text/javascript">
    
    function myFunction() {
    window.print();
}

</script>
</body>
</html>