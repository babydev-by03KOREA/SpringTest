<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css"/>
    <link rel="stylesheet" href="<c:url value="/resources/css/card.css"/>">
    <title>cardProducts</title>
</head>
<body>
<%@include file="../header.jsp" %>
<div class="container">
    <div class="card-box">
        <div class="img-gradient"></div>
        <img src="<c:url value="/resources/img/products/반바니.jpg"/>" alt="반바니"/>
        <div class="text-wrap">
            <h1>반바니 300</h1>
            <p>위생적이며 정확한 이등분이 가능한 반바니는 이미 230 곳에서 열일중!</p>
        </div>
        <div class="cart-btn"></div>
    </div>

    <div class="card-box">
        <div class="img-gradient"></div>
        <img src="<c:url value="/resources/img/products/PTP.jpg"/>" alt="PTP"/>
        <div class="text-wrap">
            <h1>PTP 약까기</h1>
            <p>약을 한줄씩 빠르고 정확하고 위생적이게!</p>
        </div>
        <div class="cart-btn"></div>
    </div>

    <div class="card-box">
        <div class="img-gradient"></div>
        <img src="<c:url value="/resources/img/products/정제분쇄기.jpg"/>" alt="정제분쇄기"/>
        <div class="text-wrap">
            <h1>정제분쇄기 고급형</h1>
            <p>검은 가루가 나오지 않는 정제분쇄기! 일본 품질 그대로 재현!</p>
        </div>
        <div class="cart-btn"></div>
    </div>
</div>
</body>
</html>
