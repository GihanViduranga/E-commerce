<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
  </style>
</head>
<body>
<%
  // Retrieve the user's role and name from the session
  String userRole = (String) session.getAttribute("userRole");
%>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark">
  <div class="container">
    <a class="navbar-brand" href="#">ALOHA</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <%-- Conditionally display Admin dropdown if the role is "admin" --%>
    <% if ("admin".equals(userRole)) { %>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
        Admin
      </a>
      <ul class="dropdown-menu">
        <li><a class="dropdown-item" href="#">Manage Users</a></li>
        <li><a class="dropdown-item" href="addProduct.jsp">Manage Products</a></li>
        <li><a class="dropdown-item" href="#">Reports</a></li>
      </ul>
    </li>
    <% } %>
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

<%--<div class="container">
  <div class="category-container">
    <%
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbname", "username", "password");
      Statement stmt = conn.createStatement();
      ResultSet rs = stmt.executeQuery("SELECT * FROM categories");
      while (rs.next()) {
    %>
    <div class="category">
      <img src="<%= rs.getString("image_url") %>" alt="<%= rs.getString("name") %>">
      <p><%= rs.getString("name") %></p>
    </div>
    <%
      }
      conn.close();
    %>
  </div>
</div>--%>
<!-- Categories -->
<div class="container my-5">
  <div class="row text-center category-icons">
    <div class="col-6 col-md-3">
      <img src="https://via.placeholder.com/80" alt="Cakes">
      <p class="category-label">Cakes</p>
    </div>
    <div class="col-6 col-md-3">
      <img src="https://via.placeholder.com/80" alt="Flowers">
      <p class="category-label">Flowers</p>
    </div>
    <div class="col-6 col-md-3">
      <img src="https://via.placeholder.com/80" alt="Chocolates">
      <p class="category-label">Chocolates</p>
    </div>
    <div class="col-6 col-md-3">
      <img src="https://via.placeholder.com/80" alt="Clothing">
      <p class="category-label">Clothing</p>
    </div>
    <div class="col-6 col-md-3">
      <img src="https://via.placeholder.com/80" alt="Electronics">
      <p class="category-label">Electronics</p>
    </div>
    <div class="col-6 col-md-3">
      <img src="https://via.placeholder.com/80" alt="Fashion">
      <p class="category-label">Fashion</p>
    </div>
    <div class="col-6 col-md-3">
      <img src="https://via.placeholder.com/80" alt="Food">
      <p class="category-label">Food</p>
    </div>
    <div class="col-6 col-md-3">
      <img src="https://via.placeholder.com/80" alt="Grocery">
      <p class="category-label">Grocery Items</p>
    </div>
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
