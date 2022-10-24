<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Home</title>
	<link rel="icon" href="<c:url value="/resources/favicon.ico"/>"/>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css"/>
</head>
<body>
<%@include file="header.jsp"%>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<h3><a href="/member/login.do" style="text-decoration: none">로그인 창으로 이동 →</a></h3>
<h3><a href="/Survey/survey.do" style="text-decoration: none">설문조사 창으로 이동 →</a></h3>
<h3><a href="/JSTL/basic.do" style="text-decoration: none">JSTL 창으로 이동 →</a></h3>

<%@include file="./footer.jsp"%>
</body>
</html>
