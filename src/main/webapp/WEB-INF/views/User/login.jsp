<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>LOGIN PAGE 🔐</title>
</head>
<body>
<h1>LOGIN</h1>
<form action="login_check.do" method="post">
    <c:if test="${param.ng!=null}">
        <p> error : <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/></p>
    </c:if>
    USER : <input type="text" name="user_id"><br>
    PASSWORD : <input type="password" name="user_pw"><br>
    <input type="submit" value="Login">
</form>
</body>
</html>
