<%@ page import="java.util.List" %>
<%@ page import="lk.ijse.ecommerce.Entity.Users" %>
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
        <h1>User Management</h1>
        <a href="adminDashboard.jsp" class="btn btn-secondary">Back to Dashboard</a>
    </div>

    <!-- User Form -->
    <%
        // Check if "action" and "id" parameters exist
        String action = request.getParameter("action");
        String userId = request.getParameter("id");
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String role = request.getParameter("role");

        boolean isEdit = action != null && action.equals("edit");
    %>

    <div class="card mb-4">
        <div class="card-header">
            <%= isEdit ? "Edit User" : "Add New User" %>
        </div>
        <div class="card-body">
            <form action="UserServlet" method="post">
                <% if (isEdit) { %>
                <input type="hidden" name="id" value="<%= userId %>">
                <% } %>
                <div class="mb-3">
                    <label for="fullName" class="form-label">Full Name</label>
                    <input type="text" class="form-control" id="fullName" name="fullName" value="<%= isEdit ? fullName : "" %>" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" name="email" value="<%= isEdit ? email : "" %>" required>
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <div class="mb-3">
                    <label for="answer" class="form-label">Security Answer</label>
                    <input type="text" class="form-control" id="answer" name="answer" value="<%= isEdit ? request.getParameter("answer") : "" %>" required>
                </div>
                <div class="mb-3">
                    <label for="role" class="form-label">Role</label>
                    <select class="form-select" id="role" name="role" required>
                        <option value="Admin" <%= isEdit && "Admin".equals(role) ? "selected" : "" %>>Admin</option>
                        <option value="User" <%= isEdit && "User".equals(role) ? "selected" : "" %>>User</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-success"><%= isEdit ? "Update User" : "Add User" %></button>
                <% if (isEdit) { %>
                <a href="userManagement.jsp" class="btn btn-secondary">Cancel</a>
                <% } %>
            </form>
        </div>
    </div>

    <!-- User List -->
    <h2>User List</h2>
    <%
        List<Users> userList = (List<Users>) request.getAttribute("users");
        if (userList != null && !userList.isEmpty()) {
    %>
    <table class="table table-striped">
        <thead class="table-dark">
        <tr>
            <th>#</th>
            <th>Full Name</th>
            <th>Email</th>
            <th>Role</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            for (Users users : userList) {
        %>
        <tr>
            <td><%= users.getUserId()%></td>
            <td><%= users.getFullName()%></td>
            <td><%= users.getEmail()%></td>
            <td><%= users.getRole()%></td>
            <td>
                <a href="userManagement.jsp?action=edit&id=?&fullName=?&email=?&role=?"
                   class="btn btn-sm btn-warning">Edit</a>
                <a href="user_servlet?action=delete&id=?" class="btn btn-sm btn-danger">Delete</a>
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
