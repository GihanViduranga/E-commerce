<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Details</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container my-5">
    <h1 class="text-center">Order Details</h1>
    <table class="table table-bordered table-striped table-hover mt-4">
        <thead class="table-dark">
        <tr>
            <th>Order ID</th>
            <th>Product Name</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Total</th>
        </tr>
        </thead>
        <tbody>
        <!-- Dynamic Rows -->
        <%--<%
            // Example Java code to simulate dynamic data (Replace this with database query results)
            List<Map<String, Object>> orderDetails = new ArrayList<>();

            // Mock data
            orderDetails.add(Map.of("orderId", "O001", "productName", "Laptop", "quantity", 1, "price", 1200.00));
            orderDetails.add(Map.of("orderId", "O001", "productName", "Mouse", "quantity", 2, "price", 25.00));

            double grandTotal = 0;
            for (Map<String, Object> detail : orderDetails) {
                double total = (Integer) detail.get("quantity") * (Double) detail.get("price");
                grandTotal += total;
        %>--%>
        <%--<tr>
            <td><%= detail.get("orderId") %></td>
            <td><%= detail.get("productName") %></td>
            <td><%= detail.get("quantity") %></td>
            <td>$<%= detail.get("price") %></td>
            <td>$<%= String.format("%.2f", total) %></td>
        </tr>
        <% } %>--%>
        <!-- End of Dynamic Rows -->
        </tbody>
        <tfoot>
        <tr>
            <td colspan="4" class="text-end fw-bold">Grand Total</td>
            <%--<td class="fw-bold">$<%= String.format("%.2f", grandTotal) %></td>--%>
        </tr>
        </tfoot>
    </table>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
