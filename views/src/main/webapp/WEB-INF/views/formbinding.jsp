<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Form binding example</h1>

<sf:form method="POST" commandName="user">
  First name: <sf:input path="firstName" /><sf:errors path="firstName"/> <br />
  Last name: <sf:input path="lastName" /><sf:errors path="lastName"/><br />
  Email: <sf:input path="email" /><sf:errors path="email"/><br />
  
  <input type="submit" value="Register" />
</sf:form>

</body>
</html>