<%--
  Created by IntelliJ IDEA.
  User: Gihan Viduranga
  Date: 1/13/2025
  Time: 4:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign Up</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0;
        }
        .container {
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            padding: 3rem;
            max-width: 500px;
            width: 100%;
        }
        .form-control {
            border-radius: 8px;
        }
        .btn-primary {
            border-radius: 8px;
            padding: 0.8rem;
            font-size: 1rem;
            font-weight: bold;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            border: none;
        }
        .btn-primary:hover {
            background: linear-gradient(135deg, #2575fc, #6a11cb);
        }
        .text-muted {
            font-size: 0.9rem;
        }
    </style>
</head>
<body>
<div class="container">
    <h4 class="mb-4 text-center">Create an Account</h4>
    <form action="#" method="POST">
        <!-- Full Name -->
        <div class="mb-3">
            <label for="fullName" class="form-label">Full Name</label>
            <input type="text" class="form-control" id="fullName" name="fullName" placeholder="Enter your full name" required>
        </div>
        <!-- Email -->
        <div class="mb-3">
            <label for="email" class="form-label">Email Address</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
        </div>
        <!-- Password -->
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
        </div>
        <!-- Confirm Password -->
        <div class="mb-3">
            <label for="confirmPassword" class="form-label">Confirm Password</label>
            <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="Confirm your password" required>
        </div>
        <!-- Security Question -->
        <div class="mb-3">
            <label for="security-question" class="form-label">Security Question</label>
            <select class="form-select" id="security-question" name="security-question" required>
                <option selected disabled>Select a security question</option>
                <option value="pet-name">What is your pet's name?</option>
                <option value="school-name">What is the name of your first school?</option>
                <option value="birth-city">In what city were you born?</option>
            </select>
        </div>
        <!-- Security Answer -->
        <div class="mb-3">
            <label for="security-answer" class="form-label">Answer</label>
            <input type="text" class="form-control" id="security-answer" name="security-answer" placeholder="Enter your answer" required>
        </div>
        <!-- Role Selection -->
        <div class="mb-3">
            <label for="role" class="form-label">Role</label>
            <select class="form-select" id="role" name="role" required>
                <option selected disabled>Select a role</option>
                <option value="customer">Customer</option>
                <option value="admin">Admin</option>
            </select>
        </div>
        <!-- Signup Button -->
        <button type="submit" class="btn btn-primary w-100">Sign Up</button>
    </form>
    <p class="text-muted text-center mt-3">
        Already have an account? <a href="index.jsp" class="text-decoration-none">Login here</a>.
    </p>
</div>
<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
