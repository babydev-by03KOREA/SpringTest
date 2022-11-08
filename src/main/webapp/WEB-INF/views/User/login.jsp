<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <title>LOGIN</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css"/>
    <link rel="stylesheet" href="/resources/css/login.css" />
</head>
<body>
<%@include file="../header.jsp"%>
<article class="section">
    <div class="login__group">
        <form action="/member/login.do" method="post" class="login__form">
            <div>
                <h1 class="login__title">로그인</h1>
            </div>
            <div>
                <label class="login__set">아이디를 입력하세요.</label>
                <label>
                    <input type="text" id="userid" name="userId" class="login__input__ID" />
                </label>
            </div>
            <div>
                <label class="login__set">비밀번호를 입력하세요.</label>
                <label>
                    <input type="password" id="passwd" name="userPass" class="login__input__PWD" />
                </label>
            </div>
            <c:if test="${message eq false}">
                <div style="color:red;"> 아이디 또는 비밀번호가 일치하지 않습니다.
                </div>
            </c:if>
            <div>
                <div class="id__save__box">
                    <label for="svchk">
                        <input type="checkbox" id="svchk" name="cookieCheck" value="Y" />
                        <b>아이디 저장</b>
                    </label>
                </div>
            </div>
            <div>
                <div class="login__sub">
                    <input type="submit" value="로그인">
                </div>
            </div>
        </form>
        <div>
            <ul class="find__menu">
                <li><a href="/member/findMyId.do">아이디 찾기 ></a></li>
                <li><a href="/member/findMyPWD.do">비밀번호 찾기 ></a></li>
            </ul>
        </div>
        <hr/>
        <div class="SNS">
            <div class="snsInfo">
                카카오로 3초만에 회원가입!
            </div>
            <ul>
                <li><a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=b516cfd19e1309e1920f8910eedeabc2&redirect_uri=http://localhost:8080/Kakao/UserLogin.do&response_type=code"><img src="/resources/img/KakaoBtn.png" alt="카카오로 로그인" class="SNS__Kakao"></a></li>
            </ul>
        </div>
        <div class="GeneralJoin">
            <div class="joinInfo">
                초간단 30초 일반 회원가입!
            </div>
            <div class="joinBtn">
                <button type="button" onclick="location.href='/member/UserJoin.do'">일반 회원가입</button>
            </div>
        </div>
    </div>
</article>
<%@include file="../footer.jsp"%>
</body>
</html>