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
    <title>숨교:학생 회원가입</title>
</head>
<body>
    <div id="join_student_container2">
        <!--LOGO-->
        <a href="/"><h1 class="join_h1 join_h1_padding">SoomGyo</h1></a>
        <a href="/auth/join"><h1 class="join_h1">학생 가입</h1></a>
        <!--회원가입 Form-->
        <form action="" method="post" name="join_frm">
            <!--이름-->
            <div class="join_input">
                <label for="name">이름</label><br>
                <input type="text" name="name" size="20" placeholder="이름를 입력해 주세요" ><br>
            </div>
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
                <input type="email" name="email" size="20" placeholder="이메일를 입력해 주세요" id="email"><br>
                <br>
                <button>인증받기</button>
                <input type="text" placeholder="인증번호 입력">
                
            </div>
            <!--전화번호-->
            <div class="join_input">
                <label for="phone">전화번호</label><br>
                <input type="text" name="phone" size="20" placeholder="전화번호를 입력해 주세요"><br>
            </div>
            <!--가입하기-->
            <div class="join_input">
                <input type="submit" value="가입하기">
            </div>
        </form>
    </div>
</body>
</html>