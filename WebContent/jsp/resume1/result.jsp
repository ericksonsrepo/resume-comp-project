<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>Template 1</title>
    <!-- Meta -->
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    
    <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.0.272/jspdf.debug.js"></script>-->

    <link rel="stylesheet" href="http://localhost:9090/ResumeComp/jsp/resume1/assets/plugins/bootstrap/css/bootstrap.min.css">   
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="http://localhost:9090/ResumeComp/jsp/resume1/assets/plugins/font-awesome/css/font-awesome.css">
    
    <!-- Theme CSS -->  
    <link id="theme-style" rel="stylesheet" href="http://localhost:9090/ResumeComp/jsp/resume1/assets/css/styles.css">
  
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
      <a href="http://pdf-ace.com/pdfme" target="_blank"><button type="button" class="btn btn-primary">Download as PDF</button></a>

    <button class="btn btn-primary hidden-print" onclick="myFunction()"><span class="glyphicon glyphicon-print" aria-hidden="true"></span> Print</button>
    <div class="wrapper" id="content">
    </div>
    </p>

         
      <div class="wrapper">
        <div class="sidebar-wrapper">
            <div class="profile-container">
                <img class="profile" src="http://localhost:9090/ResumeComp/jsp/resume1/assets/images/profile.png" alt="" />
                <h1 class="name"><%= FirstName %> <%= LastName %></h1>
                <h3 class="tagline"><%= position %></h3>
            </div><!--//profile-container-->
            
               <div class="contact-container container-block">
                    <h4 class="degree"><%=Address %></h4>
                    <h5 class="meta"><%=City %>, <%=State %> <%=ZipCode %></h5>
              </div>
            
            <div class="contact-container container-block">
                <ul class="list-unstyled contact-list">
                    <li class="email"><i class="fa fa-envelope"></i><a href="mailto: <%=emailAddress %>"><%=emailAddress %></a></li>
                    <li class="phone"><i class="fa fa-phone"></i><a href="tel:<%=PhoneNumber %>"><%=PhoneNumber %></a></li>
                    <li class="website"><i class="fa fa-globe"></i><a href="<%=Website %>" target="_blank"><%=Website %></a></li>
                    <li class="linkedin"><i class="fa fa-linkedin"></i><a href="<%=linkedIn %>" target="_blank"><%=linkedIn %></a></li>
                    <li class="github"><i class="fa fa-github"></i><a href="<%=github %>" target="_blank"><%=github %></a></li>
                    <li class="twitter"><i class="fa fa-twitter"></i><a href="<%=twitter %>" target="_blank"><%=twitter %></a></li>
                </ul>
            </div><!--//contact-container-->
            <div class="education-container container-block">
                <h2 class="container-block-title">Education</h2>
                <div class="item">
                    <h4 class="degree"><%=degreeReceived %></h4>
                    <h5 class="meta"><%=schoolAttended %></h5>
                </div><!--//item-->
                <div class="item">
                    <h4 class="degree"><%=degreeReceived %></h4>
                    <h5 class="meta"><%=schoolAttended %></h5>
                </div><!--//item-->
            </div><!--//education-container-->
            
            <div class="languages-container container-block">
                <h2 class="container-block-title">Languages</h2>
                <ul class="list-unstyled interests-list">
                    <li>English <span class="lang-desc">(Native)</span></li>
                    <li>French <span class="lang-desc">(Professional)</span></li>
                    <li>Spanish <span class="lang-desc">(Professional)</span></li>
                </ul>
            </div><!--//interests-->
           
            
        </div><!--//sidebar-wrapper-->
        
        <div class="main-wrapper">
            
            <section class="section summary-section">
                <h2 class="section-title"><i class="fa fa-user"></i>Career Profile</h2>
                <div class="summary">
                    <p><%= careerProfile %></p>
                </div><!--//summary-->
            </section><!--//section-->
            
            <section class="section experiences-section">
                <h2 class="section-title"><i class="fa fa-briefcase"></i>Experiences</h2>
                
                <div class="item">
                    <div class="meta">
                        <div class="upper-row">
                            <h3 class="job-title"><%= title %></h3>
                            <div class="time"><%=dateStarted %> - <%=dateEnded %></div>
                        </div><!--//upper-row-->
                        <div class="company"><%= company %>, San Francisco</div>
                    </div><!--//meta-->
                    <div class="details">
                        <p><%=description%></p>
                    </div><!--//details-->
                </div><!--//item-->
                
                               <div class="item">
                    <div class="meta">
                        <div class="upper-row">
                            <h3 class="job-title"><%= title %></h3>
                            <div class="time"><%=dateStarted %> - <%=dateEnded %></div>
                        </div><!--//upper-row-->
                        <div class="company"><%= company %>, San Francisco</div>
                    </div><!--//meta-->
                    <div class="details">
                        <p><%=description%></p>
                    </div><!--//details-->
                </div><!--//item-->
               
                
            </section><!--//section-->
            
            <section class="section projects-section">
                <h2 class="section-title"><i class="fa fa-archive"></i>Projects</h2>
                <div class="intro">
                    <p>You can list your side projects or open source libraries in this section. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum et ligula in nunc bibendum fringilla a eu lectus.</p>
                </div><!--//intro-->
                <div class="item">
                    <span class="project-title"><a href="#hook">Velocity</a></span> - <span class="project-tagline">A responsive website template designed to help startups promote, market and sell their products.</span>
                    
                </div><!--//item-->
                <div class="item">
                    <span class="project-title"><a href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-web-development-agencies-devstudio/" target="_blank">DevStudio</a></span> - 
                    <span class="project-tagline">A responsive website template designed to help web developers/designers market their services. </span>
                </div><!--//item-->
                <div class="item">
                    <span class="project-title"><a href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-for-startups-tempo/" target="_blank">Tempo</a></span> - <span class="project-tagline">A responsive website template designed to help startups promote their products or services and to attract users &amp; investors</span>
                </div><!--//item-->
                <div class="item">
                    <span class="project-title"><a href="hhttp://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-mobile-apps-atom/" target="_blank">Atom</a></span> - <span class="project-tagline">A comprehensive website template solution for startups/developers to market their mobile apps. </span>
                </div><!--//item-->
                <div class="item">
                    <span class="project-title"><a href="http://themes.3rdwavemedia.com/website-templates/responsive-bootstrap-theme-for-mobile-apps-delta/" target="_blank">Delta</a></span> - <span class="project-tagline">A responsive Bootstrap one page theme designed to help app developers promote their mobile apps</span>
                </div><!--//item-->
            </section><!--//section-->
            
            <section class="skills-section section">
                <h2 class="section-title"><i class="fa fa-rocket"></i>Skills &amp; Proficiency</h2>
                <div class="skillset">        
                    <div class="item">
                        <h3 class="level-title"><%= skills %> &amp; Django</h3>
                        <div class="level-bar">
                            <div class="level-bar-inner" data-level="98%">
                            </div>                                      
                        </div><!--//level-bar-->                                 
                    </div><!--//item-->
                    
                    <div class="item">
                        <h3 class="level-title"><%= skills %> &amp; jQuery</h3>
                        <div class="level-bar">
                            <div class="level-bar-inner" data-level="98%">
                            </div>                                      
                        </div><!--//level-bar-->                                 
                    </div><!--//item-->
                    
                    <div class="item">
                        <h3 class="level-title"><%= skills %></h3>
                        <div class="level-bar">
                            <div class="level-bar-inner" data-level="98%">
                            </div>                                      
                        </div><!--//level-bar-->                                 
                    </div><!--//item-->
                    
                    <div class="item">
                        <h3 class="level-title"><%= skills %> &amp; CSS</h3>
                        <div class="level-bar">
                            <div class="level-bar-inner" data-level="95%">
                            </div>                                      
                        </div><!--//level-bar-->                                 
                    </div><!--//item-->
                    
                    <div class="item">
                        <h3 class="level-title"><%= skills %></h3>
                        <div class="level-bar">
                            <div class="level-bar-inner" data-level="85%">
                            </div>                                      
                        </div><!--//level-bar-->                                 
                    </div><!--//item-->
                    
                    <div class="item">
                        <h3 class="level-title"><%= skills %></h3>
                        <div class="level-bar">
                            <div class="level-bar-inner" data-level="60%">
                            </div>                                      
                        </div><!--//level-bar-->                                 
                    </div><!--//item-->
                    
                </div>  
            </section><!--//skills-section-->
            
        </div><!--//main-body-->
    </div>

    <!--Print-->
<script type="text/javascript">
    
    function myFunction() {
    window.print();
}

</script>

 <!--<script>
let doc = new jsPDF('p','pt','a4');

doc.addHTML(document.body,function() {
    doc.save('resume.pdf');
});</script>-->

    <!-- Javascript -->          
    <script type="text/javascript" src="http://localhost:9090/ResumeComp/jsp/resume1/assets/plugins/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="http://localhost:9090/ResumeComp/jsp/resume1/assets/plugins/bootstrap/js/bootstrap.min.js"></script>    
    <!-- custom js -->
    <script type="text/javascript" src="http://localhost:9090/ResumeComp/jsp/resume1/assets/js/main.js"></script>            
</body>
</html> 

