<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<%@include file="header.jsp"%>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<h3><a href="/Security/loginForm.do" style="text-decoration: none">로그인 창으로 이동</a></h3>
</body>
</html>
