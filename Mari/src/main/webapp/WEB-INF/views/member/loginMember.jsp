<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<script>
function fn_login(action) {
	var a=document.getElementById("memberId").value;
	var b=document.getElementById("memberPwd").value;
	
	if(a==null || a=="" ){
		alert("아이디를 입력해주세요.");
	}else if(b==null || b==""){
		alert("비밀번호를 입력해주세요.");
	}else{
	var formObj=document.createElement("form");
	var id = document.createElement("input");
	var pwd = document.createElement("input");
	
	id.name="id";
	pwd.name="pwd";
	
	id.value=document.getElementById("memberId").value;
	pwd.value=document.getElementById("memberPwd").value;
	
	formObj.appendChild(id);
	formObj.appendChild(pwd);
	
	document.body.appendChild(formObj);
	
	formObj.method="post";
	formObj.action="${pageContext.request.contextPath}/member/login.do";
	formObj.submit();
	}
}


</script>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/images/home.jpg" data-speed="0.8"></div>
		<div class="home_container d-flex flex-column align-items-center justify-content-center">
			<div class="home_title"><h1>Sign In</h1></div>
			<div class="home_text text-center">
				<label>ID : </label>
				<input type="text" id="memberId">
			</div>
			<div class="home_text text-center">
				<label>PASSWORD : </label>
				<input type="password" id="memberPwd">
			</div>
			<div class="button home_button">
				<a href=javascript:fn_login("${pageContext.request.contextPath}/member/login.do")>Sign In</a>
			</div>
			<div class="button home_button">
				<a href="${pageContext.request.contextPath}/member/joinMember.do">Join Us</a>
			</div>
		</div>
</div>

<!-- 바로위 home class에 data-image-src에 원하는 사진넣으시고 -->
<!--요기다 내용  집어넣으세요-->

</body>
</html>