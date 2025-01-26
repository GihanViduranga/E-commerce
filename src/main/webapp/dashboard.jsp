<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="lk.ijse.ecommerce.dto.categoryDTO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="lk.ijse.ecommerce.dto.categoryDTO" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ALOHA Fashion</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .navbar {
      background-color: #003135;
    }
    .navbar-brand {
      color: #fff;
      font-weight: bold;
    }
    .navbar-brand:hover {
      color: #0FA4AF;
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
    .hero-section {
      background: linear-gradient(135deg, #024950, #135f6b);
      color: white;
      text-align: center;
      padding: 3rem 1rem;
    }
    .hero-section h1 {
      font-size: 2rem;
      margin-bottom: 1rem;
    }
    .hero-section p {
      font-size: 1.2rem;
    }
    #carouselExampleAutoplaying{
        /*margin-top: 20px;*/
        height: 600px;
    }
    .category-card img {
      width: 100%;
      height: 200px;
      object-fit: cover;
    }
    .category-card .btn {
      background-color: #0FA4AF;
      border: none;
    }
    .category-card .btn:hover {
      background-color: #007B8C;
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
      <form class="d-flex ms-auto me-3" role="search">
        <input class="form-control me-2" type="search" placeholder="Search site" aria-label="Search">
        <button class="btn btn-warning" type="submit">Search</button>
      </form>
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="index.jsp">Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- Hero Section -->
<div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/Wallimg1.jpg" class="d-block w-100" style="height: 600px" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/Wallimg2.jpg" class="d-block w-100" style="height: 600px" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/Wallimg3.jpg" class="d-block w-100" style="height: 600px" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/Wallimg5.jpg" class="d-block w-100" style="height: 600px" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/Wallimg6.jpg" class="d-block w-100" style="height: 600px" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<div class="container my-5">
  <h2 class="text-center mb-4">Explore Our Categories</h2>
  <div class="row">
    <%
      // Fetch the category list set in the request attribute
      List<categoryDTO> categories = (List<categoryDTO>) request.getAttribute("categories");

      // Check if the category list is not null and contains data
      if (categories != null && !categories.isEmpty()) {
        for (categoryDTO category : categories) {
          String categoryName = category.getName();
          String categoryImage = category.getImage();
    %>
    <!-- Card -->
    <div class="col-md-4 mb-4">
      <div class="card text-center">
        <img src="<%= categoryImage %>" class="card-img-top" alt="<%= categoryName %>" style="height: 200px; object-fit: cover;">
        <div class="card-body">
          <h5 class="card-title"><%= categoryName %></h5>
          <p class="card-text">Discover our stunning collection of <%= categoryName %>!</p>
          <a href="categoryDetails?category=<%= categoryName %>" class="btn btn-primary">Explore</a>
        </div>
      </div>
    </div>
    <%
      }
    } else {
    %>
    <div class="text-center">
      <p>No categories available at the moment. Please check back later!</p>
    </div>
    <%
      }
    %>
  </div>
</div>





<!-- Footer -->
<footer class="text-center py-3" style="background-color: #003135; color: white;">
  <p>&copy; 2025 ALOHA. All Rights Reserved.</p>
</footer>

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
