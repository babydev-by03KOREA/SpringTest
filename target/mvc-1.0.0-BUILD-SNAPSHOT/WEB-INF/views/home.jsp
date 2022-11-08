<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Position 예시</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/description.css"/>">
</head>
<body>
<%@include file="./header.jsp"%>
<main>
    <div class="container">
        <h1>위생, 사용성, 정확성<br>시간, 돈 모두 반바느로.</h1>
        <div class="img-wrap">
            <img src="<c:url value="/resources/img/products/banbaniBig.jpg" />" alt="반바니 무료 시현 서비스" class="img-1">
            <img src="<c:url value="/resources/img/products/반바니.jpg"/> " alt="" class="img-2">
        </div>
        <p>약사님의 시간, 인건비 모두 제가 일시불로 구매하겠습니다!<br>기계를 넘어 진정한 약사님만에 동반자로.</p>
    </div>
</main>

</body>
</html>

