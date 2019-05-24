<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/contact.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/contact_responsive.css">
<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/images/home.jpg" data-speed="0.8"></div>
		<div class="home_container d-flex flex-column align-items-center justify-content-center">
<!-- 
			<div class="home_title"><h1>Book Your Stay</h1></div>
			<div class="home_text text-center">Fusce erat dui, venenatis et erat in, vulputate dignissim lacus. Donec vitae tempus dolor, sit amet elementum lorem. Ut cursus tempor turpis.</div>
			<div class="button home_button"><a href="#">book now</a></div>
 -->
		</div>
</div>
<div class="contact" >
		<div class="contact_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="section_title text-center">
							<div>회원정보수정</div>
						</div>
						
						<div class="contact_form_container">
							<form action="${pageContext.request.contextPath }/mypage/updateMember.do" method="post" class="contact_form text-center">
								<div class="row">
									<div class="col-lg-6">
										<label>ID : </label>
										<input type="text" class="contact_input" name="id" id="id" value="${memberInfo.id }" readonly="readonly">
									</div>
									<div class="col-lg-6">
										<label>PASSWORD : </label>
										<input type="text" class="contact_input" name="pwd" id="pwd" value="${memberInfo.pwd }" required="required">
									</div>
								</div>
								<div class="row">
									<div class="col-lg-6">
										<label>NAME : </label>
										<input type="text" class="contact_input" name="name" id="name" value="${memberInfo.name }" required="required">
									</div>
									<div class="col-lg-6">
										<label>TEL : </label>
										<input type="text" class="contact_input" name="tel" id="tel" value="${memberInfo.tel }" required="required">
									</div>
								</div>
								<div class="row">
									<div class="col-lg-6">
										<label>JUMIN1 : </label>
										<input type="text" class="contact_input" name="jumin1" id="jumin1" value="${memberInfo.jumin1 }" readonly="readonly">
									</div>
									<div class="col-lg-6">
										<label>JUMIN2 : </label>
										<input type="text" class="contact_input" name="jumin2" id="jumin2" value="${memberInfo.jumin2 }" readonly="readonly">
									</div>
								</div>
								<label>MAIL : </label>
								<input type="mail" class="contact_input" name="mail" id="mail" value="${memberInfo.mail }" >
								
								<input style="margin-bottom: 10px" type="submit" class="contact_button" value="확인">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>
