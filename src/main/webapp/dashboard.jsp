<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dashboard</title>
  <link rel="stylesheet" href="styles/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      font-family: 'Roboto', sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
    }

    header {
      background: linear-gradient(135deg, #1e2a47, #024950);
      color: #fff;
      padding: 15px 20px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    header h1 {
      font-size: 24px;
      margin: 0;
    }

    .search-bar {
      display: flex;
      align-items: center;
      background-color: #fff;
      border-radius: 15px;
      padding: 5px 20px;
      width: 60%;
    }

    .search-bar input {
      border: none;
      outline: none;
      padding: 10px;
      font-size: 16px;
      border-radius: 15px;
      width: 100%;
      margin-right: 10px;
      box-sizing: border-box;
    }

    .search-bar button {
      background-color: #964734;
      border: none;
      border-radius: 15px;
      padding: 10px 15px;
      color: #fff;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .search-bar button:hover {
      background-color: #ff7f50;
    }

    .search-bar i {
      margin-right: 5px;
    }

    .logout-container {
      margin-left: 20px;
    }

    .logout-button {
      background-color: #ff6347;
      color: #fff;
      padding: 10px 15px;
      font-size: 16px;
      border: none;
      border-radius: 15px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .logout-button:hover {
      background-color: #ff4500;
    }
  </style>


</head>
<body>
<header>
  <h1>ALOHA</h1>
  <div class="search-bar">
    <input type="text" placeholder="Search the entire store...">
    <button><i class="fas fa-search"></i> Search</button>
  </div>
  <div class="logout-container">
    <button class="logout-button">Logout</button>
  </div>
</header>
<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="images/Wall1.jpg" class="d-block w-75" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/Wall2.jpg" class="d-block w-75" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/Wall3.jpg" class="d-block w-75" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/Wall4.jpg" class="d-block w-75" alt="...">
    </div>
    <div class="carousel-item">
      <img src="images/Wall5.jpg" class="d-block w-75" alt="...">
    </div>
  </div>
</div>
<div class="container">
  <%--<div class="category-container">
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
  </div>--%>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
