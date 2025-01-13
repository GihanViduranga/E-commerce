<%--
  Created by IntelliJ IDEA.
  User: Gihan Viduranga
  Date: 1/13/2025
  Time: 5:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Forget Password</title>
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
<div class="container text-center">
    <h4 class="mb-3">Reset Your Password</h4>
    <p class="text-muted mb-4">Please verify your details to reset your password.</p>
    <form action="#" method="POST">
        <!-- Username or Email -->
        <div class="mb-3">
            <label for="username" class="form-label">Username or Email</label>
            <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username or email" required>
        </div>
        <!-- Security Question -->
        <div class="mb-3">
            <label for="security-question" class="form-label">Security Question</label>
            <select class="form-select" id="security-question" name="security-question" required>
                <option selected disabled>Select a question</option>
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
        <!-- New Password -->
        <div class="mb-3">
            <label for="new-password" class="form-label">New Password</label>
            <input type="password" class="form-control" id="new-password" name="new-password" placeholder="Enter new password" required>
        </div>
        <!-- Confirm Password -->
        <div class="mb-3">
            <label for="confirm-password" class="form-label">Confirm Password</label>
            <input type="password" class="form-control" id="confirm-password" name="confirm-password" placeholder="Re-enter new password" required>
        </div>
        <!-- Reset Button -->
        <button type="submit" class="btn btn-primary w-100">Reset Password</button>
    </form>
    <p class="text-muted mt-3">
        Remembered your password? <a href="index.jsp" class="text-decoration-none">Login here</a>.
    </p>
</div>
<!-- Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
