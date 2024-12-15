<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Product</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/base.css">
</head>
<body>
<jsp:include page="nav.jsp"></jsp:include><br><br>
    <div class="container">
        <h2 class="text-center my-4">Update Product</h2>
        <form action="update-product" method="post">
            
            <div class="form-group">
                <label for="name">Product id</label>
                <input type="number" class="form-control" id="pid" name="pid" value="${product.pid}"  />
            </div>
           
            <div class="form-group">
                <label for="name">Product Name</label>
                <input type="text" class="form-control" id="name" name="name" value="${product.name}" required />
            </div>
            <div class="form-group">
                <label for="price">Price</label>
                <input type="number" class="form-control" id="price" name="price" value="${product.price}" required />
            </div>
            <div class="form-group">
                <label for="quantity">Quantity</label>
                <input type="number" class="form-control" id="quantity" name="quantity" value="${product.quantity}" required />
            </div>
            <div class="form-group">
                <label for="category">Category</label>
                <input type="text" class="form-control" id="category" name="category" value="${product.category}" required />
            </div>
            <button type="submit" class="btn btn-primary">Update Product</button>
            <a href="display-product" class="btn btn-secondary">Cancel</a>
            
            
        </form>
    </div>
</body>
</html>
