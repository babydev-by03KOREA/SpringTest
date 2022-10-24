<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSTL TEST</title>
</head>
<body>
<%@include file="header.jsp" %>
<h3>List, 배열 요소를 순서대로 반복해서 처리할 수 있는 태그 입니다.</h3>
<h3>JSTL BASIC - forEach ArrayList</h3>
<c:forEach var="name" items="${ArrayList}" varStatus="status">
    <h4>${status.count} : <c:out value="${name}"/></h4>
</c:forEach>
<h3>JSTL BASIC - forEach HashMap</h3>
<c:forEach var="map" items="${HashMap}">
    <h4>${map.key} = ${map.value}</h4>
</c:forEach>
<h3>JSTL BASIC - forToken <br> 문자열을 자를때 사용됩니다.</h3>
<c:forTokens var="nemamdero" items="자바|서버|페이지" delims="|">
    <h4>JSP : ${nemamdero}</h4>
</c:forTokens>
</body>
</html>
