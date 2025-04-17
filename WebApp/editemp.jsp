<%@page import="com.demo.EmpDao"%>
<%@page import="com.demo.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <h1>Updated data....</h1>
  
  
        <jsp:useBean id="emp" class="com.demo.Employee">
        </jsp:useBean>
        
          <jsp:setProperty property="*" name="emp"/>
          
           <%
           int i = EmpDao.update(emp);
           
              response.sendRedirect("viewemp.jsp");
                  
           %>
        
        
        
</body>
</html>