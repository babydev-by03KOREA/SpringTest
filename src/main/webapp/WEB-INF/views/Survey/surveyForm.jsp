<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>SURVEY</title>
    <!--  웹페이지가 화면(Viewport)에 표현되는 방식을 설정합니다. 모바일 환경에서 적용됩니다.  -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
    <form action="/Survey/surveyValue.do" method="post">
        <h4>WHAT IS YOU'RE ROLE?</h4>
        <div class="surveyRole">
            <label for="backEnd"><input type="radio" id="backEnd" name="responses[0]" value="backEnd">backEnd</label>
            <label for="frontEnd"><input type="radio" id="frontEnd" name="responses[0]" value="frontEnd">frontEnd</label>
            <label for="fullStack"><input type="radio" id="fullStack" name="responses[0]" value="fullStack">fullStack</label>
        </div>
        <h4>WHAT'S IDE DO YOU NEED</h4>
        <div class="loveIDE">
            <label for="Eclipse"><input type="radio" id="Eclipse" name="responses[1]" value="Eclipse">Eclipse</label>
            <label for="Intellij"><input type="radio" id="Intellij" name="responses[1]" value="Intellij">Intellij</label>
            <label for="Vim"><input type="radio" id="Vim" name="responses[1]" value="Vim">Vim</label>
        </div>
        <h4>TELL ME ABOUT YOU NEED</h4>
        <div class="needs">
            <label for="needs">[NEEDS]<br/><textarea id="needs" name="responses[2]" placeholder="TELL ME ANYTHING!"></textarea></label>
        </div>
        <div class="location">
            <label for="location">[LOCATION]<br/><input type="text" name="dto.location" id="location" /></label>
        </div>
        <div class="age">
            <label for="age">[AGE]<br/><input type="number" name="dto.age" id="age" /></label>
        </div>
        <input type="submit" value="응답제출"/>
    </form>
</body>
</html>
