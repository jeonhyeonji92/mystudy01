<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>tboard2 리스트 출력 예제</title>
</head>
<body>
<c:forEach var="e" items="${list}">
	<div>${e.num } / ${e.title }</div>

</c:forEach>
</body>
</html>