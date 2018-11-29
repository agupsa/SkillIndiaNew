<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html lang="en">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">


<head>
<meta charset="utf-8">
<title>Establishment Display</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="Bootstrap/img/favicon.ico" rel="icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Raleway:400,500,700|Roboto:400,900"
	rel="stylesheet">

<!-- Bootstrap CSS File -->
<link href="Bootstrap/lib/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Libraries CSS Files -->
<link href="Bootstrap/lib/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">

<link href="Bootstrap/lib/jquery-ui/jquery-ui.css" rel="stylesheet">
<link href="Bootstrap/lib/jquery-ui/jquery-ui.structure.css" rel="stylesheet">
<link href="Bootstrap/lib/jquery-ui/jquery-ui.theme.css" rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="Bootstrap/css/style.css" rel="stylesheet">

<link href="Bootstrap/css/prettyrc.css" rel="stylesheet">
</head>

<body>
<!-- Form Heading -->
      <center><h2><b><mark> Establishment Courses</mark></b></h2></center><br>

   <!-- Header -->
  <header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <a href="index.jsp"><img src="Bootstrap/img/National.png" width="200" height="150" alt="" title="" /></img></a>
        
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li><a href="#about">About Us</a></li>
        
         
        <li class="menu-has-children"><a>Candidate</a>
            <ul>
              <li><a href="CandidateRegister.jsp">Candidate Register</a></li>
              <li><a href="CandidateLogin.jsp">Candidate Login</a></li>
             </ul>
          </li>
     
     <li class="menu-has-children"><a href="">Establishment</a>
            <ul>
              <li><a href="EstablishmentRegistration.jsp">Establishment Register</a></li>
              <li><a href="EstablishmentLogin.jsp">Establishment Login</a></li>
             </ul>
          </li>
        </ul>
        <ul class="nav-menu">
         <li><a href="search.jsp">Search</a></li>
         </ul>
          <ul class="nav-menu">
         <li><a href="courseApply.jsp">Course Form</a></li>
         </ul>
      </nav>
     <!-- #nav-menu-container -->

      <nav class="nav social-nav pull-right d-none d-lg-inline">
        <!-- <a href="https://www.twitter.com"><i class="fa fa-twitter"></i></a> <a href="https://www.facebook.com"><i class="fa fa-facebook"></i></a> <a href="https://www.linkedin.com"><i class="fa fa-linkedin"></i></a> <a href="https://www.outlook.com"><i class="fa fa-envelope"></i></a> -->
      </nav>
    </div>
  </header>
  <!-- #header -->
  <div class="bcg">
  <br><br>
<center>
<!-- Listing courses for selected establishment information in table -->
<h2>Table of Courses for selected Establishment</h2>
<table border="2" width="70%" cellpadding="2">  
<tr><th>Reg_no</th><th>Est Name</th><th>Course Id</th><th>Course Display</th><th>Trainer Name</th><th>Link</th></tr>  
   <c:forEach items="${clst}" var="temp">   
   <tr>  
   <td>${temp.estRegno }</td>
   <td>${temp.estName }</td>
   <td>${temp.courseId}</td>
   <td>${temp.courseName}</td>
   <td>${temp.trainerName}</td>
 
   <td><a href="apply/${temp.courseId}">Apply</a></td>      
   </tr>  
   </c:forEach>  
   </table>  
   </center>
   </div>
   
</body>
</html>