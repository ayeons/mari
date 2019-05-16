<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈페이지</title>
<%@include file="resourceH.jsp" %>
</head>
<body>
<div class="super_container">
<%@include file="header.jsp" %> 
	

	<!-- Home -->

	<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/images/home.jpg" data-speed="0.8"></div>
		<div class="home_container d-flex flex-column align-items-center justify-content-center">
			<div class="home_title"><h1>방 예약 사이트입니다.</h1></div>
			<div class="home_text text-center">편하게 예약하세요</div>
		</div>
	</div>

	<!-- Booking -->

	<div class="booking">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="booking_container d-flex flex-row align-items-end justify-content-start">
						<form action="#" class="booking_form">
							<div class="booking_form_container d-flex flex-lg-row flex-column align-items-start justify-content-start flex-wrap">
								<div class="booking_form_inputs d-flex flex-row align-items-start justify-content-between flex-wrap">
									<div class="booking_dropdown"><input type="text" class="datepicker booking_input booking_input_a booking_in" placeholder="Check in" required="required"></div>
									<div class="booking_dropdown"><input type="text" class="datepicker booking_input booking_input_a booking_out" placeholder="Check out" required="required"></div>
									<div class="custom-select">
										<select>
											<option value="0">Adults</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
										</select>
									</div>
									<div class="custom-select">
										<select>
											<option value="0">Children</option>
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
										</select>
									</div>
								</div>
								<button class="booking_form_button ml-lg-auto">book now</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Intro -->

	<div class="intro">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title text-center">
						<div>Welcome</div>
						<h1>바다가 보이는 호텔</h1>
					</div>
				</div>
			</div>
			<div class="row intro_row">
				<div class="col-xl-8 col-lg-10 offset-xl-2 offset-lg-1">
					<div class="intro_text text-center">
						<p>편하게 예약하세용</p>
					</div>
				</div>
			</div>
			<div class="row gallery_row">
				<div class="col">

					<!-- Gallery -->
					<div class="gallery_slider_container">
						<div class="owl-carousel owl-theme gallery_slider">
							
							<!-- Slide -->
							<div class="gallery_slide">
								<img src="${pageContext.request.contextPath}/resources/images/gallery_1.jpg" alt="">
								<div class="gallery_overlay">
									<div class="text-center d-flex flex-column align-items-center justify-content-center">
										<a href="#">
											<span>+</span>
											<span>See More</span>
										</a>
									</div>
								</div>
							</div>

							<!-- Slide -->
							<div class="gallery_slide">
								<img src="${pageContext.request.contextPath}/resources/images/gallery_2.jpg" alt="">
								<div class="gallery_overlay">
									<div class="text-center d-flex flex-column align-items-center justify-content-center">
										<a href="#">
											<span>+</span>
											<span>See More</span>
										</a>
									</div>
								</div>
							</div>

							<!-- Slide -->
							<div class="gallery_slide">
								<img src="${pageContext.request.contextPath}/resources/images/gallery_3.jpg" alt="">
								<div class="gallery_overlay">
									<div class="text-center d-flex flex-column align-items-center justify-content-center">
										<a href="#">
											<span>+</span>
											<span>See More</span>
										</a>
									</div>
								</div>
							</div>

							<!-- Slide -->
							<div class="gallery_slide">
								<img src="${pageContext.request.contextPath}/resources/images/gallery_4.jpg" alt="">
								<div class="gallery_overlay">
									<div class="text-center d-flex flex-column align-items-center justify-content-center">
										<a href="#">
											<span>+</span>
											<span>See More</span>
										</a>
									</div>
								</div>
							</div>

						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<!-- Rooms -->

	<div class="rooms_right container_wrapper">
		<div class="container">
			<div class="row row-eq-height">

				<!-- Rooms Image -->
				<div class="col-xl-6 order-xl-1 order-2">
					<div class="rooms_slider_container">
						<div class="owl-carousel owl-theme rooms_slider">
							
							<!-- Slide -->
							<div class="slide">
								<div class="background_image" style="background-image:url(./resources/images/rooms_1.jpg)"></div>
							</div>

							<!-- Slide -->
							<div class="slide">
								<div class="background_image" style="background-image:url(./resources/images/rooms_1.jpg)"></div>
							</div>

							<!-- Slide -->
							<div class="slide">
								<div class="background_image" style="background-image:url(./resources/images/rooms_1.jpg)"></div>
							</div>

						</div>
					</div>
				</div>

				<!-- Rooms Content -->
				<div class="col-xl-6 order-xl-2 order-1">
					<div class="rooms_right_content">
						<div class="section_title">
							<div>Rooms</div>
							<h1>럭셔리 더블 룸</h1>
						</div>
						<div class="rooms_text">
							<p> 전망 좋은 곳에서 연인과함께 즐기세요</p>
						</div>
						<div class="rooms_list">
							<ul>
								<li class="d-flex flex-row align-items-center justify-content-start">
									<img src="${pageContext.request.contextPath}/resources/images/check.png" alt="">
									<span>Morbi tempus malesuada erat sed</span>
								</li>
								<li class="d-flex flex-row align-items-center justify-content-start">
									<img src="${pageContext.request.contextPath}/resources/images/check.png" alt="">
									<span>Tempus malesuada erat sed</span>
								</li>
								<li class="d-flex flex-row align-items-center justify-content-start">
									<img src="${pageContext.request.contextPath}/resources/images/check.png" alt="">
									<span>Pellentesque vel neque finibus elit</span>
								</li>
							</ul>
						</div>
						<div class="rooms_price">$129/<span>Night</span></div>
						<div class="button rooms_button"><a href="#">book now</a></div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Rooms -->

	<div class="rooms_left container_wrapper">
		<div class="container">
			<div class="row row-eq-height">
				
				<!-- Rooms Content -->
				<div class="col-xl-6">
					<div class="rooms_left_content">
						<div class="section_title">
							<div>Rooms</div>
							<h1>력셔리 싱글 룸</h1>
						</div>
						<div class="rooms_text">
							<p>전망좋은곳에서 혼자만의 휴식을 취하세요</p>
						</div>
						<div class="rooms_list">
							<ul>
								<li class="d-flex flex-row align-items-center justify-content-start">
									<img src="/resources/images/check.png" alt="">
									<span>Morbi tempus malesuada erat sed</span>
								</li>
								<li class="d-flex flex-row align-items-center justify-content-start">
									<img src="/resources/images/check.png" alt="">
									<span>Tempus malesuada erat sed</span>
								</li>
								<li class="d-flex flex-row align-items-center justify-content-start">
									<img src="${pageContext.request.contextPath}/resources/images/check.png" alt="">
									<span>Pellentesque vel neque finibus elit</span>
								</li>
							</ul>
						</div>
						<div class="rooms_price">$89/<span>Night</span></div>
						<div class="button rooms_button"><a href="#">book now</a></div>
					</div>
				</div>

				<!-- Rooms Image -->
				<div class="col-xl-6">
					<div class="rooms_slider_container">
						<div class="owl-carousel owl-theme rooms_slider">
							
							<!-- Slide -->
							<div class="slide">
								<div class="background_image" style="background-image:url(./resources/images/rooms_2.jpg)"></div>
							</div>

							<!-- Slide -->
							<div class="slide">
								<div class="background_image" style="background-image:url(./resources/images/rooms_2.jpg)"></div>
							</div>

							<!-- Slide -->
							<div class="slide">
								<div class="background_image" style="background-image:url(./resources/images/rooms_2.jpg) "></div>
							</div>
							
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	
<%@include file="footer.jsp" %>
</div>
<%@include file="resourceF.jsp" %>
</body>
</html>