<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <!--CSS -->  
<link rel="stylesheet" type="text/css" href="http://localhost:9090/ResumeComp/jsp/resume4/css/reset.css" />
  <link rel="stylesheet" type="text/css" href="http://localhost:9090/ResumeComp/jsp/resume4/css/main1.css" />
  <link rel="stylesheet" href="http://localhost:9090/ResumeComp/jsp/resume4/css/stylesheet.css" type="text/css" charset="utf-8" />
  <link rel="stylesheet" href="http://localhost:9090/ResumeComp/jsp/resume4/css/progressbar.css" type="text/css" />
  <link rel="stylesheet" href="http://localhost:9090/ResumeComp/jsp/resume4/css/print.css" type="text/css" media="print" />
    
<title>Resume Template 4</title>
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
    <div id="container">
      <div id="header">
        
      </div>

      <div class="section sectiontop">
        
		
		<!-- Person Info -->
		
		
		
		
		
		

        <h1><%= FirstName %> <%= LastName %></h1>

        <h2><%= position %></h2>

        <ul>
          <li><span>E-mail:</span> <a href="#"><%= emailAddress %></a></li>

          <li><span>Website:</span> <a href="#"><%= Website %></a></li>

          <li><span>Phone:</span><%= PhoneNumber %></li>

          <li><span>Address:</span> <%= Address %> <%= City %> <%= ZipCode %></li>
        </ul>
      </div>
	  
		<!-- Carrer Profile -->
      <div class="section personal">
        <div class="left">
          <h3>Career Porfolio</h3>
        </div>

        <div class="right">
          <p><%= careerProfile %>.</p>
        </div>
      </div>
		
		<!-- Skill -->
      <div class="section technical">
        <div class="left">
          <h3>Technical Skills</h3>
        </div>
          <div class="right">
            <h6><%= skills %></h6>
          </div>
        
      </div>
		
		
		<!-- Work Experiences -->
	   <div class="section education">
        <div class="left">
          <h3>Work Experiences</h3>
        </div>
        <div class="right">
          <div class="row">
            <h4><%= company %></h4>

            <h5><%= title %></h5>
			<h6><%= description %></h6>
            <a><%= dateStarted %> - <%= dateEnded %></a>
          </div>
        </div>
      </div>
		
		
		<!-- Education -->
      <div class="section education">
        <div class="left">
          <h3>Education</h3>
        </div>
        <div class="right">
          <div class="row">
            <h4><%= schoolAttended %></h4>

            <h5><%= degreeReceived %></h5>
			<h6><%= achievements %></h6>
            <p><%= schoolCity %>,<%= schoolState %></p>
          </div>
        </div>
      </div>
		
		
		<!-- Social Media -->
      <div class="section social">
        <div class="left">
          <h3>Social Media</h3>
        </div>
          <div class="right">
            <h6><%= facebook %></h6>
			<h6><%= linkedIn %></h6>
			<h6><%= twitter %></h6>
			<h6><%= github %></h6>
          </div>
        
      </div>
	  
	  
	  

      
    </div>
    
      <!--Print-->
<script type="text/javascript">
    
    function myFunction() {
    window.print();
}

</script>  
    
</body>
</html>