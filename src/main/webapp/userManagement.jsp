<%@ page import="java.util.List" %>
<%@ page import="lk.ijse.ecommerce.entity.User" %>
<%@ page import="lk.ijse.ecommerce.dto.userDTO" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container my-4">
    <!-- Page Header -->
    <div class="d-flex justify-content-between align-items-center mb-4">
        <a href="adminDashboard.jsp" class="btn btn-secondary">Back to Dashboard</a>
    </div>

    <!-- User Form -->
    <%
        // Check if "action" and "id" parameters exist
        String action = request.getParameter("action");
        boolean isEdit = action != null && action.equals("edit");
    %>

    <!-- User List -->
    <h2>User List</h2>
    <%
        List<userDTO> userList = (List<userDTO>) request.getAttribute("users");
        if (userList != null && !userList.isEmpty()) {
    %>
    <table class="table table-striped">
        <thead class="table-dark">
        <tr>
            <th>#</th>
            <th>Full Name</th>
            <th>Email</th>
            <th>Role</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            for (userDTO users : userList) {
        %>
        <tr>
            <td><%= users.getUserId()%></td>
            <td><%= users.getUsername()%></td>
            <td><%= users.getEmail()%></td>
            <td><%= users.getRole()%></td>
            <td><%= users.getStatus()%></td>
            <td>
                <%-- Assuming you have a user object with an ID --%>
                <% String userId = String.valueOf(users.getUserId()); %>

                <a href="user_servlet?action=Deactivate&Status=inactive&userId=<%= userId %>" class="btn btn-sm btn-danger">Deactivate</a>
                <a href="user_servlet?action=Activate&Status=active&userId=<%= userId %>" class="btn btn-sm btn-success">Activate</a>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
    <% } %>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
