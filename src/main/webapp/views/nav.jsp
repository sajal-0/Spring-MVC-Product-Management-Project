
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>nav bar</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/base.css">
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-white">
		<a class="navbar-brand" href="index.jsp"> <img
			src="images/logo.png" alt="Logo" style="height: 40px; width: auto;">
		</a>

		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav ml-auto">
				<li
					class="nav-item <%=request.getRequestURI().endsWith("index.jsp") ? "active" : ""%>">
					<a class="nav-link font-weight-bold" href="/">Home <span
						class="sr-only">(current)</span></a>
				</li>
				<li
					class="nav-item <%=request.getRequestURI().endsWith("add.jsp") ? "active" : ""%>">
					<a class="nav-link font-weight-bold" href="add-product">Add
						Product</a>
				</li>
				<li
					class="nav-item <%=request.getRequestURI().endsWith("display.jsp") ? "active" : ""%>">
					<a class="nav-link font-weight-bold" href="display-product">Display
						Products</a>
				</li>
			</ul>
		</div>

	</nav>

</body>
</html>