<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>호텔 예약 정보</title>
</head>
<body>
    <script>
    	alert("${msg}");
		location.href = "${pageContext.request.contextPath}/car/rentCar"
	</script>
</body>
</html>
