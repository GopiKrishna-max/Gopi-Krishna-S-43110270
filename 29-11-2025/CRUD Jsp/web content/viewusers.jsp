<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.javatpoint.dao.UserDao, com.javatpoint.bean.User, java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>View Users</title>
</head>
<body>

<h1>Users List</h1>

<%
    List<User> list = UserDao.getAllRecords();
    request.setAttribute("list", list);
%>

<table border="1" width="90%">
  <tr>
    <th>Id</th><th>Name</th><th>Password</th><th>Email</th>
    <th>Sex</th><th>Country</th><th>Edit</th><th>Delete</th>
  </tr>
  <c:forEach items="${list}" var="u">
    <tr>
      <td>${u.id}</td>
      <td>${u.name}</td>
      <td>${u.password}</td>
      <td>${u.email}</td>
      <td>${u.sex}</td>
      <td>${u.country}</td>
      <td><a href="editform.jsp?id=${u.id}">Edit</a></td>
      <td><a href="deleteuser.jsp?id=${u.id}" onclick="return confirm('Delete this user?');">Delete</a></td>
    </tr>
  </c:forEach>
</table>

<br/><a href="adduserform.jsp">Add New User</a>

</body>
</html>