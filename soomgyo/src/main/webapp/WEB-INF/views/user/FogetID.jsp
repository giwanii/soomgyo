<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/joinStudent.css">
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <title>숨교:아이디 찾기</title>
</head>
<body>
    <div id="join_student_container">
        <!--LOGO-->
        <a href="/"><h1 class="join_h1">Soomgyo</h1></a>
        <!--회원가입 Form-->
        <form action="" method="post" name="join_frm">
  
            <div class="join_input">
                <label for="useremail">이메일</label><br>
                <input type="email" name="useremail" size="20" placeholder="이메일을 입력해 주세요">
            </div>
            <div class="join_input">
                <input type="submit" value="아이디 찾기">
            </div>
            <div class="atag_color">
                <a href="/auth/searchpwd" >비밀번호를 잊어버리셨나요?</a>
            </div>
            <div id="ck_num">
                <div class="join_input">
                    <label for="ck_number">인증번호</label><br>
                    <input type="text" name="ck_number" size="20" placeholder="인증 번호를 입력해주세요" id="ck_number">
                </div>
                <div class="join_input">
                    <input type="submit" value="인증번호 확인">
                </div>
            </div>
            <div id="ck_id">
                <div class="join_input">
                    <label for="ck_number">찾으시는 아이디 입니다~</label><br>
                    <input type="text" name="ck_number" size="20" value="zzzz" readonly>
                </div>
            </div>
            
            
        
        
        </form>
    </div>
</body>
</html>