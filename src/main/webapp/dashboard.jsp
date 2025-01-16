<%--
  Created by IntelliJ IDEA.
  User: Gihan Viduranga
  Date: 1/16/2025
  Time: 1:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fashion Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }

        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
        }

        .navbar-center {
            flex-grow: 1;
            text-align: center;
        }

        .background-scroll {
            position: absolute;
            top: 30px; /* Adjust to match navbar height */
            left: 0;
            width: 200%; /* Adjust to fit scrolling effect */
            height: 130%;
            background-image: url('images/DashImage1.jpg'); /* Replace with your image URL */
            background-repeat: repeat-x;
            background-size: cover;
            animation: scroll-left 20s linear infinite;
        }

        @keyframes scroll-left {
            0% {
                transform: translateX(0);
            }
            100% {
                transform: translateX(-50%);
            }
        }

        .categories {
            position: relative;
            top: 320px; /* Adjust based on background image height */
            padding: 20px;
            text-align: center;
            z-index: 10;
        }

        .category {
            display: inline-block;
            margin: 10px;
            padding: 5px 10px;
            /*background-color: rgba(255, 255, 255, 0.8);*/
            border-radius: 8px;
            font-weight: bold;
            /*box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);*/
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="navbar-brand">Super Shopper</div>
    <div class="navbar-center">

    </div>
    <a href="index.jsp"><button class="btn btn-outline-danger" >Logout</button></a>
</nav>

<div class="background-scroll"></div>

<div class="categories">
    <div class="category">
        <div class="card" style="width: 18rem;">
            <img src="images/Men.jpg" class="card-img-top" alt="Men's Fashion">
            <div class="card-body">
                <h2 class="card-title">Men's FASHION</h2>
                <a href="#" class="btn btn-primary">Go to Men's FASHION</a>
            </div>
        </div>
    </div>
    <div class="category">
        <div class="card" style="width: 18rem;">
            <img src="images/Ladies.jpg" class="card-img-top" alt="Men's Fashion">
            <div class="card-body">
                <h2 class="card-title">Ladies FASHION</h2>
                <a href="#" class="btn btn-primary">Go to Ladies FASHION</a>
            </div>
        </div>
    </div>
    <div class="category">
        <div class="card" style="width: 18rem;">
            <img src="images/KidsCard.jpg" class="card-img-top" alt="Men's Fashion">
            <div class="card-body">
                <h2 class="card-title">Kids FASHION</h2>
                <a href="#" class="btn btn-primary">Go to Kids FASHION</a>
            </div>
        </div>
    </div>
    <div class="category">
        <div class="card" style="width: 18rem;">
            <img src="images/Card4.jpeg" class="card-img-top" alt="Men's Fashion">
            <div class="card-body">
                <h2 class="card-title">Accessories</h2>
                <a href="#" class="btn btn-primary">Go to Accessories</a>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


