<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>ADMIN ONLY</title>
</head>
<body>
<h1> FOR ADMIN! </h1>
<s:authorize access="isAuthenticated()">
    <p> Session On </p>
</s:authorize>
<s:authorize access="isAnonymous()">
    <p> Session Off </p>
</s:authorize>
<p> HELLO <s:authentication property="name"/> </p>
<a href="${pageContext.request.contextPath}/security_logout.do">Log Out</a>
</body>
</html>
