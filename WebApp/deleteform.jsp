<%@page import="com.demo.EmpDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

  <jsp:useBean id="e" class="com.demo.Employee"></jsp:useBean>

  <jsp:setProperty property="*" name="e"/>
  
     <%
            EmpDao.delete(e);
     response.sendRedirect("viewemp.jsp");
     %>
</body>
</html>