<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Resume Template 4</title>

    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>


   <style type="text/css">
        * { margin: 0; padding: 0; }
        body { font: 16px Ariel; line-height: 24px; background: url(../../OnePageResume/images/noise.jpg); }
        .clear { clear: both; }
        #page-wrap { width: 800px; margin: 40px auto 60px; }
        #pic { float: right; margin: -30px 0 0 0; }
        h1 { margin: 0 0 16px 0; padding: 0 0 16px 0; font-size: 42px; font-weight: bold; letter-spacing: -2px; border-bottom: 1px solid #999; }
        h2 { font-size: 20px; margin: 0 0 6px 0; position: relative; }
        h2 span { position: absolute; bottom: 0; right: 0; font-style: italic; font-family: Georgia, Serif; font-size: 16px; color: #999; font-weight: normal; }
        p { margin: 0 0 16px 0; }
        a { color: #999; text-decoration: none; border-bottom: 1px dotted #999; }
        a:hover { border-bottom-style: solid; color: black; }
        ul { margin: 0 0 32px 17px; }
        #objective { width: 500px; float: left; }
        #objective p { font-family: Georgia, Serif; font-style: italic; color: #666; }
        dt { font-style: italic; font-weight: bold; font-size: 18px; text-align: right; padding: 0 26px 0 0; width: 150px; float: left; height: 100px; border-right: 1px solid #999;  }
        dd { width: 600px; float: right; }
        dd.clear {
        </style>
</head>
<body>

	<!-- Personal Information -->
	<% String FirstName =  request.getParameter("FirstName");
	String LastName = request.getParameter("LastName");
	String PhoneNumber = request.getParameter("PhoneNumber");
	String emailAddress = request.getParameter("emailAddress");
	String objective = request.getParameter("objective");%>
		
	<!-- Education Information -->
	<%String schoolAttended = request.getParameter("schoolAttended");
	String degreeReceived = request.getParameter("degreeReceived");
	String gradePointAverage = request.getParameter("gradePointAverage");%>

	<!-- Achievements Information -->
	<%String achievements = request.getParameter("achievements");%>

		
	<!-- Skills Information -->
	<% String skills = request.getParameter("skills");%>	
		
	<!-- Work Information -->
	<%String company = request.getParameter("company");%>
	<%String companyLocation = request.getParameter("companyLocation");%>
	<%String workplaceTasks = request.getParameter("workplaceTasks");%>


	<!-- Associations Information -->
	<%String associationName = request.getParameter("associationName");
	String associationLocation = request.getParameter("associationLocation");
	String associationTasks = request.getParameter("associationTasks");%>	


    <p>
      <a href="http://pdf-ace.com/pdfme?cache=1&cache_for=86400" target="_blank"><button type="button" class="btn btn-primary">Download as PDF</button></a>

    <button class="btn btn-primary hidden-print" onclick="myFunction()"><span class="glyphicon glyphicon-print" aria-hidden="true"></span> Print</button>
    <div class="wrapper" id="content">
    </div>
    </p>
    
     <div id="page-wrap">
  
    
        <div id="contact-info" class="vcard">
        
            <!-- Microformats! -->
			<center><h1 class="name"><%= FirstName %> <%= LastName %></h1></center>
				
            <p> Cell: <a href="tel:<%=PhoneNumber %>"><%=PhoneNumber %></a><br />
                Email: <a href="mailto: <%=emailAddress %>"><%=emailAddress %></a> </p>
        </div>
                
        <div id="objective">
            <p>
               <%= objective %>
            </p>
        </div>
        
        <div class="clear"></div>
        
        <dl>
            <dd class="clear"></dd>
            
            <dt>Education</dt>
            <dd>
                <h2><%=schoolAttended %></h2>
                <p><strong>Major:</strong> <%=degreeReceived %><br/>
                   <strong>GPA:</strong> 3.5 </p>
            </dd>
            
            <dd class="clear"></dd>
            
            <dt>Achievements</dt>
            <dd>
                <h2>Achievements</h2>
				<p><%=achievements %></p>
			
			 <dd class="clear"></dd>
					
            <dt>Skills</dt>
            <dd>
                <p><%=skills %></p>
            </dd>
            
                       <dd class="clear"></dd>
            
            <dt>Association</dt>
            <dd>
                <h2><%= associationName%> <span><%= associationLocation%> </span></h2>
                <ul>
                    <li><%=associationTasks%></li>
                </ul>
            
            
            <dd class="clear"></dd>
            
            <dt>Work Experience</dt>
            <dd>
                <h2><%= company%> <span><%= companyLocation%> </span></h2>
                <ul>
                    <li><%=workplaceTasks%></li>
                </ul>

        
            <dd class="clear"></dd>
            
            <dt>References</dt>
            <dd>Available on request</dd>
            
            <dd class="clear"></dd>
        </dl>
        
        <div class="clear"></div>
    
    </div>


      <!--Print-->
<script type="text/javascript">
    
    function myFunction() {
    window.print();
}

</script>  
</body>
</html>