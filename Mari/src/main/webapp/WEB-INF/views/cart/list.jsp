<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<!-- ����jsp -->
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
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/images/home.jpg" data-speed="0.8"></div>
		<div class="home_container d-flex flex-column align-items-center justify-content-center">
			<div class="home_title"><h1>Book Your Stay</h1></div>
			<div class="home_text text-center">Fusce erat dui, venenatis et erat in, vulputate dignissim lacus. Donec vitae tempus dolor, sit amet elementum lorem. Ut cursus tempor turpis.</div>
			<div class="button home_button"><a href="#">book now</a></div>
		</div>
</div>
<script>
$(function(){
	$("#btnList").click(function(){
		location.href="${pageContext.request.contextPath}/product/list";
	});
	$("#btnDelete").click(function(){
		if(confirm("��ٱ��ϸ� ���ðڽ��ϱ�?")){
			location.href="${pageContext.request.contextPath}/cart/deleteAll.do";
		}
	});
});
</script>
<h2>��ٱ���</h2>
<c:choose>
	<c:when test="${map.count == 0 }">
	��ٱ��ϰ� ������ϴ�.
	</c:when>
	<c:otherwise>
		<form id="form1" name="form1" method="post"
		action="${pageContext.request.contextPath}/cart/update.do">
			<table border="1" width="400px;">
				<tr>
					<th>��ǰ��</th>
					<th>�ܰ�</th>
					<th>����</th>
					<th>�ݾ�</th>
					<th>&nbsp;</th>
				</tr>
<!--  forEach var="��������" items="���պ���" -->
<c:forEach var="row" items="${map.list}">
	<tr align="center">
		<td>${row.product_name}</td>
		<td><fmt:formatNumber value="${row.price}"
				pattern="#,###,###" /></td>
		<td><input type="number" name="amount"
			style="width:30px;"
			value="<fmt:formatNumber value="${row.amount}"
				pattern="#,###,###" />">
			<input type="hidden" name="amount"
			value="${row.amount}">
			<input type="hidden" name="cart_id"
				value="${row.cart_id}">
		</td>
		<td><fmt:formatNumber value="${row.money}"
			pattern="#,###,###"/></td>
		<td><a href=
		"${pageContext.request.contextPath}/cart/delete.do?cart_id=${row.cart_id}">[����]</a>
		</td>
	</tr>
</c:forEach>
	<tr>
		<td colspan="5" align="right">
			��ٱ��� �ݾ� �հ� :
			<fmt:formatNumber value="${map.sumMoney}"
				pattern="#,###,###" /><br>
				��۷� : ${map.fee}<br>
				���հ� : <fmt:formatNumber value="${map.sum}"
					pattern="#,###,###" />
			</td>
		</tr>
	</table>
	<button id="btnUpdate">����</button>
	<button type="button" id="btnDelete">��ٱ��� ����</button>
	</form>
</c:otherwise>
</c:choose>
<button type="button" id="btnList">��ǰ���</button>






<!-- �ٷ��� home class�� data-image-src�� ���ϴ� ���������ð� -->
<!--���� ����  �����������-->



<%@include file="/WEB-INF/views/basicView/footer.jsp" %>
</div>
<%@include file="/WEB-INF/views/basicView/resourceF.jsp" %>
</body>
</html>