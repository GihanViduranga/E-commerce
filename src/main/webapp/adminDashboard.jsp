<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enhanced Admin Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <style>
        body {
            background-color: #f5f5f5;
            font-family: 'Roboto', sans-serif;
        }

        .sidebar {
            height: 100vh;
            width: 250px;
            background-color: #343a40;
            position: fixed;
            top: 0;
            left: 0;
            color: white;
            z-index: 1000;
            transition: all 0.3s ease-in-out;
            padding-top: 1rem;
        }

        .sidebar a {
            color: #adb5bd;
            text-decoration: none;
            padding: 0.8rem 1.5rem;
            display: flex;
            align-items: center;
            gap: 1rem;
            transition: all 0.2s;
        }

        .sidebar a:hover {
            background-color: #495057;
            color: white;
        }

        .sidebar .sidebar-header {
            font-size: 1.5rem;
            padding: 1rem;
            text-align: center;
            background-color: #212529;
            color: white;
            margin-bottom: 1.5rem;
        }

        .sidebar-collapsed {
            width: 80px;
        }

        .sidebar-collapsed a span {
            display: none;
        }

        .content {
            margin-left: 250px;
            padding: 2rem;
            transition: margin-left 0.3s ease-in-out;
        }

        .content-collapsed {
            margin-left: 80px;
        }

        .dashboard-card {
            background-color: white;
            border-radius: 10px;
            padding: 1.5rem;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .dashboard-card:hover {
            transform: translateY(-5px);
        }

        .dashboard-card img {
            max-width: 100%;
            height: 150px;
            object-fit: cover;
            border-radius: 8px;
            margin-bottom: 1rem;
        }

        .dashboard-card h5 {
            margin: 0.5rem 0;
        }

        .dashboard-card p {
            color: #6c757d;
            margin-bottom: 0.5rem;
        }

        .btn-modern {
            border-radius: 5px;
            transition: all 0.2s;
        }

        .btn-modern:hover {
            opacity: 0.85;
        }

        @media (max-width: 768px) {
            .sidebar {
                width: 80px;
            }

            .sidebar a span {
                display: none;
            }

            .content {
                margin-left: 80px;
            }
        }
    </style>
</head>
<body>
<!-- Sidebar -->
<div class="sidebar" id="sidebar">
    <div class="sidebar-header">Admin Dashboard</div>
    <a href="productServlet"><i class="fas fa-box"></i> <span>Products</span></a>
    <a href="categoryList"><i class="fas fa-list-alt"></i> <span>Categories</span></a>
    <a href="#order-management"><i class="fas fa-shopping-cart"></i> <span>Orders</span></a>
    <a href="user_list"><i class="fas fa-users"></i> <span>Users</span></a>
    <a href="index.jsp" class="text-danger"><i class="fas fa-sign-out-alt"></i> <span>Logout</span></a>
</div>

<!-- Main Content -->
<div class="content" id="content">
    <!-- Header -->
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h1 class="h3">Welcome to Admin Dashboard</h1>
        <button class="btn btn-outline-dark" id="toggleSidebar"><i class="fas fa-bars"></i></button>
    </div>

    <!-- Dashboard Cards -->
    <div class="row g-4">
        <div class="col-md-6 col-lg-4">
            <div class="dashboard-card">
                <img src="images/ProductManage.jpg" alt="Product Management">
                <h5>Product Management</h5>
                <p>Manage your products efficiently, including adding, updating, and deleting products.</p>
                <a href="productServlet" class="btn btn-modern btn-primary">Manage Products</a>
            </div>
        </div>
        <div class="col-md-6 col-lg-4">
            <div class="dashboard-card">
                <img src="images/CategoryManage.jpg" alt="Category Management">
                <h5>Category Management</h5>
                <p>Organize your store with effective category management.</p>
                <a href="categoryList" class="btn btn-modern btn-secondary">Manage Categories</a>
            </div>
        </div>
        <div class="col-md-6 col-lg-4">
            <div class="dashboard-card">
                <img src="images/OrderManage.jpg" alt="Order Management">
                <h5>Order Management</h5>
                <p>Track and manage all customer orders seamlessly.</p>
                <a href="#order-management" class="btn btn-modern btn-warning">View Orders</a>
            </div>
        </div>
    </div>

    <!-- Additional Management Sections -->
    <div class="row g-4 mt-4">
        <div class="col-md-6 col-lg-4">
            <div class="dashboard-card">
                <img src="images/UserManage.jpg" alt="User Management">
                <h5>User Management</h5>
                <p>View and manage customer accounts with ease.</p>
                <a href="user_list" class="btn btn-modern btn-success">Manage Users</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap and Script -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    const sidebar = document.getElementById('sidebar');
    const content = document.getElementById('content');
    const toggleSidebar = document.getElementById('toggleSidebar');

    toggleSidebar.addEventListener('click', () => {
        sidebar.classList.toggle('sidebar-collapsed');
        content.classList.toggle('content-collapsed');
    });
</script>
</body>
</html>
