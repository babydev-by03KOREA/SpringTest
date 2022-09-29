<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>USER AGREEMENT CHECK</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"/>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous" defer></script>
</head>
<body>
<%@include file="../header.jsp"%>
    <section>
        <h1>약관 동의</h1>
        <h3>사이트에 가입하시기 전 관련 약관을 반드시 확인 부탁드립니다.</h3>
        <form action="/member/signup.do" method="post">
            <label for="agreement1">
                <input type="checkbox" id="agreement1" value="true" name="agree" /> 약관동의
            </label>
            <input type="submit" value="동의하고 계속"/>
        </form>
    </section>
</body>
</html>
