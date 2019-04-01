<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
</head>
<body>

<%
     
	 response.setHeader("Cache-Control" , "no-cache , no-store , must-revalidae");   
   
     if(session.getAttribute("username") == null){
    	 response.sendRedirect("/wardenlogin");
     }
%>

<div class="container" align="right">
  <a  href="/wardenlogout" class="btn btn-info" role="button">Log Out</a>
</div>


<center><h2>Welcome Lilavati's Warden</h2></center>

<br><br>

<table class="table table-striped">
  
    <thead>
    <tr>
      <th scope="col">Roll No</th>
      <th scope="col">Name</th>
      <th scope="col">Room No</th>
      <th scope="col">Date</th>
      <th scope="col">Status</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${complaints}" var="comp">
    <tr>
      <td><a href = "/wardencomplaint/${comp.id}">${comp.roll}</a></td>
      <td>${comp.name}</td>
      <td>${comp.room}</td>
      <td>${comp.createDate}</td>
      <td>${comp.status}</td>
    </tr>
    </c:forEach>
  </tbody>
  
</table>

</body>
</html>





<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" --%>
<%--     pageEncoding="UTF-8"%> --%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>

<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="UTF-8"> -->
<!-- <title>Insert title here</title> -->
<!-- </head> -->
<!-- <body> -->

<%-- <% --%>
     
<!-- // 	 response.setHeader("Cache-Control" , "no-cache , no-store , must-revalidae");    -->
   
<!-- //      if(session.getAttribute("username") == null){ -->
<!-- //     	 response.sendRedirect("/wardenlogin"); -->
<!-- //      } -->
<%-- %> --%>
<!-- <a href = "/wardenlogout">Logout</a> -->

<!-- </br> -->
<!-- Lilavati Complaint List -->

<!-- </br> -->

<!-- <table> -->
<%--   <c:forEach items="${complaints}" var="comp"> --%>
<!--     <tr> -->
<%--       <td><a href = "/wardencomplaint/${comp.id}"><c:out value="${comp.roll}" /></a></td> --%>
<%--       <td><c:out value="${comp.name}" /></td> --%>
<!--     </tr> -->
<%--   </c:forEach> --%>
<!-- </table> -->


<!-- </body> -->
<!-- </html> -->