<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/link.jsp" %>
<link rel="stylesheet" href="/css/mypage.css">
<%@ include file="../layout/header.jsp" %>
	<div id="container">
        <div class="mypage_font">
            <h3>마이페이지</h3>
        </div>

        <div class="member">
            <div class="picture"></div>
            <div class="info">
                <div class="info_box">
                    <p><b>임해원 고객님!</b></p>
                    <br>
                    <p>lhw931213(아이디 받아옴)</p>
                </div>
            </div>
        </div>

        <div class="wrap">
            <div class="tab_menu">
              <ul class="list">
                <li class="is_on">
                  <a href="#tab1" class="btn">회원정보수정</a>
                </li>
                <li>
                  <a href="#tab2" class="btn">매칭강사</a>
                </li>
                <li>
                  <a href="#tab3" class="btn">계정탈퇴</a>
                </li>
                <li>
                    <a href="#tab4" class="btn">강사정보등록</a>
                </li>
              </ul>


              <div class="cont_area">
                <div id="tab1" class="cont" style="display:block;">
                    <div class="member_modify_box">
                        <div class="join_modify">
                            <form action="" method="post" name="join_frm">
                                <!--아이디-->
                                <div class="join_input">
                                    <label for="userid">아이디</label><br>
                                    <input type="text" name="userid" size="20" placeholder="아이디를 입력해 주세요">
                                    <input type="hidden" name="reid" size="20"><br>
                                </div>
                                <!--비밀번호-->
                                <div class="join_input">
                                    <label for="pwd">비밀번호</label><br>
                                    <input type="password" name="pwd" size="20" placeholder="비밀번호를 입력해 주세요"><br>
                                </div>
                                <!--비밀번호 확인-->
                                <div class="join_input">
                                    <label for="pwd_check">비밀번호 확인</label><br>
                                    <input type="password" name="pwd_check" size="20" placeholder="비밀번호를 다시 한번 입력해 주세요"><br>
                                </div>
                                <!--이메일-->
                                <div class="join_input">
                                    <label for="email">이메일</label><br>
                                    <input type="email" name="email" size="20" placeholder="이메일를 입력해 주세요"><br>
                                </div>
                                <!--전화번호-->
                                <div class="join_input">
                                    <label for="phone">전화번호</label><br>
                                    <input type="text" name="phone" size="20" placeholder="전화번호를 입력해 주세요"><br>
                                </div>
                            </form>
                        </div>
                        <div class="sub_checkbox">
                            <div class="sub_checkbox_box">
                                <label for="JAVA">JAVA</label>
                                <input type="checkbox"  value="JAVA" name="JAVA" id="JAVA" class="btn_check">
                            </div>
                            <div class="sub_checkbox_box">
                                <label for="Cc">C</label>
                                <input type="checkbox" value="C" name="Cc" id="Cc" class="btn_check">
                            </div>
                            <div class="sub_checkbox_box">
                                <label for="C++">C++</label>
                                <input type="checkbox" value="C++" name="C++" id="C++" class="btn_check">
                            </div>
                            <div class="sub_checkbox_box">
                                <label for="Python">Python</label>
                                <input type="checkbox" value="Python" id="Python" name="Python" class="btn_check">
                            </div>
                            <div class="sub_checkbox_box">
                                <label for="Oracle">Oracle</label>
                                <input type="checkbox" value="Oracle" id="Oracle" name="Oracle" class="btn_check">
                            </div>
                        </div>
                    </div>
                    <div class="button_box">
                        <button>수정하기</button>
                    </div>       
                </div>
                <div id="tab2" class="cont">
                  <div class="matching_teacher">
                    <div class="teacher_img"></div>
                    <div class="teacher_info">
                        <p>이름 : 임해원</p>
                        <p>연락처 : 01050045517</p>
                        <p>관심 종목 : 자바 웹 프로그래밍</p>
                    </div>
                  </div>

                  <div class="matching_teacher">
                    <div class="teacher_img"></div>
                    <div class="teacher_info">
                        <p>이름 : 임해원</p>
                        <p>연락처 : 01050045517</p>
                        <p>관심 종목 : 자바 웹 프로그래밍</p>
                    </div>
                  </div>
                </div>
                <div id="tab3" class="cont">
                    <div class="delete_info">
                        <form action="" method="post" name="delete_form">
                            <!--비밀번호-->
                            <div class="join_input">
                                <label for="pwd">비밀번호</label><br>
                                <input type="password" name="pwd" size="20" placeholder="비밀번호를 입력해 주세요"><br>
                            </div>
                            <!--비밀번호 확인-->
                            <div class="join_input">
                                <label for="pwd_check">비밀번호 확인</label><br>
                                <input type="password" name="pwd_check" size="20" placeholder="비밀번호를 다시 한번 입력해 주세요"><br>
                            </div>                           
                        </form>
                        <!--탈퇴하기-->
                        <div class="join_input">
                            <input type="submit" value="탈퇴하기" onclick="user_delete()">
                        </div>
                  </div>
                </div>

                <div id="tab4" class="cont">
                    <div class="teacher_upload">
                        <!--제목-->
                        <div class="T_upload_input">
                            <label for="title">제목</label>
                            <input type="text" name="title">
                        </div>
                        <!--본인 소개-->
                        <div class="T_upload_input">
                            <label for="introduce">본인 소개</label><br><br>
                            <textarea cols="75" rows="10"></textarea>
                            <p>본인 소개를 최대한 상세하게 적어주세요.</p>
                        </div>
                        <!--수업 정보-->
                        <div class="T_upload_input">
                            <label for="class_info">수업 정보</label><br><br>
                            <textarea cols="75" rows="10" name="introduce" required wrap="hard" autofocus></textarea>
                            <p>수업 방식과 관련 내용을 상세하게 적어주세요.</p>
                        </div>
                        <!--첨부파일-->
                        <div class="T_upload_input">
                            <label for="addfile">첨부 파일</label><br><br>
                            <input type="file" id="addfile" multiple required> 
                        </div>
                        <!--제출하기 버튼-->
                        <div class="T_upload_btn">
                            <button>제출하기</button>
                        </div>
                    </div>
                </div>
              </div>
            </div>
          </div>

    </div>
<script type="text/javascript" src="/JS/mypage.js"></script>
</body>
</html>