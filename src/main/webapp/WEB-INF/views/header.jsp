<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <!--  웹페이지가 화면(Viewport)에 표현되는 방식을 설정합니다. 모바일 환경에서 적용됩니다.  -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>HEADER</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/navbar.css"/>">
</head>
<body>
<header class="main_header">
    <div class="login_menu">
        <span><a href="/member/login.do">로그인</a></span>
        <span><a href="/member/agreement.do">회원가입</a></span>
        <span><a href="javascript:void(0)">고객센터</a></span>
    </div>
    <nav id = "top_gnb">
        <div class="menu item_1 active">상품 등록</div>
        <div class="menu item_2">상품 목록</div>
        <div class="menu item_3">상품 소감</div>
        <div class="menu item_4">유저 목록</div>
        <div class="menu item_5"></div>
        <div class="menu item_6"></div>
    </nav>
</header>
</body>
</html>
