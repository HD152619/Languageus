<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${ pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <title>LANGUAGEUS_HOME</title>
  
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
    	div.container 
    	{
     		padding-top : 30px;
     		padding-bottom : 70px;
    	}
    	</style>
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
	<li class="nav-item active" >
	<a class="nav-link" href="${contextPath}/jsp/main.jsp" >MAIN<span class="sr-only">(current)</span></a>
       <li class="nav-item" onmouseover = "menu_over(this);" onmouseout = "menu_out(this);">
        <a class="nav-link" href="${contextPath}/jsp/users.jsp" >USERS</a>
      </li>  
      <li class="nav-item" onmouseover = "menu_over(this);" onmouseout = "menu_out(this);">
        <a class="nav-link" href="${contextPath}/jsp/mentoring.jsp">MENTORING</a>
      </li>
       <li class="nav-item" onmouseover = "menu_over(this);" onmouseout = "menu_out(this);">
        <a class="nav-link"  href = "${contextPath}/jsp/contact.jsp">CONTACT</a>
      </li>
      	<li class="nav-item" onmouseover = "menu_over(this);" onmouseout = "menu_out(this);">
        <a class="nav-link"  href = "${contextPath}/jsp/rate.jsp">RATE</a>
      </li>
</ul>
    
<%-- 세션이 없는 경우 --%>
         <c:if test="${ user == null }">
            <a class="text-bold text-white" style="text-decoration: none"
               href="${contextPath}/jsp/login.jsp" method="post">Sign in</a>
            <span class="text-bold text-white">&nbsp; or &nbsp;</span>
            <a class="text-bold text-white" style="text-decoration: none"
               href="${contextPath}/jsp/signup.jsp" method="get">Sign up</a>
         </c:if>

         <%-- 세션이 있는 경우 --%>
         <c:if test="${ !empty user }">
            <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
               <li class="nav-item dropdown"><a
                  class="nav-item nav-link dropdown-toggle mr-md-2" href="${contextPath}/jsp/webnote.jsp"
                  id="bd-versions" data-toggle="dropdown" aria-haspopup="true"
                  aria-expanded="false"> ${ user.name }님 </a>
                  <div class="dropdown-menu dropdown-menu-right"
                     aria-labelledby="bd-versions">
                     <form action="${contextPath}/logout.do" method="post">
                        <button type="submit" class="dropdown-item"1>Sign out</button>
                     </form>
                  </div></li>
            </ul>
         </c:if>
	    </div>
	    </nav>

<div class = "ctn" id = "center">
    <h1>Hello and Welcome to L A N G U A G E U S !</h1><br><br>
</div>

<div class="card-group"  id = "c_group">
  <div class="card">
    <img class="card-img-top" src="${contextPath}/img/m_1.png" alt="Card image cap">
    <div class="card-body">
      <h4 class="card-title">How Can I Start?</h4>
      <p class="card-text">Set Your Information, and Get Others' Requests!</p>
      <a href="${contextPath}/jsp/users.jsp" class="text-muted" target = "_blank">Find Out More</a>
    </div>
  </div>
  <div class="card">
    <img class="card-img-top" src="${contextPath}/img/m_2.png" alt="Card image cap">
    <div class="card-body">
      <h4 class="card-title">New Messages!</h4>
      <p class="card-text">Yayy! You Got New Messages from New Mentor(Mentee)XD</p>
      <a href="${contextPath}/jsp/mentoring.jsp" class="text-muted" target = "_blank">Find Out More</a>
    </div>
  </div>

  <div class="card">
    <img class="card-img-top" src="${contextPath}/img/m_5.png" alt="Card image cap">
    <div class="card-body">
      <h4 class="card-title">Where Is My Mentor(Mentee)?</h4>
      <p class="card-text">Accept / Reject / Delete!</p>
      <a href="${contextPath}/jsp/contact.jsp" class="text-muted" target = "_blank">Find Out More</a>
    </div>
  </div>
</div>

<!-- Login Modal -->
<div class="modal" id = "newModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Login Result</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>    
      <div class="modal-body">
        <p></p>
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>