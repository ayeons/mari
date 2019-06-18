<%@ page language="java"
    pageEncoding="UTF-8"%>
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
<script>
$(function(){
	$("#btnLogin").click(function(){
		var userid=$("#userid").val();
		var passwd=$("#passwd").val();
		if(userid==""){
			alert("아이디를 입력하세요.");
			$("#userid").focus();
			return;
		}
		if(passwd==""){
			alert("비밀번호를 입력하세요.");
			$("#passwd").focus();
			return;
		}
		document.form1.action="${pageContext.request.contextPath}/admin/login_check.do";
		document.form1.submit();
	});
});
</script>








<div class="contact" >
		<div class="contact_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="section_title text-center">
							<div style="margin-top: 10%;">LOG IN</div>
<h2 style="margin-top: 10%;">관리자 로그인</h2>
							</div>

<div class="contact_form_container">
<form name="form1" method="post">
	<table border="1" method="post"  style="display:table; margin-left: auto; margin-right: auto;  margin-bottom: 10%;">
		<tr>
			<td>아이디</td>
			<td><input id="userid" name="userid"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" id="passwd" name="passwd"></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="button" id="btnLogin">로그인</button>
				<c:if test="${param.message == 'nologin' }">
					<div style="color:red;">
						먼저 로그인하세요.
					</div>
				</c:if>
				<c:if test="${message == 'error' }">
					<div style="color:red;">
						아이디 또는 비밀버호가 일치하지 않습니다.
					</div>
				</c:if>
				<c:if test="${message ==  'logout'}">
					<div style="color:red;">
					 	로그아웃되었습니다.
					 </div>
				</c:if>
			</td>
		</tr>
	</table>
</form>
</div>
</div>
</div>
</div>
</div>
</div>





<!-- 바로위 home class에 data-image-src에 원하는 사진넣으시고 -->
<!--요기다 내용  집어넣으세요-->



<%@include file="/WEB-INF/views/basicView/footer.jsp" %>
</div>
<%@include file="/WEB-INF/views/basicView/resourceF.jsp" %>
</body>
</html>