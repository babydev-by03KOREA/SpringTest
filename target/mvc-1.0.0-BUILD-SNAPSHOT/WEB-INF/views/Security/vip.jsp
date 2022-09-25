<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>VIP ONLY</title>
</head>
<body>
<h1> FOR VIP MEMBERS! </h1>
<c:if test="${not empty pageContext.request.userPrincipal}">
    <p> Session On </p>
</c:if>
<c:if test="${empty pageContext.request.userPrincipal}">
    <p> Session Out </p>
</c:if>
<p> HELLO ${pageContext.request.userPrincipal.name} </p>
<a href="${pageContext.request.contextPath}/security-logout.do">Log Out</a>
</body>
</html>
