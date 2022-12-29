<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ include file="../layout/link.jsp"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<sec:authentication property="principal" var="principal" />

<link rel="stylesheet" href="/css/Teacherfind.css">
<link rel="stylesheet" href="/css/swiper.css">
<style>
.youtube {
	height: 200px;
}

.youtube img {
	width: 100%;
}

.youbube-title {
	width: 300px;
	height: 55px;
	margin-top: 10px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.swiper {
	height: 50%;
}

.swiper-wrapper {
	height:;
}

.swiper-pagination {
	
}

#T_find_main_container {
	margin-top: 100px;
}

.pc_slide_big_box {
	height: 100%;
	margin-bottom: 50px;
}

.heartimg {
	width: 30px;
	position: absolute;
	bottom: 40px;
	right: 46%;
	cursor: pointer;
}

.youbube-title {
	height: 100px;
	position: relative;
}
</style>
<%@ include file="../layout/header.jsp"%>
<div id="T_find_main_container">

	<c:forEach var="category" items="${fn:split(category, ',')}">
		<c:if test="${category == 'JAVA'}">
			<div class="pri_T_bold_font">
				<h2>자바</h2>
			</div>
			<div class="pc_slide_big_box">
				<div class="swiper mySwiper">
					<div class="swiper-wrapper">
						<c:forEach var="youtube" items="${youtube}" varStatus="status">
							<c:if test="${youtube.category eq 'JAVA'}">
								<div class="swiper-slide">
									<div class="video-box">
										<input type="hidden" class="${status.index}"
											value="${youtube.id}"> <a href="/video/${youtube.id}">
											<div class="youtube">
												<c:forEach var="like" items="${myvideo}">
												${like.id}
												<img src="${youtube.thumbnail}">
												</c:forEach>
											</div>
										</a>
										<div class="youbube-title">${youtube.title}</div>
										<div class="heartimg">
											<img alt="heart" src="img/heart.png" class="java"
												onclick="like(this.id)" id="${status.index}">
										</div>

									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>
					<div class="swiper-pagination"></div>
				</div>
			</div>
		</c:if>
	</c:forEach>
	<c:forEach var="category" items="${fn:split(category, ',')}">
		<c:if test="${category == 'JavaScript'}">
			<div class="pri_T_bold_font">
				<h2>자바스크립트</h2>
			</div>
			<div class="pc_slide_big_box">
				<div class="swiper mySwiper">
					<div class="swiper-wrapper">

						<c:forEach var="youtube" items="${youtube}" varStatus="status">
							<c:if test="${youtube.category eq 'JavaScript'}">
								<div class="swiper-slide">
									<div class="video-box">
										<input type="hidden" class="${status.index}"
											value="${youtube.id}"> <a href="/video/${youtube.id}">
											<div class="youtube">
												<img src="${youtube.thumbnail}">
											</div>
										</a>
										<div class="youbube-title">${youtube.title}</div>
										<div class="heartimg">
											<c:forEach var="like" items="${myvideo}">
												<c:choose>
													<c:when test="${like.youtube.id eq youtube.id}">
														<img alt="heart" src="img/${like.videolikes}.png"
															class="javascript" onclick="like(this.id)"
															id="${status.index}">
													</c:when>
													<c:otherwise>
														<img alt="heart" src="img/0.png" class="javascript"
															onclick="like(this.id)" id="${status.index}">
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>
					<div class="swiper-pagination"></div>
				</div>
			</div>
		</c:if>
	</c:forEach>
	<c:forEach var="category" items="${fn:split(category, ',')}">
		<c:if test="${category == 'C'}">
			<div class="pri_T_bold_font">
				<h2>C언어</h2>
			</div>
			<div class="pc_slide_big_box">
				<div class="swiper mySwiper">
					<div class="swiper-wrapper">

						<c:forEach var="youtube" items="${youtube}" varStatus="status">
							<c:if test="${youtube.category eq 'Cc'}">
								<div class="swiper-slide">
									<div class="video-box">
										<input type="hidden" class="${status.index}"
											value="${youtube.id}"> <a href="/video/${youtube.id}">
											<div class="youtube">
												<img src="${youtube.thumbnail}">
											</div>
										</a>
										<div class="youbube-title">${youtube.title}</div>
										<div class="heartimg">
											<img alt="heart" src="img/heart.png" class="c"
												onclick="like(this.id)" id="${status.index}">
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>
					<div class="swiper-pagination"></div>
				</div>
			</div>
		</c:if>
	</c:forEach>
	<c:forEach var="category" items="${fn:split(category, ',')}">
		<c:if test="${category == 'Python'}">
			<div class="pri_T_bold_font">
				<h2>파이썬</h2>
			</div>
			<div class="pc_slide_big_box">
				<div class="swiper mySwiper">
					<div class="swiper-wrapper">
						<c:forEach var="youtube" items="${youtube}" varStatus="status">
							<c:if test="${youtube.category eq 'Python'}">
								<div class="swiper-slide">
									<div class="video-box">
										<input type="hidden" class="${status.index}"
											value="${youtube.id}"> <a href="/video/${youtube.id}">
											<div class="youtube">
												<img src="${youtube.thumbnail}">
											</div>
										</a>
										<div class="youbube-title">${youtube.title}</div>
										<div class="heartimg">
											<img alt="heart" src="img/heart.png" class="python"
												onclick="like(this.id)" id="${status.index}">
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>
					<div class="swiper-pagination"></div>
				</div>
			</div>
		</c:if>
	</c:forEach>
	<c:forEach var="category" items="${fn:split(category, ',')}">
		<c:if test="${category == 'Oracle'}">
			<div class="pri_T_bold_font">
				<h2>오라클</h2>
			</div>
			<div class="pc_slide_big_box">
				<div class="swiper mySwiper">
					<div class="swiper-wrapper">
						<c:forEach var="youtube" items="${youtube}" varStatus="status">
							<c:if test="${youtube.category eq 'Oracle'}">
								<div class="swiper-slide">
									<div class="video-box">
										<input type="hidden" class="${status.index}"
											value="${youtube.id}"> <a href="/video/${youtube.id}">
											<div class="youtube">
												<img src="${youtube.thumbnail}">
											</div>
										</a>
										<div class="youbube-title">${youtube.title}</div>
										<div class="heartimg">
											<img alt="heart" src="img/heart.png" class="oracle"
												onclick="like(this.id)" id="${status.index}">
										</div>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</div>
					<div class="swiper-pagination"></div>
				</div>
			</div>
		</c:if>
	</c:forEach>



	<!-- Swiper JS -->
	<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

	<!-- Initialize Swiper -->
	<script>
		var swiper = new Swiper(".mySwiper", {
			slidesPerView : 3,
			spaceBetween : 20,
			slidesPerGroup : 3,

			loop : true,
			loopFillGroupWithBlank : true,
			pagination : {
				el : ".swiper-pagination",
				clickable : true,
			},
			navigation : {
				nextEl : ".swiper-button-next",
				prevEl : ".swiper-button-prev",
			},
		});
	</script>
