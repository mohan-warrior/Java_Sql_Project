<%@page import="com.demo.EmpDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
       <jsp:useBean id="e"  class="com.demo.Employee"  ></jsp:useBean>
          
          <jsp:setProperty property="*" name="e"/> 
             
         <% 
         int i=EmpDao.save(e);
 		if(i>0)
 		{
 			
 			response.sendRedirect("adduser-success.jsp");
 		}else
 		{
 			response.sendRedirect("adduser-error.jsp");
 		} 
         %>
            

        


</body>
</html>