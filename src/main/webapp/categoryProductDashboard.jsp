<%--
  Created by IntelliJ IDEA.
  User: Gihan Viduranga
  Date: 1/26/2025
  Time: 10:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="lk.ijse.ecommerce.dto.categoryDTO" %>
<%@ page import="lk.ijse.ecommerce.dto.productDTO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ALOHA Fashion - Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .navbar {
            background-color: #003135;
        }
        .navbar-brand {
            color: #fff;
            font-weight: bold;
        }
        .navbar-nav .nav-link {
            color: white;
        }
        .navbar-nav .nav-link:hover {
            color: #0FA4AF;
        }
        .category-icons img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
        }
        .category-label {
            margin-top: 10px;
            font-size: 14px;
            font-weight: 500;
        }
        .dashboard-title {
            background-color: #024950;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .dashboard-card {
            margin: 20px 0;
        }
        .category-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }
        .category-card {
            border: none;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .category-card .card-body {
            text-align: center;
        }
        .category-card .card-title {
            font-weight: bold;
        }
        .footer {
            background-color: #003135;
            color: white;
            text-align: center;
            padding: 10px;
        }
    </style>
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
        <a class="navbar-brand" href="#">ALOHA</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Dashboard Title Section -->
<%
    categoryDTO categoryDTO = (lk.ijse.ecommerce.dto.categoryDTO) request.getAttribute("category");
%>
<div class="dashboard-title">
    <h1><%=categoryDTO.getName() %></h1>
    <p><%=categoryDTO.getDescription() %></p>
</div>
<br>
<br>
<!-- Product Collection Section -->
<div class="container">
    <div class="row">
        <%-- Fetch product data from the request attribute --%>
        <%
            List<productDTO> products = (List<productDTO>) request.getAttribute("LoadProduct");
            if (products != null && !products.isEmpty()) {
                for (productDTO product : products) {
                    String productName = product.getName();
                    String productImage = product.getImagepath();
        %>
        <!-- Product Card -->
        <div class="col-md-4">
            <div class="card category-card">
                <img src="<%= productImage %>" class="card-img-top" alt="<%= productName %>">
                <div class="card-body">
                    <h5 class="card-title"><%= productName %></h5>
                    <p class="card-text"><%= product.getDescription() %></p>
                    <a href="category-products?product=<%= productName %>" class="btn btn-success">View Details</a>
                </div>
            </div>
        </div>
        <%
            }
        } else {
        %>
        <div class="col-12">
            <p class="text-center">No products available at the moment. Please check back later.</p>
        </div>
        <%
            }
        %>
    </div>
</div>


<!-- Footer -->
<footer class="footer">
    <p>&copy; 2025 ALOHA. All Rights Reserved.</p>
</footer>

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

