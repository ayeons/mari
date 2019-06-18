<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<!-- 샘플jsp -->
<html>
<head>
<style>
table{
font-size: 20px;
text-shadow: blue;
color: black;
font-style: inherit;
}
</style>
<script>
//기능 미구현
</script>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%@include file="/WEB-INF/views/basicView/resourceH.jsp" %>
</head>
<body>
<div class="super_container">
<%@include file="/WEB-INF/views/basicView/header2.jsp" %>
<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/images/room_12.jpg" data-speed="0.8"></div>
		<div class="home_container d-flex flex-column align-items-center justify-content-center">
			<div class="home_title"><h1>Hotel & Resort</h1></div>
			<div class="home_text text-center">Fusce erat dui, venenatis et erat in, vulputate dignissim lacus. Donec vitae tempus dolor, sit amet elementum lorem. Ut cursus tempor turpis.</div>
		</div>
</div>

<div class="rooms_right_content">
	<div class="section_title text-center">
		<div style="margin-top: 100px;">ROOM LIST</div>
		<h1>Amazing Hotel in front of the Sea</h1>
</div>
<div class="row intro_row">
				<div class="col-xl-8 col-lg-10 offset-xl-2 offset-lg-1">
					<div class="intro_text text-center">
						<p>Maecenas sollicitudin tincidunt maximus. Morbi tempus malesuada erat sed pellentesque. Donec pharetra mattis nulla, id laoreet neque scelerisque at. Quisque eget sem non ligula consectetur ultrices in quis augue. Donec imperd iet leo eget tortor dictum, eget varius eros sagittis. Curabitur tempor dignissim massa ut faucibus sollicitudin tinci dunt maximus. Morbi tempus malesuada erat sed pellentesque. Donec pharetra mattis nulla, id laoreet neque scele risque at. Quisque eget sem non ligula consectetur ultrices in quis augue. Donec imperdiet leo eget tortor dictum, eget varius eros sagittis. Curabitur tempor dignissim massa ut faucibus.</p>
					</div>
				</div>
			</div>
<button type="button" id="dtnAdd"  style="margin-left: auto; margin-right: auto;">상품등록</button>
<table width="#" style="margin-left: auto; margin-right: auto;" >
	<tr style="margin-bottom: 5%;" >
		<th>Product ID</th>
		<th>&nbsp;</th>
		<th style="padding-right: 30px;">name</th>
		<th>price</th>
	</tr>
<c:forEach var="row" items="${list}">
	<tr align="center">
		<td>${row.product_id}</td>
		<td><img src="${pageContext.request.contextPath}/resources/images/${row.picture_url}"
		width="600" height="350" style="margin: 50px;"></td>

		<td style="padding-right: 30px;">
		<a href="${pageContext.request.contextPath}/product/detail/${row.product_id}">
		${row.product_name}</a></td>
		<!-- 관리자만 편집 버튼 표시 -->
		<td>
	<fmt:formatNumber value="${row.price}" pattern="#,###" /></td>
		<td>
		<c:if test="${sessionScope.admin_userid != null }">
			<a href="${pageContext.request.contextPath}/product/edit/${row.product_id}" style="margin-left: 20px;">[편집]</a>
		</c:if>
		</td>
	</tr>
</c:forEach>
</table>
</div>




<!-- 바로위 home class에 data-image-src에 원하는 사진넣으시고 -->
<!--요기다 내용  집어넣으세요-->



<%@include file="/WEB-INF/views/basicView/footer.jsp" %>
</div>
<%@include file="/WEB-INF/views/basicView/resourceF.jsp" %>
</body>
</html>