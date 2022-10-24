<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>SPRING SECURITY LOGIN 🔐</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"/>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"
            defer></script>
    <style>
        html,
        body {
            height: 100%;
        }

        /*body {*/
        /*    display: -ms-flexbox;*/
        /*    display: flex;*/
        /*    -ms-flex-align: center;*/
        /*    text-align: center;*/
        /*    align-items: center;*/
        /*    padding-top: 40px;*/
        /*    padding-bottom: 40px;*/
        /*    background-color: #f5f5f5;*/
        /*}*/

        .form-signin {
            width: 100%;
            max-width: 330px;
            padding: 15px;
            margin: auto;
        }
        .form-signin .checkbox {
            font-weight: 400;
        }
        .form-signin .form-control {
            position: relative;
            box-sizing: border-box;
            height: auto;
            padding: 10px;
            font-size: 16px;
        }
        .form-signin .form-control:focus {
            z-index: 2;
        }
        .form-signin input[type="email"] {
            margin-bottom: -1px;
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }
        .form-signin input[type="password"] {
            margin-bottom: 10px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
        }
    </style>

</head>
<body>
<%@include file="../header.jsp"%>
<form class="form-signin" action="/member/login.do" method="POST">
<%--    <img src="/resources/img/spring.png" style="width: 200px; height: 95px">--%>
    <h1 class="h3 mb-3 font-weight-normal"></h1>
    <input type="email" name="userId" class="form-control" placeholder="MAIL ADDRESS" required="required" autofocus />
    <input type="password" name="userPass" class="form-control" placeholder="Password" required="required" />

    <button class="btn btn-lg btn-primary btn-block" type="submit">LOGIN</button>
    <c:if test="${msg == false}">
        <p style="color: red">ID와 Password를 확인해주세요.</p>
    </c:if>
</form>
</body>
</html>