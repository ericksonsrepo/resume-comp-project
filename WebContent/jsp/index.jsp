<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        
<!DOCTYPE html>
<html lang="en">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Resume Template - Home Page</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/creative.min.css" rel="stylesheet">
    
    <style type="text/css">

.thumbnail{
position: relative;
z-index: 0;
}

.thumbnail:hover{
background-color: transparent;
z-index: 50;
}

.thumbnail span{ /*CSS for enlarged image*/
position: absolute;
background-color: #fcc101;
padding: 5px;
left: -1000px;
border: 1px dashed gray;
visibility: hidden;
color: black;
text-decoration: none;
}

.thumbnail span img{ /*CSS for enlarged image*/
border-width: 0;
padding: 2px;
}

.thumbnail:hover span{ /*CSS for enlarged image on hover*/
visibility: visible;
top: 0;
left: 60px; /*position where enlarged image should offset horizontally */

}

</style>

  </head>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top"></a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#tophome">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#Template">Resume</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header class="masthead text-center text-black d-flex">

      <div class="container my-auto" id="tophome">
        <div class="row">
          <div class="col-lg-10 mx-auto">
            <h1 class="text-uppercase">
              <strong>Introduction to strong resumes</strong>
            </h1>
            <hr>
          </div>
          <div class="col-lg-8 mx-auto">
            <p class="text-faded mb-5">There are multiple types of resumes such as Chronological, Functional, Combination & Targeted.</p>
          </div>
        </div>
      </div>
    </header>


	<!-- About The Team Section -->
    <section class="bg-primary" id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading text-Black"> About Us</h2>
            <hr class="light my-4">
            <p class="text-black mb-4">We are from the coding club from California State University, Los Angeles. We are made up of Accounting, Computer Information System, and Management majors.</p>
          </div>
        </div>

         <div class="row">
		    <div class="col-sm-4 text-center">
		    <div class="service-box mt-5 mx-auto">
		    	<a href="https://www.linkedin.com/in/erickson-angeles-872964b9" target="_blank"><img src ="img/erickson.png"></a>
				<a href="https://www.linkedin.com/in/erickson-angeles-872964b9" target="_blank"><h3 class=" mb-3">Erick Angeles</h3></a>
              <p class="text-muted mb-0">Chronological Template  shows your job history in a timeline.</p>
              </div>
		    </div>

		    <div class="col-sm-4 text-center">
		    <div class="service-box mt-5 mx-auto">
		    	<a href="https://www.linkedin.com/in/eric-kha/" target="_blank"><img src ="img/eric.png"></a>
				<a href="https://www.linkedin.com/in/eric-kha/" target="_blank"><h3 class=" mb-3">Eric Kha</h3></a>
              <p class="text-muted mb-0">Targeted resume customizes the specific information for a specific position you want.</p>
              </div>
		    </div>
	
		    <div class="col-sm-4 text-center">
		    <div class="service-box mt-5 mx-auto">
		    	<a href="https://www.linkedin.com/in/rtrenh" target="_blank"><img src ="img/ryan.png"></a>
				<a href="https://www.linkedin.com/in/rtrenh" target="_blank"><h3 class=" mb-3">Ryan Trenh</h3></a>
              <p class="text-muted mb-0">Combination of both Funtional & Chronological</p>
              </div>
		    </div>
	    </div>
	    
	             
	  <div class="row">
		    <div class="col-sm-6 text-center">
		    <div class="service-box mt-5 mx-auto">
		    	<a href="https://www.linkedin.com/in/alyssabenipayo/" target="_blank"><img src ="img/alyssa.png"></a>
				<a href="https://www.linkedin.com/in/alyssabenipayo/" target="_blank"><h3 class=" mb-3">Alyssa Benipayo</h3></a>
              <p class="text-muted mb-0">Functional Template focuses on your skills and not on your work history.</p>
              </div>
		    </div>

		    <div class="col-sm-6 text-center">
		    <div class="service-box mt-5 mx-auto">
		    	<a href="https://www.linkedin.com/in/mavargascaraballo/" target="_blank"><img src ="img/maria.png"></a>
				<a href="https://www.linkedin.com/in/mavargascaraballo/" target="_blank"><h3 class=" mb-3">Maria Vargas</h3></a>
              <p class="text-muted mb-0">Targeted resume customizes the specific information for a specific position you want.</p>
              </div>
		    </div>
	    </div>

      </div>
    </section>
    
    
    <!-- Resume Template Section -->
    <section id="Template">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading">Resume</h2>
            <hr class="my-4">
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
		  <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
            	<a class="thumbnail" href="resume1/index.jsp"><img src="img/resume1.jpg"/><span>
            	Resume Template 1<img src="img/resume1zoom.jpg" /></span></a>
				<a href="resume1/index.jsp" target="_blank" class="w-inline-block">Template 1</a>
			<h3>Chronological Template</h3>
              <p class="text-muted mb-0">Chronological Template  shows your job history in a timeline.</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
           	<a class="thumbnail" href="resume2/index.jsp"><img src="img/resume2.jpg"/><span>
            	Resume Template 2<img src="img/resume2zoom.jpg" /></span></a>
			 <a href="resume2/index.jsp" target="_blank" class="w-inline-block">Template 2</a>
              <h3 class="mb-3">Functional Template</h3>
              <p class="text-muted mb-0">Functional Template focuses on your skills and not on your work history.</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
           	<a class="thumbnail" href="resume3/index.jsp"><img src="img/resume3.jpg"/><span>
            	Resume Template 3<img src="img/resume3zoom.jpg" /></span></a>
			<a href="resume3/index.jsp" target="_blank" class="w-inline-block">Template 3</a>
			<h3 class="mb-3">Functional & Chronological</h3>
              <p class="text-muted mb-0">Combination of both Funtional & Chronological</p>
            </div>
          </div>
		  
          <div class="col-lg-3 col-md-6 text-center">
            <div class="service-box mt-5 mx-auto">
           	<a class="thumbnail" href="resume4/index.jsp"><img src="img/resume4.jpg"/><span>
            	Resume Template 4<img src="img/resume4zoom.jpg" /></span></a>
              <a href="resume4/index.jsp" target="_blank" class="w-inline-block">Template 4</a>
              <h3 class="mb-3">Targeted Resume</h3>
              <p class="text-muted mb-0">Targeted resume customizes the specific information for a specific position you want.</p>
            </div>
          </div>
        </div>
      </div>
    </section>

	<!-- Contact Information Section -->
    <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h2 class="section-heading"> Any <br> Questions?</h2>
            <hr class="my-4">
            <p class="mb-5">Contact <br>California State University, Los Angeles</p>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 ml-auto text-center">
            <i class="fa fa-phone fa-3x mb-3 sr-contact"></i>
            <p>(323)-343-1352</p>
          </div>
          <div class="col-lg-4 mr-auto text-center">
            <i class="fa fa-envelope-o fa-3x mb-3 sr-contact"></i>
            <p>
              <a href="mailto:your-email@your-domain.com">csulacodingclub@calstatela.edu</a>
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/creative.min.js"></script>

  </body>

</html>
