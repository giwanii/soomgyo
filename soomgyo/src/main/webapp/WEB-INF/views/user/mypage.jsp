<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/link.jsp" %>
<link rel="stylesheet" href="/css/mypage.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<%@ include file="../layout/header.jsp" %>

	<div id="container">
      
        <div class="member">
            <div class="picture">
            	<c:choose>
            		<c:when test="${principal.user.profilefilename != null}">
            			<img src="/auth/img?filename=${principal.user.profilefilename}">
            		</c:when>
            		<c:otherwise>
            			<img src="/auth/img?filename=default.png">
            		</c:otherwise>
            	</c:choose>
            </div>
            <div class="info">
                <div class="info_box">
                	<p><b>${principal.user.userid}</b></p>
                    <br>
                    <p>${principal.user.name} 고객님, 안녕하세요!</p>
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
                            <form action="/InfoModify" method="post" enctype="multipart/form-data" name="join_frm">
                                <!--아이디-->
                                <div class="join_input">
                                    <label for="userid">아이디</label><br>
                                    <input type="text" name="userid" size="20" value="${principal.user.userid}" readonly="readonly">
                                    <input type="hidden" name="reid" size="20"><br>
                                </div>
                                <!--비밀번호-->
					            <div class="join_input">
					                <label for="password">비밀번호</label><br>
					                <input type="password" name="password" size="20" placeholder="비밀번호를 입력해 주세요" id="password" onkeyup="pwck()" onblur="pwdcheck()"maxlength="16" ><br>
					            </div>
					            	<div class="msg redfont pwdmsg">8~16자 영문 대 소문자, 숫자, 특수문자를 사용해주세요~</div>
					            	<div class="msg redfont pwdblank">공백없이 입력해주세요!</div>
					            	<div class="msg redfont pwdmix">영문,숫자,특수문자를 혼합하여 입력해주세요.</div>
					            	<div class="msg redfont pwdsame">같은 문자를 4번 이상 사용하실 수 없습니다.</div>
					         
					            <!--비밀번호 확인-->
					            <div class="join_input">
					                <label for="pwdcheck">비밀번호 확인</label><br>
					                <input type="password" name="pwd_check" size="20" placeholder="비밀번호를 다시 한번 입력해 주세요" id="pwd_check" onkeyup="pwdcheck()" maxlength="16"><br>
					            </div>
					           		<div class="msg redfont ckfalse">비밀번호가 맞지 않습니다! </div>
					               	<div class="msg greenfont cktrue">비밀번호가 정확히 맞습니다! </div>
                                <!--전화번호-->
                                <div class="join_input">
                                    <label for="phone">전화번호 (선택)</label><br>
                                    <input type="text" name="phone" size="20" value="${principal.user.phone}" ><br>
                                </div>
                                <!-- 프로필 사진 -->
                                <div class="join_input">
                                	<label for="profileImg">프로필 사진 (선택)</label><br><br>
                                	<input type="file" name="file">
                                </div>                          
                        	</div>
	                        <div class="sub_checkbox">
	                            <div class="sub_checkbox_box">
	                                <label for="JAVA">JAVA</label>
	                                <input type="checkbox"  value="JAVA" name="category" id="JAVA" class="btn_check">
	                            </div>
	                            <div class="sub_checkbox_box">
	                                <label for="JavaScript">JavaScript</label>
	                                <input type="checkbox" value="JavaScript" name="category" id="JavaScript" class="btn_check">
	                            </div>
	                            <div class="sub_checkbox_box">
	                                <label for="Cc">C</label>
	                                <input type="checkbox" value="C" name="category" id="Cc" class="btn_check">
	                            </div>
	                            <div class="sub_checkbox_box">
	                                <label for="Python">Python</label>
	                                <input type="checkbox" value="Python" id="Python" name="category" class="btn_check">
	                            </div>
	                            <div class="sub_checkbox_box">
	                                <label for="Oracle">Oracle</label>
	                                <input type="checkbox" value="Oracle" id="Oracle" name="category" class="btn_check">
	                            </div>
	                        </div>
                		</div>
	                    <div class="button_box">
	                        <button onclick="return modify()">수정하기</button>
	                    </div>
                    </form>    
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
                        <form action="" method="post" name="delete_form" >
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
                    	<form action="/findTeacher" method="post" enctype="multipart/form-data">
	                        <!--제목-->
	                        <div class="T_upload_input">
	                            <label for="title">제목</label>
	                            <input type="text" name="title">
	                        </div>
	                        <!--본인 소개-->
	                        <div class="T_upload_input">
	                            <label for="introduce">본인 소개</label><br><br>
	                            <textarea cols="75" rows="10" name="introduce"></textarea>
	                            <p>본인 소개를 최대한 상세하게 적어주세요.</p>
	                        </div>
	                        <!--수업 정보-->
	                        <div class="T_upload_input">
	                            <label for="class_info">수업 정보</label><br><br>
	                            <textarea cols="75" rows="10" name="lessoninfo" required wrap="hard" autofocus></textarea>
	                            <p>수업 방식과 관련 내용을 상세하게 적어주세요.</p>
	                        </div>
	                        <!--첨부파일-->
	                        <div class="T_upload_input">
	                            <label for="addfile">첨부 파일</label><br><br>
	                            <input type="file" id="file" name="file" multiple="multiple"> 
	                        </div>
	                        <!--제출하기 버튼-->
	                        <div class="T_upload_btn">
	                            <button>제출하기</button>
	                        </div>
                        </form>
                    </div>
                </div>
              </div>
            </div>
          </div>

    </div>
<script type="text/javascript" src="/JS/mypage.js"></script>
</body>
</html>