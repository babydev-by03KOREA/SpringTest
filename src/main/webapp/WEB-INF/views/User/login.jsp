<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <title>LOGIN</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css"/>
  <link rel="stylesheet" href="<c:url value="/resources/css/login.css"/>">
</head>
<body>
<div class="bg"></div>
<form action="" class="login-form">
  <h1>로그인</h1>
  <p>신규 사용자이신가요? <a href="javascript:void(0)">계정 만들기</a></p>
  <label for="userEmail">이메일 주소<input type="email" id="userEmail" placeholder="이메일 주소를 입력해주세요."/></label>
  <input type="submit" class="btn-submit" value="계속"/>

  <div class="divider">
    <hr/><span>또는</span>
  </div>

  <button class="btn-google">
    <i class="icon icon-google"></i>Google로 계속
  </button>

  <button class="btn-facebook">
    <i class="icon icon-Facebook"></i>Facebook으로 계속
  </button>

  <p class="captcha-text">
    reCAPTCHA로 보호되며 Google <a href="javascript:void(0)">개인정보보호 정책</a> 및 <a href="javascript:void(0)">서비스 약관의</a> 적용을 받습니다.
  </p>

</form>
</body>
</html>
