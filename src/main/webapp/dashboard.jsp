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
    .category-container{
      display: flex;
      justify-content: space-between;
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

<!-- Categories Section -->
<div class="container">
  <h2 class="text-center mt-5 mb-4">Our Categories</h2>

  <!-- Error/Success Messages -->
  <% if (request.getAttribute("errorMessage") != null) { %>
  <div class="alert alert-danger alert-dismissible fade show" role="alert">
    ${errorMessage}
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
  </div>
  <% } %>

  <div class="category-container">
    <%
      try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "199884");
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM category");

        while (rs.next()) {
    %>
    <div class="category-card">
      <img src="<%= rs.getString("image") %>" style="height: auto", width="80px",
           alt="<%= rs.getString("name") %>"
           class="category-image">
      <h3 class="category-name"><%= rs.getString("name") %></h3>
      <p class="category-description"><%= rs.getString("description") %></p>
    </div>
    <%
      }
      rs.close();
      stmt.close();
      conn.close();
    } catch(Exception e) {
      request.setAttribute("errorMessage", "Database Error: " + e.getMessage());
    %>
    <div class="alert alert-danger" role="alert">
      An error occurred while loading categories. Please try again later.
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
