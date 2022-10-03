<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 9/29/2022
  Time: 4:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<center>
    <h1>User Management</h1>
    <form action="/users" method="post" class="form-group search-form">
        <input type="text" name="search" class="form-control search-input" placeholder="Type something">
        <input type="hidden" name="action" value="search">
        <button type="submit" class="btn btn-primary search-btn">Seacrh</button>
        <a href="/users?action=create"
           class="btn btn-primary search-btn">Add</a>
        <a href="/users" class="btn btn-primary search-btn">Menu</a>
    </form>
    <h2>
        <a href="/users?action=create">Add New User</a>
    </h2>
</center>
<div align="center">
    <table border="0" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <a href="/users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>