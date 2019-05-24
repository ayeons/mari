<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<script>
function fn_login(action) {
	var a=document.getElementById("memberId").value;
	var b=document.getElementById("memberPwd").value;
	
	if(a==null || a=="" ){
		alert("���̵� �Է����ּ���.");
	}else if(b==null || b==""){
		alert("��й�ȣ�� �Է����ּ���.");
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

<!-- �ٷ��� home class�� data-image-src�� ���ϴ� ���������ð� -->
<!--���� ����  �����������-->
=======
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<meta charset="utf-8">
<c:if test='${not empty message }'>
<script>
window.onload=function()
{
  result();
}

function result(){
	alert("아이디나  비밀번호가 틀립니다. 다시 로그인해주세요");
}
</script>
</c:if>
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
>>>>>>> branch 'master' of https://github.com/YunMinwook/mari.git

</body>
</html>