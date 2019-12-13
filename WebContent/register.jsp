<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    String errorMsg="";
    if(session.getAttribute("ERROR")!=null){
    	errorMsg=(String)session.getAttribute("ERROR");
    	session.removeAttribute("ERROR");
    }
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/css/bootstrap.min.css" integrity="sha384-SI27wrMjH3ZZ89r4o+fGIJtnzkAnFs3E4qz9DIYioCQ5l9Rd/7UAa8DHcaL8jkWt" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
<div class="row">
<div class="col-12 h4 bg-dark text-light d-flex justify-content-center align-items-center" style="height:15vh">
Register Page
</div>
</div>
<form action="reg" method="post">
<div class="row">
<div class="col-4"></div>
<div class="col-4 bg-info text-light d-flex justify-content-center border border-primary rounded-circle" style="text-align: center">
<ul class="list" style="list-style:none">
<li>Username</li>
<li> <input type="text" placeholder="Username" name="uname" required></li>
<li>Email</li>
<li> <input type="email" placeholder="Email" name="email" required></li>
<li>Password</li>
<li> <input type="password" placeholder="****" name="pass" required></li>
<li>Moblie Number</li>
<li><input type="text" placeholder="9158351078" name="mn" required></li>
<li> <input type="submit" class="btn btn-primary" value="Register">
<a class="btn btn-primary" role="button" href="login.jsp">Login</a>
</li>
<%if(errorMsg!=""){
	%>
	<div class="alert alert-danger" role="alert"><%=errorMsg %></div>
<% }%>
</ul>


</div>
<div class="col-4"></div>
</div>
</form></html>
</div>
</body>
</html>