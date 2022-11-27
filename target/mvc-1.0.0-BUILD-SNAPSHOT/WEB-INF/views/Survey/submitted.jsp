<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>RESPONSE VALUE</title>
</head>
<body>
    <h3>YOU'RE RESPONSE</h3>
    <ul>
        <c:forEach var="response"
            items="${ansData.responses}" varStatus="status">
            <li>${status.index + 1}번 문항: ${response}</li>
        </c:forEach>
    </ul>
    <h3>LOCATION: ${ansData.dto.location}</h3>
    <h3>AGE: ${ansData.dto.age}</h3>
</body>
</html>
