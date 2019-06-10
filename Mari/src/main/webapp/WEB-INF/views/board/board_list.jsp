<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<!-- 샘플jsp -->
<html>
<head>
<%@include file="/WEB-INF/views/basicView/resourceH.jsp" %>
<script>
$(function(){
	$("#btnWrite").click(function(){
		location.href="${pageContext.request.contextPath}/board/write.do";
	});
});
</script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="super_container">
<%@include file="/WEB-INF/views/basicView/header2.jsp" %>
<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/images/room_10.jpg" data-speed="0.8"></div>
		<div class="home_container d-flex flex-column align-items-center justify-content-center">
			<div class="home_title"><h1>Book Your Stay</h1></div>
			<div class="home_text text-center">Fusce erat dui, venenatis et erat in, vulputate dignissim lacus. Donec vitae tempus dolor, sit amet elementum lorem. Ut cursus tempor turpis.</div>
			<div class="button home_button"><a href="#">book now</a></div>
		</div>
</div>
<h2>게시판</h2>
<button type="button" id="btnWrite" >글쓰기</button>
<table border="1" width="600px"style="margin: 5%;">
	<tr>
		<tr>번호</tr>
		<tr>제목</tr>
		<tr>이름</tr>
		<tr>날짜</tr>
		<tr>조회수</tr>
	</tr>
<c:forEach var="row" items="${map.list}">
	<tr>
		<td>${row.bno}</td>
		<td>${row.title}</td>
		<td>${row.writer}</td>
		<td><fmt:formatDate value="${row.regdate}"
			pattern="yyyy-mm-dd HH:mm:ss" /></td>
		<td>${row.viewcnt}</td>
	</tr>
</c:forEach>
</table>
</div>




<!-- 바로위 home class에 data-image-src에 원하는 사진넣으시고 -->
<!--요기다 내용  집어넣으세요-->



<%@include file="/WEB-INF/views/basicView/footer.jsp" %>
<%@include file="/WEB-INF/views/basicView/resourceF.jsp" %>
</body>
</html>