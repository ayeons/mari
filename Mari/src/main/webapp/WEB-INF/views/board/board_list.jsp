<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<!-- 샘플jsp -->
<html>
<head>
<%@include file="/WEB-INF/views/basicView/resourceH.jsp" %>
<script>
$(function(){
	$("#btnWrite").click(function(){
		location.href="${pageContext.request.contextPath}/board/write.do";
	});
});
function list(page){
	location.href="${pageContext.request.contextPath}/board/list.do?curPage="+page
			+"&search_option=${map.search_option}"
			+"$keyword=${map.keyword}";
}
</script>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
		<div style="margin-top: 100px;">notice board</div>
		<h1>Amazing Hotel in front of the Sea</h1>
</div>
<div class="row intro_row">
				<div class="col-xl-8 col-lg-10 offset-xl-2 offset-lg-1">
					<div class="intro_text text-center">
						<p>Maecenas sollicitudin tincidunt maximus. Morbi tempus malesuada erat sed pellentesque. Donec pharetra mattis nulla, id laoreet neque scelerisque at. Quisque eget sem non ligula consectetur ultrices in quis augue. Donec imperd iet leo eget tortor dictum, eget varius eros sagittis. Curabitur tempor dignissim massa ut faucibus sollicitudin tinci dunt maximus. Morbi tempus malesuada erat sed pellentesque. Donec pharetra mattis nulla, id laoreet neque scele risque at. Quisque eget sem non ligula consectetur ultrices in quis augue. Donec imperdiet leo eget tortor dictum, eget varius eros sagittis. Curabitur tempor dignissim massa ut faucibus.</p>
					</div>
				</div>
			</div>
			

<div style="display: table; margin-left: auto; margin-right: auto; margin-top: 5%;">
<form name="form1" method="post" action="${pageContext.request.contextPath}/board/list.do">
<select name="search_option">
	<option value="all">이름+내용+제목</option>
	<option value="writer">이름</option>
	<option value="content">내용</option>
	<option value="title">제목</option>
</select>
<input name="keyword" value="${map.keyword}">
<input type="submit" value="조회">
</form>



<button type="button" id="btnWrite" >글쓰기</button>
${map.count}개의 게시물이 있습니다.
<table border="1" style="margin: 5%; width: 600px;">
	<tr style="color: black;">
		<td>번호</td>
		<td>제목</td>
		<td>이름</td>
		<td>날짜</td>
		<td>조회수</td>
	</tr>
<c:forEach var="row" items="${map.list}">
	<tr>
		<td>${row.bno}</td>
		<td>
<a href="${pageContext.request.contextPath}/board/view.do?bno=${row.bno}
&curPage=${map.pager.curPage}
&search_option=${map.search_option}
&keyword=${map.keyword}">${row.title}</a></td>
		<td>${row.writer}</td>
		<td><fmt:formatDate value="${row.regdate}"
			pattern="yyyy-mm-dd HH:mm:ss" /></td>
		<td>${row.viewcnt}</td>
	</tr>
</c:forEach>
<!-- 페이지 네비게이션 -->
	<tr>
		<td colspan="5" align="center">
			<c:if test="${map.pager.curBlock > 1 }">
				<a href="javascript:list('1')">[처음]</a>
			</c:if>
			<c:if test="${map.pager.curBlock > 1 }">
				<a href="javascript:list('${map.pager.prevPage}')">[이전]</a>
			</c:if>
			<c:forEach var="num" begin="${map.pager.blockBegin}"
			end="${map.pager.blockEnd}">
				<c:choose>
					<c:when test="${num == map.pager.curPage}">
						<span style="color:red;">${num}</span>&nbsp;
					</c:when>
					<c:otherwise>
						<a href="javascript:list('${num }')">${num}</a>&nbsp;
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${map.pager.curBlock <= map.pager.totBlock}">
				<a href="javascript:list('${map.pager.nextPage }')">[다음]</a>
			</c:if>
			<c:if test="${map.pager.curPage <= map.pager.totPage}">
				<a href="javascript:list('${map.pager.totPage}')">[끝]</a>
			</c:if>
		</td>
	</tr>
</table>
</div>
</div>
</div>



<!-- 바로위 home class에 data-image-src에 원하는 사진넣으시고 -->
<!--요기다 내용  집어넣으세요-->



<%@include file="/WEB-INF/views/basicView/footer.jsp" %>
<%@include file="/WEB-INF/views/basicView/resourceF.jsp" %>
</body>
</html>