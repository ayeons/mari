<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<script>
function fn_insert(action) {
	var a=document.getElementById("memberId").value;
	var b=document.getElementById("memberPwd").value;
	var c=document.getElementById("memberName").value;
	var d=document.getElementById("memberJumin1").value;
	var e=document.getElementById("memberJumin2").value;
	var f=document.getElementById("memberTel").value;
	var g=document.getElementById("memberMail").value;
	
	if(a==null || a=="" ){
		alert("아이디를 입력해주세요.");
	}else if(b==null || b==""){
		alert("비밀번호를 입력해주세요.");
	}else{
	var formObj=document.createElement("form");
	var id = document.createElement("input");
	var pwd = document.createElement("input");
	var name = document.createElement("input");
	var jumin1 = document.createElement("input");
	var jumin2 = document.createElement("input");
	var tel = document.createElement("input");
	var mail = document.createElement("input");
	
	id.name="id";
	pwd.name="pwd";
	name.name="name";
	jumin1.name="jumin1";
	jumin2.name="jumin2";
	tel.name="tel";
	mail.name="mail";
	
	id.value=document.getElementById("memberId").value;
	pwd.value=document.getElementById("memberPwd").value;
	name.value=document.getElementById("memberName").value;
	jumin1.value=document.getElementById("memberJumin1").value;
	jumin2.value=document.getElementById("memberJumin2").value;
	tel.value=document.getElementById("memberTel").value;
	mail.value=document.getElementById("memberMail").value;
	
	formObj.appendChild(id);
	formObj.appendChild(pwd);
	formObj.appendChild(name);
	formObj.appendChild(jumin1);
	formObj.appendChild(jumin2);
	formObj.appendChild(tel);
	formObj.appendChild(mail);
	
	document.body.appendChild(formObj);
	
	formObj.method="post";
	formObj.action="${pageContext.request.contextPath}/member/insertMember.do";
	formObj.submit();
	}
}


</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/images/home.jpg" data-speed="0.8"></div>
		<div class="home_container d-flex flex-column align-items-center justify-content-center">
			<div class="home_text text-center">
				<label>ID : </label>
				<input type="text" id="memberId">
			</div>
			<div class="home_text text-center">
				<label>PASSWORD : </label>
				<input type="text" id="memberPwd">
			</div>
			<div class="home_text text-center">
				<label>NAME : </label>
				<input type="text" id="memberName">
			</div>
			<div class="home_text text-center">
				<label>JUMIN : </label>
				<input type="text" id="memberJumin1">
				-
				<input type="text" id="memberJumin2">
			</div>
			<div class="home_text text-center">
				<label>TEL : </label>
				<input type="text" id="memberTel">
			</div>
			<div class="home_text text-center">
				<label>MAIL : </label>
				<input type="text" id="memberMail">
			</div>
			
			
			<div class="button home_button">
				<a href=javascript:fn_insert("${pageContext.request.contextPath}/member/insertMember.do")>Join Us</a>
			</div>
		</div>
</div>

<!-- 바로위 home class에 data-image-src에 원하는 사진넣으시고 -->
<!--요기다 내용  집어넣으세요-->

</body>
</html>