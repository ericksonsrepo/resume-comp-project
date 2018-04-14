<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">
<head>
<title>Template 3</title>

	<link href="https://fonts.googleapis.com/css?family=Poppins:100,300,500" rel="stylesheet">
		<link rel="stylesheet" href="css/main.css">
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
<!------ Include the above in your HEAD tag ---------->
body {font-family: Arial;}

/* Style the tab */
.tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
}

/* Style the close button */
.topright {
    float: right;
    cursor: pointer;
    font-size: 28px;
}

.topright:hover {color: red;}

/* Style the list */
	ul.breadcrumb {
	    padding: 10px 16px;
	    list-style: none;
	    background-color: #eee;
	}
	
	/* Display list items side by side */
	ul.breadcrumb li {
	    display: inline;
	    font-size: 18px;
	}
	
	/* Add a slash symbol (/) before/behind each list item */
	ul.breadcrumb li+li:before {
	    padding: 8px;
	    color: black;
	    content: "/\00a0";
	}
	
	/* Add a color to all links inside the list */
	ul.breadcrumb li a {
	    color: #0275d8;
	    text-decoration: none;
	}ßß
	
	/* Add a color on mouse-over */
	ul.breadcrumb li a:hover {
	    color: #01447e;
	    text-decoration: underline;
	}
	body {
    margin-top:40px;
}
.stepwizard-step p {
    margin-top: 10px;
}
.stepwizard-row {
    display: table-row;
}
.stepwizard {
    display: table;
    width: 60%;
    position: relative;
}
.stepwizard-step button[disabled] {
    opacity: 1 !important;
    filter: alpha(opacity=100) !important;
}
.stepwizard-row:before {
    top: 14px;
    bottom: 0;
    position: absolute;
    content: " ";
    width: 100%;
    height: 1px;
    background-color: #ccc;
    z-order: 0;
}
.stepwizard-step {
    display: table-cell;
    text-align: center;
    position: relative;
}
.btn-circle {
    width: 30px;
    height: 30px;
    text-align: center;
    padding: 6px 0;
    font-size: 12px;
    line-height: 1.428571429;
    border-radius: 15px;
}
</style>
</head>



	<body class="dup-body">
		<div class="dup-body-wrap">
			<!-- Start Header Area -->
			<header class="default-header">
				<div class="header-wrap">
					<div class="header-top d-flex justify-content-between align-items-center">
						<div class="logo">
							<a href="index.html"><img src="img/logo.png" alt=""></a>
						</div>
				</div>
				</div>
			</header>
		<!-- End Header Area -->
		<!-- Start Banner Area -->
		<section class="banner-area relative">
			<div class="overlay overlay-bg"></div>
			Click on the x button in the top right corner to close the current tab:</p>

<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'Template1')">Template 1</button>
  <button class="tablinks" onclick="openCity(event, 'Template2')">Template 2</button>
  <button class="tablinks" onclick="openCity(event, 'Template3')" id="defaultOpen">Template 3</button>
  <button class="tablinks" onclick="openCity(event, 'Template4')" >Template 4</button>
</div>

<div id="Template1" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Template 1</h3>
    <input class="btn btn-md btn-primary" value="Click for Template 1" onclick="location.href='http://localhost:9090/ResumeComp/jsp/resume1/index.jsp'"></p>
  <a href="http://localhost:9090/ResumeComp/jsp/resume1/index.jsp"><img src="img/resume1.jpg"></a></p>
</div>

<div id="Template2" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Template 2</h3>
    <input class="btn btn-md btn-primary" value="Click for Template 2" onclick="location.href='http://localhost:9090/ResumeComp/jsp/resume2/index.jsp'"></p>
  <a href="http://localhost:9090/ResumeComp/jsp/resume2/index.jsp"><img src="img/resume2.png"></a></p>
</div>



