<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>list lead</title>
</head>
<body>
   <h2>All the list are...</h2><br>
   <a href="view">NewRegistration</a> <br><br>
   
     <table border=1>
           <tr>
              <th>FirstName</th>
              <th>LastName</th>
              <th>Email</th>
              <th>Mobile</th>
              <th colspan="2">Action</th>
              
           </tr>
           
               <c:forEach  var="lead" items="${leads}">
               <tr>
                   <td>${lead.firstName}</td>
                   <td>${lead.lastName}</td>
                   <td>${lead.email}</td>
                   <td>${lead.mobile}</td>
                   <td><a href="delete?id=${lead.id}">delete</a> </td>
                   <td><a href="update?id=${lead.id}">update</a>
                   </tr> 
                </c:forEach>
          
     </table>
      
     

</body>
</html>