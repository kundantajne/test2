
<%
	if (session.getAttribute("AUTH") == null) {
		response.sendRedirect("login.jsp");
	}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.0/css/bootstrap.min.css"
	integrity="sha384-SI27wrMjH3ZZ89r4o+fGIJtnzkAnFs3E4qz9DIYioCQ5l9Rd/7UAa8DHcaL8jkWt"
	crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid">
		<div class="row" style="height: 10vh">
			<div class="col-6 bg-dark text-light h4 d-flex  align-items-center">
				DEMOBOOK</div>
			<div
				class="col-6 h5 bg-dark text-light d-flex justify-content-end  align-items-center">
				<a class="btn btn-secondary" role="button" href="logout-servlet">LOG
					OUT</a>
				</li>
			</div>

		</div>
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6 bg-dark d-flex align-items-center"
				style="height: 12vh">
				<!-- Post Handlers -->
				<form class="col-12" action="PostServlet">
					<div class="form-row">
						<div class="col-10">
							<input class="form-control form-control-lg" type="text"
								placeholder="Post Something....." name="post">
						</div>
						<div class="col-2">
							<button type="submit" class="btn btn-secondary ml-1">POST</button>
						</div>
					</div>
				</form>

			</div>
		</div>

		<div class="row"></div>

	</div>
</body>
</html>