<div id="Template3" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  		
  		<!-- Breadcrumb Navbar -->
					<ul class="breadcrumb">
				  <li><a href="http://localhost:9090/ResumeComp/jsp/index.jsp">Home</a></li>
				  <li>Template 3</li>
				</ul>
		<p>		
  
    
        <div class="row setup-content" id="step-1">
            <div class="col-xs-12">
                <div class="col-md-12 well text-center">
                    <h1> STEP 1</h1>
                    <!-- <form> -->
		
  <form action="<%=request.getContextPath()%>/ResumeForm3" method="post">
             
        			<fieldset>
								<legend id="title5" class="desc"><strong><u>Personal Information</u></strong></legend><hr>
						</fieldset>
						
						<div class="row">
						<div class="col-sm-6 form-group">
							
								<label>First Name</label>
								<input type="text" name="FirstName" placeholder="Enter First Name Here.." class="form-control" value="${FirstName}">
							</div>
							<div class="col-sm-6 form-group">
								<label>Last Name</label>
								<input type="text" name="LastName" placeholder="Enter Last Name Here.." class="form-control" value="${LastName}">
							</div>
						</div>					
						<div class="form-group">
						<label>Phone Number</label>
						<input type="text" name="PhoneNumber" placeholder="Enter Phone Number Here.." class="form-control">
					</div>		
					<div class="form-group">
						<label>Email Address</label>
						<input type="email" name="emailAddress" placeholder="Enter Email Address Here.." class="form-control">
						
					</div>	
							<!-- This is where you input your career information -->
					<div class="form-group">
						<label>Objective</label>
						<textarea name="objective" placeholder="Enter Objective Here.." class="form-control" rows="5"></textarea>
					</div>
										<div class="form-group">
						<label>Achievements</label>
						<textarea name="achievements" placeholder="List all your achievements..." class="form-control" rows="5"></textarea>
					</div>
					<div class="form-group">
						<label>Skills Description</label>
						<textarea name="skills" placeholder="Describe your skills or list skills separated by comma for ex. Office and records management, database administration, " class="form-control" rows="5"></textarea>
					</div>
					</p>					

                    <!-- </form> -->
                </div>
            </div>
        </div>


        <div class="row setup-content" id="step-2">
            <div class="col-xs-12">
                <div class="col-md-12 well text-center">
                    <h1 class="text-center"> STEP 2</h1>

                    <!--<form>-->
                      <!-- This is where you input your Education information -->	


          				<fieldset>
								<legend id="title5" class="desc"><strong><u>Education Information</u></strong></legend><hr>
						</fieldset>
							<div class="form-group">
								<label>School Attended</label>
								<input type="text" name="schoolAttended" placeholder="Enter School Attended" class="form-control">
							</div>
		
							<div class="form-group">
								<label>Degree Received</label>
								<input type="text" name="degreeReceived" placeholder="Bachelor of Science....." class="form-control">
							</div>
						</div>
					
						<Br>
						
                   <!--</form> -->

                    
                </div>
            </div>

  
        <div class="row setup-content" id="step-3">
            <div class="col-xs-12">
                <div class="col-md-12 well text-center">
                    <h1 class="text-center"> STEP 3</h1>

                   <fieldset>
								<legend id="title5" class="desc"><strong><u>Associations</u></strong></legend><hr>
						</fieldset>
							
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Association Name</label>
								<input type="text" name="associationName" placeholder="Enter City Name Here.." class="form-control">
							</div>	
							<div class="col-sm-6 form-group">
								<label>Association Location</label>
								<input type="text" name="associationLocation" placeholder="Enter State Name Here.." class="form-control">
							</div>
						</div>
						
							<div class="form-group">
								<label>Association Tasks</label>
								<textarea name="associationTasks" placeholder="Describe all task" rows="3" class="form-control"></textarea>
							</div>
							
						<Br>
						
					

                </div>
            </div>
        </div>
        
        
           <div class="row setup-content" id="step-4">
            <div class="col-xs-12">
                <div class="col-md-12 well text-center">
                    <h1 class="text-center"> STEP 4</h1>

                   

					<fieldset>
								<legend id="title5" class="desc"><strong><u>Work Experience</u></strong></legend><hr>
						</fieldset>
							
							<div class="row">
							<div class="col-sm-6 form-group">
								<label>Company</label>
								<input type="text" name="company" placeholder="Enter City Name Here.." class="form-control">
							</div>	
							<div class="col-sm-6 form-group">
								<label>Company Location</label>
								<input type="text" name="companyLocation" placeholder="Enter State Name Here.." class="form-control">
							</div>
						</div>
						
							<div class="form-group">
								<label>Description</label>
								<textarea name="workplaceTasks" placeholder="Describe all task" rows="3" class="form-control"></textarea>
							</div>
					</p>
 											<button class="btn btn-lg btn-info"  type="submit">Submit</button>
                    	       </div>
			            </div>
			        </div>
</form>			        
			       
			    </p>
			</div>

</form>

<div id="Template4" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Template 4</h3>
    <input class="btn btn-md btn-primary" value="Click for Template 4" onclick="location.href='http://localhost:9090/ResumeComp/jsp/resume4/index.jsp'"></p>
  <a href="http://localhost:9090/ResumeComp/jsp/resume4/index.jsp"><img src="img/resume4.jpg"></a></p>
</div>
			</div>
		</section>
		<!-- End Banner Area -->
		


<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>

<script>
	 var currentStep = 1;

$(document).ready(function () {

    $('.li-nav').click(function () {

        var $targetStep = $($(this).attr('step'));
        currentStep = parseInt($(this).attr('id').substr(7));

        if (!$(this).hasClass('disabled')) {
            $('.li-nav.active').removeClass('active');
            $(this).addClass('active');
            $('.setup-content').hide();
            $targetStep.show();
        }
    });

    $('#navStep1').click();

});

       
function step1Next() {
    //You can make only one function for next, and inside you can check the current step
    if (true) {//Insert here your validation of the first step
        currentStep += 1;
        $('#navStep' + currentStep).removeClass('disabled');
        $('#navStep' + currentStep).click();
    }
}

function prevStep() {
    //Notice that the btn prev not exist in the first step
    currentStep -= 1;
    $('#navStep' + currentStep).click();
}

function step2Next() {
    if (true) {
        $('#navStep3').removeClass('disabled');
        $('#navStep3').click();
    }
}

function step3Next() {
    if (true) {
        $('#navStep4').removeClass('disabled');
        $('#navStep4').click();
    }
}

</script>
		
	</body>
</html>
