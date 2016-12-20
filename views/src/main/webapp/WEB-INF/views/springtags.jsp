<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Using &lt;s:url&gt; tags</h1>

<h3>Case one: (working)</h3>
<s:url value="/url/path/{variableName}">
  <s:param name="variableName" value="more than JSTL c:url" />
</s:url>

<h3>Case two: (broken)</h3>
<s:url value="/spittles" var="spittlesJSUrl" javaScriptEscape="true">
<s:param name="max" value="60" />
<s:param name="count" value="20" />
</s:url>
<script>
  var spittlesUrl = "${spittlesJSUrl}"
  // SHould be rendered as: var spittlesUrl = "/spittles?max=60&count=20" or similarly.
</script>

<hr>
<h3>Case three: &lt;s:escapeBody;&gt; (working)</h3>
<s:escapeBody>
(5 > 4) & 4 < 5)
&lt;
</s:escapeBody>

</body>
</html>