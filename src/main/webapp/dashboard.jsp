<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="lk.ijse.ecommerce.dto.categoryDTO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="lk.ijse.ecommerce.dto.categoryDTO" %>
<%@ page import="lk.ijse.ecommerce.dto.productDTO" %>
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
      height: 80px;
      object-fit: cover;
    }
    .category-card btn {
      background-color: #0FA4AF;
      border: none;
    }
    .category-card btn:hover {
      background-color: #007B8C;
    }
    .cart-sidebar {
      position: fixed;
      top: 0;
      right: -400px;
      width: 350px;
      height: 100%;
      background-color: #fff;
      box-shadow: -2px 0 5px rgba(0, 0, 0, 0.2);
      transition: right 0.3s ease;
      z-index: 1050;
      overflow-y: auto;
      border-left: 1px solid #ddd;
    }

    .cart-header {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 15px;
      background-color: #003135;
      color: #fff;
    }

    .cart-items {
      padding: 15px;
    }

    .cart-footer {
      padding: 15px;
      position: sticky;
      bottom: 0;
      background-color: #fff;
      box-shadow: 0 -2px 5px rgba(0, 0, 0, 0.1);
    }

    .close-btn {
      background: none;
      border: none;
      font-size: 1.5rem;
      color: #fff;
      cursor: pointer;
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
    <!-- Cart Icon -->
    <button class="btn btn-link position-relative" id="cart-button" style="text-decoration: none;">
      <img src="images/cart.png" alt="Cart" style="width: 30px; height: 30px;">
      <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger" id="cart-count">
              <%--<%= session.getAttribute("cart") != null ? ((List<cartItemDTO>) session.getAttribute("cart")).size() : "" %>--%>
            </span>
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

<%--<div id="cart-sidebar" class="cart-sidebar">
  <div class="cart-header">
    <h5>Your Cart</h5>
    <a href="index.jsp" class="close-btn">&times;</a>
  </div>
  <div class="cart-items">
    &lt;%&ndash;<%
      List<cartItemDTO> cart = (List<cartItemDTO>) session.getAttribute("cart");
      if (cart != null && !cart.isEmpty()) {
        for (cartItemDTO item : cart) {
    %>&ndash;%&gt;
    <div class="cart-item">
      <p><strong>&lt;%&ndash;<%= item.getProductName() %>&ndash;%&gt;</strong></p>
      <p>Price: $&lt;%&ndash;<%= item.getPrice() %>&ndash;%&gt;</p>
      <p>Quantity: &lt;%&ndash;<%= item.getQuantity() %>&ndash;%&gt;</p>
      <form action="removeFromCart" method="POST">
        <input type="hidden" name="productId" value="&lt;%&ndash;<%= item.getProductId() %>&ndash;%&gt;">
        <button type="submit" class="btn btn-danger btn-sm">Remove</button>
      </form>
    </div>
    <hr>
    &lt;%&ndash;<%
      }
    } else {
    %>
    <p>Your cart is empty!</p>
    <%
      }
    %>&ndash;%&gt;
  </div>
  <div class="cart-footer">
    <form action="checkout" method="POST">
      <button type="submit" class="btn btn-success w-100">Checkout</button>
    </form>
  </div>
</div>--%>


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
        <img src="<%= categoryImage %>" class="card-img-top" alt="<%= categoryName %>" style="height: 200px; object-fit:cover;">
        <div class="card-body">
          <h5 class="card-title"><%= categoryName %></h5>
          <p class="card-text">Discover our stunning collection of <%= categoryName %>!</p>
          <a href="category-products?category=<%=category.getCategoryId() %>" class="btn btn-primary">Explore</a>
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

<div class="container my-5">
  <h2 class="text-center mb-4">Our Products</h2>
  <div class="row">
    <%
      // Fetch the product list set in the request attribute
      List<productDTO> products = (List<productDTO>) request.getAttribute("LoadProduct");

      // Check if the product list is not null and contains data
      if (products != null && !products.isEmpty()) {
        for (productDTO product : products) {
    %>
    <!-- Product Card -->
    <div class="col-md-4 mb-4">
      <div class="card text-center">
        <img src="<%= product.getImagepath() %>" class="card-img-top" alt="<%= product.getName() %>" style="height: 200px; object-fit:cover;">
        <div class="card-body">
          <h5 class="card-title"><%= product.getName() %></h5>
          <p class="card-text"><%= product.getDescription() %>!</p>
          <a href="categoryDetails?category=<%= product.getName() %>" class="btn btn-success">Explore</a>
        </div>
      </div>
    </div>
    <%
      }
    } else {
    %>
    <div class="text-center">
      <p>No products available at the moment. Please check back later!</p>
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
<script>
  // Get elements
  const cartButton = document.getElementById('cart-button');
  const cartSidebar = document.getElementById('cart-sidebar');
  const closeCartButton = document.getElementById('close-cart');

  // Show cart sidebar
  cartButton.addEventListener('click', () => {
    cartSidebar.classList.add('active');
  });

  // Hide cart sidebar
  closeCartButton.addEventListener('click', () => {
    cartSidebar.classList.remove('active');
  });

  // Close sidebar if clicked outside
  document.addEventListener('click', (event) => {
    if (!cartSidebar.contains(event.target) && !cartButton.contains(event.target)) {
      cartSidebar.classList.remove('active');
    }
  });
</script>

</body>
</html>
