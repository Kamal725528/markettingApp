<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update</title>
</head>
<body>
          <h2>update Lead</h2>
          <a href="listall">ListAll</a>
          
          <form action="updateLead" method="post">
             <pre>
                 Id        <input type="hidden" name="id" value="${lead.id}">
                 FirstName <input type="text" name="firstName" value="${lead.firstName}"> <br>
                 LastName  <input type="text" name="lastName" value="${lead.lastName}"> <br>
                 Email     <input type="email" name="email" value="${lead.email}"> <br>
                 Mobile    <input type="text" name="mobile" value="${lead.mobile}"> <br> <br>
                 <input type="submit" value="update"><br><br>
                 
             </pre>
          </form>
          
        
</body>
</html>