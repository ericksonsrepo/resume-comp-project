<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        
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
	%>
	
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
	String description = request.getParameter("description");
	String skills = request.getParameter("skills");%>
	
			<!-- Social Media -->
	<%String facebook = request.getParameter("facebook");
	String linkedIn = request.getParameter("linkedIn");
	String twitter = request.getParameter("twitter");
	String github = request.getParameter("github");%>

    <p>
      <a class="noprint nodec" id="printit" href="#"
                        onclick="return xepOnline.Formatter.Format('structures',{pageMargin:'0.5in'});"
                            ><button type="button" class="btn btn-primary">Download as PDF</button></a>

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
                    <div class="summary">
                    <p><%= skills%></p>
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

       <!-- Set override xepOnline properties here -->
        <script>
            function printSelected(){
            var selected = [];
            $('#report input:checked').each(function() {
                selected.push($(this).attr('name'));
            });
            if ($(selected).length > 0){
                xepOnline.Formatter.FormatGroup($(selected),{render:'download',pageMargin:'0.5in'});
            }
        }
        </script>  

 <!--<script>
let doc = new jsPDF('p','pt','a4');

doc.addHTML(document.body,function() {
    doc.save('resume.pdf');
});</script>-->

<script type="text/javascript">

    anychart.onDocumentReady(function() {
        //create data set on our data
        var dataSet = new anychart.data.Set([
            ['P1', 162, 142, 122],
            ['P2', 134, 154, 144],
            ['P3', 116, 126, 116],
            ['P4', 122, 132, 162],
            ['P5', 178, 168, 148],
            ['P6', 144, 154, 194],
            ['P7', 125, 135, 145],
            ['P8', 176, 166, 136],
            ['P9', 156, 188, 118],
            ['P10', 195, 120, 130],
            ['P11', 215, 115, 155],
            ['P12', 176, 136, 166],
            ['P13', 167, 147, 137],
            ['P14', 142, 172, 152],
            ['P15', 117, 137, 177],
            ['P16', 113, 123, 183],
            ['P17', 132, 134, 144],
            ['P18', 146, 146, 166],
            ['P19', 169, 159, 189],
            ['P20', 184, 144, 134]
        ]);

        //map data for the first series, take x from the zero column and value from the first column of data set
        var seriesData_1 = dataSet.mapAs({x: [0], value: [1]});

        //map data for the second series, take x from the zero column and value from the second column of data set
        var seriesData_2 = dataSet.mapAs({x: [0], value: [2]});

        //map data for the second series, take x from the zero column and value from the third column of data set
        var seriesData_3 = dataSet.mapAs({x: [0], value: [3]});

        //create area chart
        chart = anychart.areaChart();

        //set container id for the chart
        chart.container('anychart');

        //set chart title text settings
        chart.title().text('100% Stacked Area Chart');

        //set chart Y scale settings
        chart.yScale()
                .stackMode('percent') //force chart to stack series values in percentage
                .maximum(100)         //set maximum scale value
                .ticks()              //access to scale ticks settings , note that chaining sequence now continue from ticks object
                .interval(10);        //set scale ticks interval


        //set yAxis labels formatting, force it to add % to values
        chart.yAxis(0).labels().textFormatter(function(info) {
            return info.value + '%';
        });

        //using fill function we can create a pretty gradient for the series
        //note that we using series sourceColor here, which can be configured separately for each series by 'color' method
        var fillFunction = function() {
            return {keys: [
                {offset: 0, color: this.sourceColor},
                {offset: 1, color: anychart.color.darken(this.sourceColor)}
            ], angle: -90, opacity: 1};
        };

        //create first area series on mapped data and specify series fill function
        chart.area(seriesData_1).fill(fillFunction);

        //create second area series on mapped data and specify series fill function
        chart.area(seriesData_2).fill(fillFunction);

        //create third area series on mapped data, specify series fill function and color
        chart.area(seriesData_3).color('#EEEE25').fill(fillFunction);

        chart.draw();
        
        var clearLastDiv = function() {
            var div = $('div').filter(':last');            
            if($(div).find('g').children().length == 0) {
                $(div).remove();
            }
            var svg = $('svg').filter(':last');
            if($(svg).attr('width') == '0' && $(svg).attr('height') == '0') {
                $(svg).remove();
            }
        }
        setTimeout(clearLastDiv, 500);
    });

</script>


    <!-- Javascript -->          
    <script type="text/javascript" src="http://localhost:9090/ResumeComp/jsp/resume1/assets/plugins/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="http://localhost:9090/ResumeComp/jsp/resume1/assets/plugins/bootstrap/js/bootstrap.min.js"></script>    
    <!-- custom js -->
    <script type="text/javascript" src="http://localhost:9090/ResumeComp/jsp/resume1/assets/js/main.js"></script>   
    <script src="http://localhost:9090/ResumeComp/jsp/js/xepOnline.jqPlugin.008.js"></script>
    
             
</body>
</html> 

