<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
          <h2>Create Lead</h2>
          <a href="listall">ListAll</a>
          
          <form action="saveLead" method="post">
             <pre>
                 FirstName <input type="text" name="firstName"> <br>
                 LastName  <input type="text" name="lastName"> <br>
                 Email     <input type="email" name="email"> <br>
                 Mobile    <input type="text" name="mobile"> <br> <br>
                 <input type="submit" value="save"><br><br>
                 
             </pre>
          </form>
          
          <h4 style="color:red">${msg } </h4>
</body>
</html>