
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>nav bar</title>

<link rel="stylesheet" href="css/base.css">
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-white">
		<a class="navbar-brand" href="/"> <img
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