<%@ page language="java" 
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- 샘플jsp -->
<html>
<head>
<title>Insert title here</title>
<%@include file="/WEB-INF/views/basicView/resourceH.jsp" %>
</head>
<body>
<div class="super_container">
<%@include file="/WEB-INF/views/basicView/header2.jsp" %>
<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/images/room21.jpg" data-speed="0.8"></div>
		<div class="home_container d-flex flex-column align-items-center justify-content-center">
			<div class="home_title"><h1>Hotel & Resort</h1></div>
			<div class="home_text text-center">Fusce erat dui, venenatis et erat in, vulputate dignissim lacus. Donec vitae tempus dolor, sit amet elementum lorem. Ut cursus tempor turpis.</div>
			
		</div>
</div>

<div style="display: table; margin-right: auto; margin-left: auto; margin-top: 1%;margin-bottom: 1%;">
<img src="${pageContext.request.contextPath}/resources/images/it.jpg" style="height: 400px; width: 800px;"><br>
</div>
<div style="display: table; margin-right: auto; margin-left: auto; margin-top: 1%;margin-bottom: 1%;">
<%@ include file="../include/admin_menu.jsp" %>

<c:if test="${message == 'success' }">
<h2>
	${sessionScope.admin_name }
	(${sessionScope.admin_userid})님 환영합니다. 
</h2>
</c:if>
<img src="${pageContext.request.contextPath}/resources/images/siba.png" style="height: 300px; width: 500px;"><br>
</div>

<!-- 바로위 home class에 data-image-src에 원하는 사진넣으시고 -->
<!--요기다 내용  집어넣으세요-->



<%@include file="/WEB-INF/views/basicView/footer.jsp" %>
</div>
<%@include file="/WEB-INF/views/basicView/resourceF.jsp" %>
</body>
</html>