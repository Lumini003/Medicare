<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Customers" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    List<Customers> customersList = (List<Customers>) request.getAttribute("customersList");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registered Customers</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            padding: 20px;
        }
        .table th {
            background-color: #343a40;
            color: #fff;
        }
        .table-hover tbody tr:hover {
            background-color: #f1f1f1;
        }
        .delete-btn {
            color: red;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container mt-4">
        <h2 class="mb-4 text-center">Registered Customers</h2>
        <div class="table-responsive">
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Full Name</th>
                        <th>DOB</th>
                        <th>Gender</th>
                        <th>Contact</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Password</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="c" items="${customersList}">
                    <tr>
                        <td>${c.customer_id}</td>
                        <td>${c.first_name} ${c.last_name}</td>
                        <td>${c.dob}</td>
                        <td>${c.gender}</td>
                        <td>${c.contact}</td>
                        <td>${c.email}</td>
                        <td>${c.address}</td>
                        <td>${c.password}</td>
                        <td>
					    <a href="AdminCustomerDelete?customer_id=${c.customer_id}" class="btn btn-danger btn-sm" 
					       onclick="return confirm('Are you sure you want to delete this customer?');">
					        <i class="fas fa-trash-alt"></i> Delete
					    </a>
					</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
