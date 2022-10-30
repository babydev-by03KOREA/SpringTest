<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <link rel="icon" href="<c:url value="/resources/favicon.ico"/>"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css"/>
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
		  integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"/>
	<!-- JavaScript Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"
			defer></script>
</head>
<body>
<%@include file="header.jsp" %>
<section>
    <h1>
        Hello world!
    </h1>

    <P> The time on the server is ${serverTime}. </P>

    <h3><a href="/member/login.do" style="text-decoration: none">로그인 창으로 이동 →</a></h3>
    <h3><a href="/Survey/survey.do" style="text-decoration: none">설문조사 창으로 이동 →</a></h3>
    <h3><a href="/JSTL/basic.do" style="text-decoration: none">JSTL 창으로 이동 →</a></h3>
</section>
<%@include file="./footer.jsp" %>
</body>
</html>
