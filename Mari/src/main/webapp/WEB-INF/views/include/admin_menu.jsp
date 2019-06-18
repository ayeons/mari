<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
a{
font-size: 25px;

}


</style>
<body>
<a href="${pageContext.request.contextPath}/product/list">[상품목록편집]</a>&nbsp;&nbsp;&nbsp;
<a href="${pageContext.request.contextPath}/product/write.do">[상품등록]</a>
<a>이 가능합니다.</a><br>
<c:choose>
	<c:when test="${sessionScope.admin_userid == null }">
		<a href="${pageContext.request.contextPath}/admin/login.do">[관리자 로그인]</a>
	</c:when>
	<c:otherwise>
		<br>
	</c:otherwise>
</c:choose>

</body>
</html>