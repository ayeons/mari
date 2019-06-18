<%@ page language="java" 
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<!-- 샘플jsp -->
<html>
<script>
$(function(){
	$("#btnReply").click(function(){
		reply();
	});
});
function reply() {
	var replytext=$("#replytext").val();
	var bno="${dto.bno}";
	var param={"replytext": replytext, "bno":bno};
	$.ajax({
		type: "post",
		url: "${pageContext.request.contextPath}/reply/insert.do",
		date: param,
		success: function() {
			alert("댓글이 등록되었습니다.");
		}
	});
}
</script>

<style>
.fileDrop {
	width: 600px;
	height: 100px;
	border: 1px dotted gray;
	background-color: gray;
}
</style>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%@include file="/WEB-INF/views/basicView/resourceH.jsp" %>
</head>
<body>
<div class="super_container">
<%@include file="/WEB-INF/views/basicView/header2.jsp" %>
<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/images/home.jpg" data-speed="0.8"></div>
		<div class="home_container d-flex flex-column align-items-center justify-content-center">
			<div class="home_title"><h1>Book Your Stay</h1></div>
			<div class="home_text text-center">Fusce erat dui, venenatis et erat in, vulputate dignissim lacus. Donec vitae tempus dolor, sit amet elementum lorem. Ut cursus tempor turpis.</div>
			<div class="button home_button"><a href="#">book now</a></div>
		</div>
</div>
<script src="${pageContext.request.contextPath}/ckeditor/ckeditor.js"></script>
<h2>게시물 보기</h2>
<form id="form1" name="form1" method="post">
<div>작성일자 : <fmt:formatDate value="${dto.regdate}"
	pattern="yyyy-MM-dd a HH:mm:ss" /></div>
<div>조회수 : ${dto.viewcnt} </div>
<div>이름 : ${dto.name }</div>
<div>제목: <input name="title" value="${dto.title}"></div>
<div style="width:80%;">내용:
<textarea rows="3" cols="80" name="content"
id="content">${dto.content}</textarea>
</div>
<script>
CKEDITOR.replace("content", {
	filebrowserUploadUrl: "${pageContext.request.contextPath}/imageUpload.do",
	height: "150px"
});
</script>
<div id="uploadedList"></div>
<div class="fileDrop"></div>
<div>
	<input type="hidden" name="bno" value="${dto.bno}">
	<c:if test="${sessionScope.name == dto.writer}">
		<button type="button" id="btnUpdate">수정</button>
		<button type="button" id="btnDelete">삭제</button>
	</c:if>
		<button type="button" id="btnList">목록</button>
</div>
</form>
<!-- 댓글 작성 -->
<div style="width: 700px; text-align:center;">
<c:if test="${sessionScope.name == null }">
없습니다.
</c:if>
<c:if test="${sessionScope.name != null }">
	<textarea rows="5" cols="80" id="replytext"
	placeholder="댓글을 작성하세요"></textarea>
	<br>
	<button type="button" id="btnReply">댓글쓰기</button>
</c:if>
</div>
<!-- 댓글 목록을 출력할 영역 -->
<div id="listReply"></div>
<!-- 바로위 home class에 data-image-src에 원하는 사진넣으시고 -->
<!--요기다 내용  집어넣으세요-->



<%@include file="/WEB-INF/views/basicView/footer.jsp" %>
</div>
<%@include file="/WEB-INF/views/basicView/resourceF.jsp" %>
</body>
</html>