<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- 샘플jsp -->
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%@include file="/WEB-INF/views/basicView/resourceH.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.min.js"></script>
<script>
$(function(){
	$("#btnSave").click(function(){
		document.form1.submit();
	});
});
</script>
</head>
<body>
<div class="super_container">
<%@include file="/WEB-INF/views/basicView/header2.jsp" %>
<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/images/room_10.jpg" data-speed="0.8"></div>
		<div class="home_container d-flex flex-column align-items-center justify-content-center">
			<div class="home_title"><h1>Hotel & Resort</h1></div>
			<div class="home_text text-center">Fusce erat dui, venenatis et erat in, vulputate dignissim lacus. Donec vitae tempus dolor, sit amet elementum lorem. Ut cursus tempor turpis.</div>
	
		</div>
</div>
<div class="rooms_right_content">
	<div class="section_title text-center">
		<div style="margin-top: 10px;">writing</div>
		<h1>Amazing Hotel in front of the Sea</h1>
</div>
<div class="row intro_row">
				<div class="col-xl-8 col-lg-10 offset-xl-2 offset-lg-1">
					<div class="intro_text text-center">
						<p>Maecenas sollicitudin tincidunt maximus. Morbi tempus malesuada erat sed pellentesque. Donec pharetra mattis nulla, id laoreet neque scelerisque at. Quisque eget sem non ligula consectetur ultrices in quis augue. Donec imperd iet leo eget tortor dictum, eget varius eros sagittis. Curabitur tempor dignissim massa ut faucibus sollicitudin tinci dunt maximus. Morbi tempus malesuada erat sed pellentesque. Donec pharetra mattis nulla, id laoreet neque scele risque at. Quisque eget sem non ligula consectetur ultrices in quis augue. Donec imperdiet leo eget tortor dictum, eget varius eros sagittis. Curabitur tempor dignissim massa ut faucibus.</p>
					</div>
				</div>
			</div>

<div style="display: table; margin-left: auto; margin-right:  auto; margin-top: 10px;">
<h2>글쓰기</h2>
<form id="form1" name="form1" method="post"
action="${pageContext.request.contextPath}/board/insert.do">
<div>
	제목 <input name="title" id="title" size="80"
		placeholder="제목을 입력하세요.">
</div>
<div style="width:800px;">
	내용 <textarea id="content" name="content" rows="3" cols="80"
		placeholder="내용을 입력하세요."></textarea>
</div>
<div>
	첨부파일을 등록하세요.
	<div class="fileDrop"></div>
	<div id="uploadedList"></div>
</div>
<div style="width:700px; text-align:center">
	<button type="button" id="btnSave">확인</button>
</div>
</form>
</div>
</div>


<!-- 바로위 home class에 data-image-src에 원하는 사진넣으시고 -->
<!--요기다 내용  집어넣으세요-->



<%@include file="/WEB-INF/views/basicView/footer.jsp" %>
</div>
<%@include file="/WEB-INF/views/basicView/resourceF.jsp" %>
</body>
</html>