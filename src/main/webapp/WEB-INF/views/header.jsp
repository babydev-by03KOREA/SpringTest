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
    <link rel="stylesheet" href="<c:url value="/resources/css/header.css"/>">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"/>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"
            defer></script>
</head>
<body>
<header>
    <a href="/index.do"><img class="logo" src="<c:url value="/resources/img/OSMEDI_LOGO.png" />"/></a>
    <nav>
        <ul>
            <li class="active"><a href="/Products/cardProducts.do">Products</a></li>
            <li><a href="#">Story</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </nav>
</header>


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
