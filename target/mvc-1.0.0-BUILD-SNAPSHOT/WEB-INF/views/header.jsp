<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <!--  웹페이지가 화면(Viewport)에 표현되는 방식을 설정합니다. 모바일 환경에서 적용됩니다.  -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>HEADER</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">
<%--    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css"/>--%>
    <link rel="stylesheet" href="/resources/css/header.css">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"/>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"
            defer></script>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/index.do">KWAIHS</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="/Survey/survey.do">SURVEY</a></li>
            <li><a href="/JSTL/basic.do">JSTL</a></li>
            <li><a href="/Products/cardProducts.do">Products</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
        <c:if test="${member eq null}">
            <li><a href="/member/agreement.do"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
            <li><a href="/member/login.do"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
        </c:if>
            <c:if test="${member ne null}">
                <c:if test="${member.verify eq 9}">
                    <button type="button" class="btn btn-outline-light me-2" onclick="location.href='/admin/index.do'">ADMIN-ONLY</button>
                </c:if>
                <button type="button" class="btn btn-outline-light me-2" onclick="void(0);">${member.userName}님 환영해요!</button>
                <button type="button" class="btn btn-outline-light me-2" onclick="location.href='/member/logout.do'">LOGOUT</button>
            </c:if>
        </ul>
    </div>
</nav>
<%-- <c:if test="${member eq null}">
                        <button type="button" class="btn btn-outline-light me-2" onclick="location.href='/member/login.do'">
                            LOGIN
                        </button>
                        <button type="button" class="btn btn-outline-light me-2"
                                onclick="location.href='/member/signup.do'">SIGN-UP
                        </button>
                    </c:if>
                    <c:if test="${member ne null}">
                        <c:if test="${member.verify eq 9}">
                            <button type="button" class="btn btn-outline-light me-2" onclick="location.href='/admin/index.do'">ADMIN-ONLY</button>
                        </c:if>
                        <button type="button" class="btn btn-outline-light me-2" onclick="location.href='/member/login.do'">${member.userName}님 환영해요!</button>
                        <button type="button" class="btn btn-outline-light me-2" onclick="location.href='/member/logout.do'">LOGOUT</button>
                    </c:if>
                    --%>
</body>
</html>
