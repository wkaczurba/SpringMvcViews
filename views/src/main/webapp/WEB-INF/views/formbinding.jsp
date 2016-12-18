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
  <sf:label path="firstName" cssErrorClass="error">First name</sf:label>: 
    <sf:input path="firstName" cssErrorClass="error" /><br />
  
  <sf:label path="lastName" cssErrorClass="error">Last name</sf:label>:
    <sf:input path="lastName" cssErrorClass="error"/><br />
  
  <sf:label path="email" cssErrorClass="error">Email</sf:label>:
    <sf:input path="email" cssErrorClass="error"/><br />
  
  <br />  
  <sf:errors path="*" element="div" cssClass="errors" />   
  
  <input type="submit" value="Register" />
  <!-- displaying all errors together -->
</sf:form>

</body>
</html>