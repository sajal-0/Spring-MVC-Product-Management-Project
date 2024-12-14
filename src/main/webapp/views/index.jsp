<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<link rel="stylesheet" href="css/base.css">
<link rel="stylesheet" href="css/home.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<jsp:include page="nav.jsp" />
 <div class="hero-section">
        <div class="overlay"></div>
        <div class="container content">
            <!-- Header -->
            <div class="header mb-4">
                <h1 class="display-4 font-weight-bold">Welcome to the Product Management System</h1>
                <p class="lead">Your one-stop solution for managing products efficiently!</p>
            </div>

            <!-- Main Content -->
            <br><br>
            <div class="main-content mb-4">
                <h2 class="h3">Manage Your Products</h2>
                <p>With our Product Management System, you can easily add, update, and view your product inventory.</p>
            </div>

            <!-- Features Section -->
            <div class="features">
                <h3>Features:</h3>
                <ul class="features-list pl-4">
                    <li>✔ Easy product management with a user-friendly interface.</li>
                    <li>✔ Update product details effortlessly.</li>
                    <li>✔ Track your inventory with detailed product lists.</li>
                </ul>
            </div>

          
        </div>
    </div>
   <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>