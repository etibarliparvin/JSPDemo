<%@ page import="business.abstracts.StudentsService" %>
<%@ page import="entity.concretes.Students" %>
<%@ page import="business.concretes.StudentManager" %>
<%@ page import="dataAccess.concretes.StudentDaoManager" %>
<%@ page import="core.concretes.MyConnectionServiceAdapter" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 5/13/2021
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Students</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8"
            crossorigin="anonymous"></script>

</head>
<body>
<%
    List<Students> students = (List<Students>) request.getAttribute("students");
%>
<div class="container">
<table class="table">
    <thead>
    <tr>
        <th scope="col">Name</th>
        <th scope="col">Surname</th>
        <th scope="col">Age</th>
        <th scope="col">Operation</th>
    </tr>
    </thead>
    <tbody>
    <%
        for (Students student : students) {
    %>
    <tr>
        <td scope="row"><%=student.getStudentName()%>
        </td>
        <td><%=student.getStudentSurname()%>
        </td>
        <td><%=student.getStudentAge()%>
        </td>
        <td>
            <a href="student-edit?id=<%=student.getStudentId()%>">Edit</a>
            <a href="student-delete?id=<%=student.getStudentId()%>">Delete</a>
        </td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
</div>
</body>
</html>
