<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<a href="${pageContext.request.contextPath}/product/list">상품목록</a>
<a href="${pageContext.request.contextPath}/product/write.do">상품등록</a>
<c:choose>
	<c:when test="${sessionScope.admin_userid == null }">
		<a href="${pageContext.request.contextPath}/admin/login.do">관리자 로그인</a>
	</c:when>
	<c:otherwise>
		${sessionScope.admin_name}님이 로그인중입니다.
		<a href="${pageContext.request.contextPath}/admin/logout.do">로그아웃</a>
	</c:otherwise>
</c:choose>

</body>
</html>