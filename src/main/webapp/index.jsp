<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>E-Commerce Web App</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <style>
        body {
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
        }
        video#background-video {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            z-index: -1; /* Places the video behind the content */
        }
        .container {
            background-color: rgb(175, 221, 229, 0.9);
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            display: flex;
            max-width: 1100px;
            width: 100%;
        }
        .image-section {
            background: url('images/ALOHA.png') center/cover no-repeat;
            flex: 1;
        }
        .form-section {
            flex: 1;
            padding: 3rem;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .form-section h4 {
            font-weight: bold;
            margin-bottom: 1.5rem;
        }
        .form-control {
            border-radius: 8px;
        }
        .btn-primary {
            border-radius: 8px;
            padding: 0.8rem;
            font-size: 1rem;
            font-weight: bold;
            background: linear-gradient(135deg, #003135, #024950);
            border: none;
        }
        .btn-primary:hover {
            background: linear-gradient(135deg, #024950, #003135);
        }
        .text-muted {
            font-size: 0.9rem;
        }
    </style>
</head>
<body>
<!-- Video Background -->
<video id="background-video" autoplay loop muted>
    <source src="Videos/Fashion.mp4" type="video/mp4">
    Your browser does not support the video tag.
</video>
<div class="container">
    <!-- Image Section -->
    <div class="image-section d-none d-md-block"></div>

    <!-- Form Section -->
    <div class="form-section">
        <h4 class="text-center">Welcome Back!</h4>
        <p class="text-center text-muted mb-4">Please login to your account</p>
        <form action="login" method="POST">
            <div class="mb-3">
                <label for="email" class="form-label">Email Address</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
            </div>
            <div class="d-flex justify-content-between align-items-center mb-4">
                <div>
                    <input type="checkbox" id="remember" name="remember">
                    <label for="remember" class="text-muted">Remember Me</label>
                </div>
                <a href="forgetPassword.jsp" class="text-decoration-none">Forgot Password?</a>
            </div>
            <a href="dashboard.jsp"><button type="submit" class="btn btn-primary w-100">Login</button></a>
        </form>
        <div class="text-center mt-4">
            <p>Don't have an account? <a href="signUp.jsp" class="text-decoration-none">Sign Up</a></p>
        </div>
    </div>
</div>
<script>
    <%
        String message = (String) request.getAttribute("message");
        String alertType = (String) request.getAttribute("alertType");

        if (message != null && alertType != null) {
    %>
    Swal.fire({
        icon: '<%= alertType %>', // 'success' or 'error'
        title: '<%= alertType.equals("success") ? "Success!" : "Error!" %>',
        text: '<%= message %>',
        confirmButtonText: 'Okay'
    }).then((result) => {
        if (result.isConfirmed) {
            <% if ("success".equals(alertType)) { %>
            window.location.href = "dashboard.jsp";
            <% } %>
        }
    });
    <%} %>
</script>

<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>