<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Insert title here</title>
  <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
</head>
<body>

<h1>Form binding example</h1>

<sf:form method="POST" commandName="user">
  First name: <sf:input path="firstName" /><sf:errors path="firstName" cssClass="error"/> <br />
  <sf:errors path="*" element="div" cssClass="errors" />   
  Last name: <sf:input path="lastName" /><sf:errors path="lastName" cssClass="error"/><br />
  Email: <sf:input path="email" /><sf:errors path="email" cssClass="error"/><br />
  
  <input type="submit" value="Register" />
  <!-- displaying all errors together -->
</sf:form>

</body>
</html>