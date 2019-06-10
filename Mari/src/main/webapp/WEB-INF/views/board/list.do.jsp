<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- 샘플jsp -->
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%@include file="/WEB-INF/views/basicView/resourceH.jsp" %>
</head>
<body>
<div class="super_container">
<%@include file="/WEB-INF/views/basicView/header.jsp" %>
<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/images/room_02.jpg" data-speed="0.8"></div>
		<div class="home_container d-flex flex-column align-items-center justify-content-center">
			<div class="home_title"><h1>Book Your Stay</h1></div>
			<div class="home_text text-center">Fusce erat dui, venenatis et erat in, vulputate dignissim lacus. Donec vitae tempus dolor, sit amet elementum lorem. Ut cursus tempor turpis.</div>
			<div class="button home_button"><a href="#">book now</a></div>
		</div>
</div>
안녕하세요.




<!-- 바로위 home class에 data-image-src에 원하는 사진넣으시고 -->
<!--요기다 내용  집어넣으세요-->



<%@include file="/WEB-INF/views/basicView/footer.jsp" %>
</div>
<%@include file="/WEB-INF/views/basicView/resourceF.jsp" %>
</body>
</html>