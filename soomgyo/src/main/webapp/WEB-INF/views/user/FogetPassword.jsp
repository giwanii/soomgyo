<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="../layout/header.jsp" %>
    <div id="container">
        <!--LOGO-->
        <a href=""><h1>비밀번호 찾기</h1></a>
        <!--회원가입 Form-->
        <form action="" method="post" name="join_frm">
  
            <div class="join_input">
                <label for="userid">아이디</label><br>
                <input type="text" name="userid" size="20" placeholder="아이디를 입력해 주세요">
                <input type="hidden" name="reid" size="20"><br>
            </div>
            <div class="join_input">
                <input type="submit" value="비밀번호 찾기">
            </div>
            <div class="atag_color">
                <a href="/auth/searchid" >아이디를 잊어먹었다면?!</a>
            </div>
            <div id="ck_num">
                <div class="join_input">
                    <label for="ck_number">인증번호</label><br>
                    <input type="text" name="ck_number" size="20" placeholder="인증 번호를 입력해주세요" id="ck_number">
                    <input type="hidden" name="reid" size="20"><br>
                </div>
                <div class="join_input">
                    <input type="submit" value="인증번호 확인">
                </div>
            </div>
            
            
        
        
        </form>
    </div>
</body>
</html>