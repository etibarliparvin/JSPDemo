<%@ page import="entity.concretes.Students" %><%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 5/13/2021
  Time: 3:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student delete</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
            crossorigin="anonymous"></script>
</head>
<body>
<%
    Students students = (Students) request.getAttribute("student");
%>
<div class="container">
    <form method="post" action="student-delete">
        <h3>Do you want to delete this student?</h3>
        <input name="id" value="<%=students.getStudentId()%>" hidden>
        <button type="submit" class="btn btn-primary">Submit</button>
        <a href="students" class="btn btn-danger" role="button" data-bs-toggle="button">Cancel</a>
    </form>
</div>
</body>
</html>
