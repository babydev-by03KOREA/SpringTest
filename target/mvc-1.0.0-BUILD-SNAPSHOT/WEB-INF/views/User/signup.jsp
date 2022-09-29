<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SIGN UP PAGE</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"/>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous" defer></script>
</head>
<body>
<%@include file="../header.jsp"%>
<section id="content">
    <form method="post" action="/member/signupCheck.do">
        <div class="input_area">
            <label for="userId">아이디</label>
            <input type="email" id="userId" name="userId" placeholder="example@email.com" required="required" />
        </div>

        <div class="input_area">
            <label for="userPass">패스워드</label>
            <input type="password" id="userPass" name="userPass" required="required" />
        </div>

        <div class="input_area">
            <label for="userName">닉네임</label>
            <input type="text" id="userName" name="userName" placeholder="닉네임을 입력해주세요" required="required" />
        </div>

        <div class="input_area">
            <label for="userPhon">연락처</label>
            <input type="text" id="userPhon" name="userPhon" placeholder="연락처를 입력해주세요" required="required" />
        </div>

        <button type="submit" id="signup_btn" name="signup_btn">회원가입</button>

    </form>
</section>
</body>
</html>