</div>

<div class="mobile_slide_big_box">
	<div class="pri_T_bold_font">
		<h2>프리미엄 강사</h2>
	</div>
	<div class="swiper mySwiper2">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<div class="primium_T_img"></div>
				<div class="primium_t_title">
					<p>제목</p>
				</div>
				<div class="primium_t_content">
					<p>내용</p>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="primium_T_img"></div>
				<div class="primium_t_title">
					<p>제목</p>
				</div>
				<div class="primium_t_content">
					<p>내용</p>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="primium_T_img"></div>
				<div class="primium_t_title">
					<p>제목</p>
				</div>
				<div class="primium_t_content">
					<p>내용</p>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="primium_T_img"></div>
				<div class="primium_t_title">
					<p>제목</p>
				</div>
				<div class="primium_t_content">
					<p>내용</p>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="primium_T_img"></div>
				<div class="primium_t_title">
					<p>제목</p>
				</div>
				<div class="primium_t_content">
					<p>내용</p>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="primium_T_img"></div>
				<div class="primium_t_title">
					<p>제목</p>
				</div>
				<div class="primium_t_content">
					<p>내용</p>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="primium_T_img"></div>
				<div class="primium_t_title">
					<p>제목</p>
				</div>
				<div class="primium_t_content">
					<p>내용</p>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="primium_T_img"></div>
				<div class="primium_t_title">
					<p>제목</p>
				</div>
				<div class="primium_t_content">
					<p>내용</p>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="primium_T_img"></div>
				<div class="primium_t_title">
					<p>제목</p>
				</div>
				<div class="primium_t_content">
					<p>내용</p>
				</div>
			</div>
		</div>
		<div class="swiper-pagination"></div>
	</div>

	<!-- Swiper JS -->
	<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

	<!-- Initialize Swiper -->
	<script>
		var swiper = new Swiper(".mySwiper2", {
			slidesPerView : 2,
			spaceBetween : 30,
			slidesPerGroup : 3,
			loop : true,
			loopFillGroupWithBlank : true,
			pagination : {
				el : ".swiper-pagination",
				clickable : true,
			},
			navigation : {
				nextEl : ".swiper-button-next",
				prevEl : ".swiper-button-prev",
			},
		});
	</script>
</div>
</div>
<%@ include file="../layout/footer.jsp"%>
<script type="text/javascript" src="/JS/utube.js"></script>


