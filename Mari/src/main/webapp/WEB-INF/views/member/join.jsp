<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/contact.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/contact_responsive.css">
<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/images/home.jpg" data-speed="0.8"></div>
		<div class="home_container d-flex flex-column align-items-center justify-content-center">
			<div class="home_title"><h1>회원가입</h1></div>
			<!-- 
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
							<div>JOIN</div>
							
						</div>
						
						<div class="contact_form_container">
							<form action="${pageContext.request.contextPath}/member/insertMember.do" class="contact_form text-center">
								<div class="row">
									<div class="col-lg-6">
										<input type="text" class="contact_input" name="id" id="id" placeholder="Your id" required="required">
									</div>
									<div class="col-lg-6">
										<input type="text" class="contact_input" name="pwd" id="pwd" placeholder="Your pwd" required="required">
									</div>
								</div>
								<div class="row">
									<div class="col-lg-6">
										<input type="text" class="contact_input" name="name" id="name" placeholder="Your name" required="required">
									</div>
									<div class="col-lg-6">
										<input type="text" class="contact_input" name="tel" id="tel" placeholder="Your tel">
									</div>
								</div>
								<div class="row">
									<div class="col-lg-6">
										<input type="text" class="contact_input" name="jumin1" id="jumin1" placeholder="주민번호앞자리" required="required">
									</div>
									<div class="col-lg-6">
										<input type="text" class="contact_input" name="jumin2" id="jumin2" placeholder="뒷자리" required="required">
									</div>
								</div>
								<input type="email" class="contact_input" name="mail" id="mail" placeholder="your email">
								
								<input style="margin-bottom: 10px" type="submit" class="contact_button" value="확인">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
</div>
