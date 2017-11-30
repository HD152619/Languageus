<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${ pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mentoring_JSP</title>
<!-- Required meta tags -->
    <meta charset="utf-8">
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel = "stylesheet" href = "${contextPath}/css/Rcss.css">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<style>
    	div.ctn
    	{
    		padding-top : 40px;
    		padding-bottom : 20px;
    	}
    	</style>
</head>

<body style = "background-color: orange">
  <nav class="navbar navbar-expand-lg navbar-dark bg-black">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
  
<ul class="navbar-nav mr-auto" id = "font">
       <li class="nav-item" onmouseover = "menu_over(this);" onmouseout = "menu_out(this);">
        <a class="nav-link" href="${contextPath}/jsp/main.jsp" >MAIN<span class="sr-only">(current)</span></a>
       <li class="nav-item" onmouseover = "menu_over(this);" onmouseout = "menu_out(this);">
        <a class="nav-link" href="${contextPath}/jsp/users.jsp" >USERS</a>
      </li>  
      <li class="nav-item active" >
        <a class="nav-link" href="${contextPath}/jsp/mentoring.jsp">MENTORING</a>
      </li>
       <li class="nav-item" onmouseover = "menu_over(this);" onmouseout = "menu_out(this);">
        <a class="nav-link"  href = "${contextPath}/jsp/contact.jsp">CONTACT</a>
      </li>
      	<li class="nav-item" onmouseover = "menu_over(this);" onmouseout = "menu_out(this);">
        <a class="nav-link"  href = "${contextPath}/jsp/rate.jsp">RATE</a>
      </li>
</ul>
</div>

<!-- Message Board -->
<div class = "ctn" id = "center">
	<table width="100%" cellpadding="0" cellspacing="0" border="0" >
  	<tr height="5"><td width="5"></td></tr>
  
	 <tr style="text-align:center;">
	   <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td>
	   <td width="73">Number</td>
	   <td width="73">Writer</td>
	   <td width="200">Title</td>
	   <td width="7"><img src="#" width="5" height="30" /></td>
	  </tr>
	<tr height="25" align="center">
	</tr>
	  <tr height="1" bgcolor="#D2D2D2"><td colspan="6"></td></tr>
	
	 <tr height="1" bgcolor="#82B5DF"><td colspan="6" width="752"></td></tr>
	 </table>

<table width="100%" cellpadding="0" cellspacing="0" border="0" class = "ctn">
  <tr><td colspan="4" height="5"></td></tr>
  <tr align="center">
   <td><input type=button value="Write"></td>
  </tr>
</table>
</div>

</body>
</html>