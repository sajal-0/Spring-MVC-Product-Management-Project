<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/addproduct.css">
</head>
<body>
<jsp:include page="nav.jsp"></jsp:include>


<div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Welcome</h3>
                        <p>You are 30 seconds away from earning your own money!</p>
                        <input type="submit" name="" value="Login"/><br/>
                    </div>
                    <div class="col-md-9 register-right">
                      
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Insert product in the Database</h3>
                                <form action="insert-product" method="post">
                                <div class="row register-form">
                                    <div class="col-md-6 offset-md-3">
                                        <div class="form-group" >
                                            <input type="text" class="form-control"  name="name" placeholder="Product Name" value="" />
                                        </div>
                                        <div class="form-group" >
                                            <input type="number" class="form-control" name="price" placeholder="Price" value="" />
                                        </div>
                                        <div class="form-group" >
                                            <input type="number" class="form-control" name = "quantity" placeholder="Quantity" value="" />
                                        </div>
                                        <div class="form-group" >
                                            <input type="text" class="form-control"  name="category" placeholder="Category" value="" />
                                        </div>
                                        
                                        <button type="submit">save product</button>
                                        
                                    </div>
                                   
                                </div>
                                </form>
                            </div>
                            
                        </div>
                    </div>
                </div>

            </div>
</body>
</html>