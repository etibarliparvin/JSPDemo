<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 5/13/2021
  Time: 7:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
</head>
<body>
<%
    String msg = request.getParameter("msg");
    out.println(msg);
%>
</body>
</html>
