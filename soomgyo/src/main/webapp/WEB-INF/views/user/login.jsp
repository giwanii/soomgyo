<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="../layout/link.jsp" %>
 <link rel="stylesheet" href="/css/login.css">
 <style>
</style>
<%@ include file="../layout/header.jsp" %>

    <div id="login_container">
        
        <!--LOGO-->
        <div class="login_header">
    
        <h1 class="login_h1">로그인</h1>

        </div>
        <!--Form-->
        <form action="" method="post">
        
            <!--아이디 input-->
            <div class="id_box">
                <input type="text" placeholder="아이디" name="userid" value="">
            </div>
            <!--비밀번호 input-->
            <div class="pwd_box">
                <input type="password" placeholder="비밀번호" name="pwd">
            </div>
        </form>
        <!--로그인 button-->
        <div class="login_box">
            <input type="submit" value="로그인">
        </div>
        <!--아이디 비번 회원가입-->
        <div class="sub_menu">
        <a href="/auth/searchid">아이디 찾기</a>
        <a href="/auth/searchpwd">비밀번호 찾기</a>
        <a href="/auth/join">회원가입</a>
           
        </div>    
    </div>
</body>
</html>