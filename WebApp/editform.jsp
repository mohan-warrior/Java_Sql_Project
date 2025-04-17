<%@page import="com.demo.EmpDao"%>
<%@page import="com.demo.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>

  <h1>Edit form</h1>
  
    <%
       int id = Integer.parseInt(request.getParameter("id"));
       Employee e= EmpDao.getRecordByID(id);
    
    %>
    
        <div class="container border bg-info p-5">
         <form class="row g-3"  action="editemp.jsp" method="post">
  <div class="col-md-6">
     <input type="hidden" class="form-control" name="id"  value="<%=e.getId()%>">
    <label for="name" class="form-label">Name</label>
    <input type="text" class="form-control" name="name"  value="<%=e.getName()%>">
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Password</label>
    <input type="password" class="form-control" name="password"  value="<%=e.getPassword()%>">
  </div>
  <div class="col-12">
    <label for="inputAddress" class="form-label">Email</label>
    <input type="email" class="form-control" name="email"  value="<%=e.getEmail() %>"    placeholder="1234 Main St">
  </div>
    <div class="col-md-6">
    <label for="gender" class="form-label">Gender </label>
  </div>
  <div class="col-md-12">
  
    <label for="gender" class="form-label">Male</label>
    <input type="radio"  name="sex" value="male"  id="inputAddress2">
    <label for="inputCity" class="form-label">Female</label>
    <input type="radio"   name="sex" value="female"  id="inputCity">
  </div>

  <div class="col-md-4">
    <label for="inputcountry" class="form-label">Country</label>
    <select id="inputcountry" name="country" value="<%=e.getCountry()%>"    class="form-select">
      <option selected>India</option>
      <option>Pakistan</option>
      <option>USA</option>
      <option>UK</option>
    </select>
  </div>
  


  <div class="col-12">
    <button type="submit" class="btn btn-primary">Sign in</button>
  </div>
</form>
        
        </div>
     



   <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>