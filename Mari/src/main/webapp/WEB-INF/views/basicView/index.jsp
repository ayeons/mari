<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mari</title>
<%@include file="resourceH.jsp" %>
</head>
<body>
<div class="super_container">
<%@include file="header2.jsp" %> 
	

	<!-- Home -->

	<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/resources/images/room_08.jpg" data-speed="0.8"></div>
		<div class="home_container d-flex flex-column align-items-center justify-content-center">
			<div class="home_title"><h1>Hotel & Resort</h1></div>
			<div class="home_text text-center">Fusce erat dui, venenatis et erat in, vulputate dignissim lacus. Donec vitae tempus dolor, sit amet elementum lorem. Ut cursus tempor turpis.</div>
		</div>
	</div>

	<!-- Booking -->
<!-- 
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
 -->
	<!-- Intro -->

	<div class="intro">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title text-center">
						<div>Welcome</div>
						<h1>Amazing Hotel in front of the Sea</h1>
					</div>
				</div>
			</div>
			<div class="row intro_row">
				<div class="col-xl-8 col-lg-10 offset-xl-2 offset-lg-1">
					<div class="intro_text text-center">
						<p>Maecenas sollicitudin tincidunt maximus. Morbi tempus malesuada erat sed pellentesque. Donec pharetra mattis nulla, id laoreet neque scelerisque at. Quisque eget sem non ligula consectetur ultrices in quis augue. Donec imperd iet leo eget tortor dictum, eget varius eros sagittis. Curabitur tempor dignissim massa ut faucibus sollicitudin tinci dunt maximus. Morbi tempus malesuada erat sed pellentesque. Donec pharetra mattis nulla, id laoreet neque scele risque at. Quisque eget sem non ligula consectetur ultrices in quis augue. Donec imperdiet leo eget tortor dictum, eget varius eros sagittis. Curabitur tempor dignissim massa ut faucibus.</p>
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
										<a href="product/list">
											<span>+</span>
											<span>더보기</span>
										</a>
									</div>
								</div>
							</div>

							<!-- Slide -->
							<div class="gallery_slide">
								<img src="${pageContext.request.contextPath}/resources/images/gallery_2.jpg" alt="">
								<div class="gallery_overlay">
									<div class="text-center d-flex flex-column align-items-center justify-content-center">
										<a href="product/list">
											<span>+</span>
											<span>더보기</span>
										</a>
									</div>
								</div>
							</div>

							<!-- Slide -->
							<div class="gallery_slide">
								<img src="${pageContext.request.contextPath}/resources/images/gallery_3.jpg" alt="">
								<div class="gallery_overlay">
									<div class="text-center d-flex flex-column align-items-center justify-content-center">
										<a href="product/list">
											<span>+</span>
											<span>더보기</span>
										</a>
									</div>
								</div>
							</div>

							<!-- Slide -->
							<div class="gallery_slide">
								<img src="${pageContext.request.contextPath}/resources/images/gallery_4.jpg" alt="">
								<div class="gallery_overlay">
									<div class="text-center d-flex flex-column align-items-center justify-content-center">
										<a href="product/list">
											<span>+</span>
											<span>더보기</span>
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
								<div class="background_image" style="background-image:url(${pageContext.request.contextPath}/resources/images/rooms_1.jpg)"></div>
							</div>

							<!-- Slide -->
							<div class="slide">
								<div class="background_image" style="background-image:url(${pageContext.request.contextPath}/resources/images/rooms_1.jpg)"></div>
							</div>

							<!-- Slide -->
							<div class="slide">
								<div class="background_image" style="background-image:url(${pageContext.request.contextPath}/resources/images/rooms_1.jpg)"></div>
							</div>

						</div>
					</div>
				</div>

				<!-- Rooms Content -->
				<div class="col-xl-6 order-xl-2 order-1">
					<div class="rooms_right_content">
						<div class="section_title">
							<div>Rooms</div>
							<h1>Luxury Double Suite</h1>
						</div>
						<div class="rooms_text">
							<p>Maecenas sollicitudin tincidunt maximus. Morbi tempus malesuada erat sed pellentesque. Donec pharetra mattis nulla, id laoreet neque scelerisque at. Quisque eget sem non ligula consectetur ultrices in quis augue. Donec imperd iet leo eget tortor dictum, eget varius eros sagittis. Curabitur tempor dignissim massa ut faucibus sollicitudin tinci dunt maximus. Morbi tempus malesuada erat sed pellentesque.</p>
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
							<h1>Luxury Single Room</h1>
						</div>
						<div class="rooms_text">
							<p>Maecenas sollicitudin tincidunt maximus. Morbi tempus malesuada erat sed pellentesque. Donec pharetra mattis nulla, id laoreet neque scelerisque at. Quisque eget sem non ligula consectetur ultrices in quis augue. Donec imperd iet leo eget tortor dictum, eget varius eros sagittis. Curabitur tempor dignissim massa ut faucibus sollicitudin tinci dunt maximus. Morbi tempus malesuada erat sed pellentesque.</p>
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
						
					</div>
				</div>

				<!-- Rooms Image -->
				<div class="col-xl-6">
					<div class="rooms_slider_container">
						<div class="owl-carousel owl-theme rooms_slider">
							
							<!-- Slide -->
							<div class="slide">
								<div class="background_image" style="background-image:url(${pageContext.request.contextPath}/resources/images/rooms_2.jpg)"></div>
							</div>

							<!-- Slide -->
							<div class="slide">
								<div class="background_image" style="background-image:url(${pageContext.request.contextPath}/resources/images/rooms_2.jpg)"></div>
							</div>

							<!-- Slide -->
							<div class="slide">
								<div class="background_image" style="background-image:url(${pageContext.request.contextPath}/resources/images/rooms_2.jpg)"></div>
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