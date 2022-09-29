<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SURVEY</title>
</head>
<body>
<%@ include file="../header.jsp" %>
    <form action="/survey/surveyValue.do" method="post">
        <h4>WHAT IS YOU'RE ROLE?</h4>
        <div class="surveyRole">
            <label for="backEnd"><input type="radio" id="backEnd" name="responses[0]" value="backEnd"></label>
            <label for="frontEnd"><input type="radio" id="frontEnd" name="responses[0]" value="backEnd"></label>
            <label for="fullStack"><input type="radio" id="fullStack" name="responses[0]" value="backEnd"></label>
        </div>
        <h4>WHAT'S IDE DO YOU NEED</h4>
        <div class="loveIDE">
            <label for="Eclipse"><input type="radio" id="Eclipse" name="responses[1]" value="Eclipse"></label>
            <label for="Intellij"><input type="radio" id="Intellij" name="responses[1]" value="Intellij"></label>
            <label for="ETC"><input type="radio" id="ETC" name="responses[1]" value="ETC."></label>
        </div>
        <h4>TELL ME ABOUT YOU NEED</h4>
        <div class="needs">
            <label for="needs"><input type="text" name="responses[2]" id="needs" /></label>
        </div>
        <div class="location">
            <label for="location"><input type="text" name="dto.location" id="location" /></label>
        </div>
        <div class="age">
            <label for="age"><input type="number" name="dto.age" id="age" /></label>
        </div>
        <input type="submit" value="응답제출"/>
    </form>
</body>
</html>
