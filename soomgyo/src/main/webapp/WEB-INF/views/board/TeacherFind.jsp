<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/link.jsp" %>
<link rel="stylesheet" href="/css/Teacherfind.css">
<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css">
<%@ include file="../layout/header.jsp" %>
<div id="T_find_main_container">
    <div class="pc_slide_big_box">
      <div class="pri_T_bold_font">
        <h2>프리미엄 강사</h2>
      </div>
      <div class="swiper mySwiper">
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <div class="primium_T_img"></div>
            <div class="primium_t_title"><p>제목</p></div>
            <div class="primium_t_content"><p>내용</p></div>
          </div>
          <div class="swiper-slide">
            <div class="primium_T_img"></div>
            <div class="primium_t_title"><p>제목</p></div>
            <div class="primium_t_content"><p>내용</p></div>
          </div>
          <div class="swiper-slide">
            <div class="primium_T_img"></div>
            <div class="primium_t_title"><p>제목</p></div>
            <div class="primium_t_content"><p>내용</p></div>
          </div>
          <div class="swiper-slide">
            <div class="primium_T_img"></div>
            <div class="primium_t_title"><p>제목</p></div>
            <div class="primium_t_content"><p>내용</p></div>
          </div>
          <div class="swiper-slide">
            <div class="primium_T_img"></div>
            <div class="primium_t_title"><p>제목</p></div>
            <div class="primium_t_content"><p>내용</p></div>
          </div>
          <div class="swiper-slide">
            <div class="primium_T_img"></div>
            <div class="primium_t_title"><p>제목</p></div>
            <div class="primium_t_content"><p>내용</p></div>
          </div>
          <div class="swiper-slide">
            <div class="primium_T_img"></div>
            <div class="primium_t_title"><p>제목</p></div>
            <div class="primium_t_content"><p>내용</p></div>
          </div>
          <div class="swiper-slide">
            <div class="primium_T_img"></div>
            <div class="primium_t_title"><p>제목</p></div>
            <div class="primium_t_content"><p>내용</p></div>
          </div>
          <div class="swiper-slide">
            <div class="primium_T_img"></div>
            <div class="primium_t_title"><p>제목</p></div>
            <div class="primium_t_content"><p>내용</p></div></div>
        </div>
        <div class="swiper-pagination"></div>
      </div>

      <!-- Swiper JS -->
      <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

      <!-- Initialize Swiper -->
      <script>
        var swiper = new Swiper(".mySwiper", {
          slidesPerView: 3,
          spaceBetween: 30,
          slidesPerGroup: 3,
          loop: true,
          loopFillGroupWithBlank: true,
          pagination: {
            el: ".swiper-pagination",
            clickable: true,
          },
          navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
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
            <div class="primium_t_title"><p>제목</p></div>
            <div class="primium_t_content"><p>내용</p></div>
          </div>
          <div class="swiper-slide">
            <div class="primium_T_img"></div>
            <div class="primium_t_title"><p>제목</p></div>
            <div class="primium_t_content"><p>내용</p></div>
          </div>
          <div class="swiper-slide">
            <div class="primium_T_img"></div>
            <div class="primium_t_title"><p>제목</p></div>
            <div class="primium_t_content"><p>내용</p></div>
          </div>
          <div class="swiper-slide">
            <div class="primium_T_img"></div>
            <div class="primium_t_title"><p>제목</p></div>
            <div class="primium_t_content"><p>내용</p></div>
          </div>
          <div class="swiper-slide">
            <div class="primium_T_img"></div>
            <div class="primium_t_title"><p>제목</p></div>
            <div class="primium_t_content"><p>내용</p></div>
          </div>
          <div class="swiper-slide">
            <div class="primium_T_img"></div>
            <div class="primium_t_title"><p>제목</p></div>
            <div class="primium_t_content"><p>내용</p></div>
          </div>
          <div class="swiper-slide">
            <div class="primium_T_img"></div>
            <div class="primium_t_title"><p>제목</p></div>
            <div class="primium_t_content"><p>내용</p></div>
          </div>
          <div class="swiper-slide">
            <div class="primium_T_img"></div>
            <div class="primium_t_title"><p>제목</p></div>
            <div class="primium_t_content"><p>내용</p></div>
          </div>
          <div class="swiper-slide">
            <div class="primium_T_img"></div>
            <div class="primium_t_title"><p>제목</p></div>
            <div class="primium_t_content"><p>내용</p></div></div>
        </div>
        <div class="swiper-pagination"></div>
      </div>

      <!-- Swiper JS -->
      <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

      <!-- Initialize Swiper -->
      <script>
        var swiper = new Swiper(".mySwiper2", {
          slidesPerView: 2,
          spaceBetween: 30,
          slidesPerGroup: 3,
          loop: true,
          loopFillGroupWithBlank: true,
          pagination: {
            el: ".swiper-pagination",
            clickable: true,
          },
          navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
          },
        });
      </script>
    </div>

    <!--일반 강사찾기-->
    <div class="normal_big_box">
      <div class="find_teacher_big_font">
        <h2>강사 찾기</h2>
      </div>
      <!--첫번째 줄-->
      <div class="T_list">
        <div class="first_T_box">
          <div class="normal_Teacher_img"></div>
          <div class="normal_Teacher_contentbox">
            <div id="normal_title">
              <p>제목</p>
            </div>
            <div id="normal_contents">
              <p>내용</p>
            </div>
          </div>
        </div>
        <div class="second_T_box">
          <div class="normal_Teacher_img"></div>
          <div class="normal_Teacher_contentbox">
            <div id="normal_title">
              <p>제목</p>
            </div>
            <div id="normal_contents">
              <p>내용</p>
            </div>
          </div>
        </div>
      </div>  
      <!--두번째 줄-->
      <div class="T_list">
        <div class="first_T_box">
          <div class="normal_Teacher_img"></div>
          <div class="normal_Teacher_contentbox">
            <div id="normal_title">
              <p>제목</p>
            </div>
            <div id="normal_contents">
              <p>내용</p>
            </div>
          </div>
        </div>
        <div class="second_T_box">
          <div class="normal_Teacher_img"></div>
          <div class="normal_Teacher_contentbox">
            <div id="normal_title">
              <p>제목</p>
            </div>
            <div id="normal_contents">
              <p>내용</p>
            </div>
          </div>
        </div>
      </div>
      <!--세번째 줄-->
      <div class="T_list">
        <div class="first_T_box">
          <div class="normal_Teacher_img"></div>
          <div class="normal_Teacher_contentbox">
            <div id="normal_title">
              <p>제목</p>
            </div>
            <div id="normal_contents">
              <p>내용</p>
            </div>
          </div>
        </div>
        <div class="second_T_box">
          <div class="normal_Teacher_img"></div>
          <div class="normal_Teacher_contentbox">
            <div id="normal_title">
              <p>제목</p>
            </div>
            <div id="normal_contents">
              <p>내용</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
<%@ include file="../layout/footer.jsp" %>