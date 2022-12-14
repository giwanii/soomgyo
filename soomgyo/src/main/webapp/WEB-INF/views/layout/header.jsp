<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>숨교</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/css/login.css">
    <link rel="stylesheet" href="/css/header.css">
    <link rel="stylesheet" href="/css/join_main.css">
    <link rel="stylesheet" href="/css/Community.css">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/462a97624e.js" crossorigin="anonymous"></script>
</head>

<body>
    <div id="main_container">
       <div id="header_wrap">
            <div id="top">
                <div class="logo">
                    <a href="/"><h1>SoomGyo</h1></a>
                </div>
         
                <div class="sub_package">
                    <ul>
                        <li><a href="/auth/login">로그인</a></li>
                        <li><a href="/auth/join">회원가입</a></li>
                    </ul>
                </div>
                <div class="mobile_tap">
                    <input type="checkbox" id="menuicon">
                    <label for="menuicon">
                        <span></span>
                        <span></span>
                        <span></span>
                    </label>
                    <div class="sidebar">
                        <div class="mobile_search">
                            <form class="search_form">
                                <input type="text" name="search">
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </form>
                        </div>
                        <div class="mobile_login">
                            <ul>
                                <li><a href="/auth/login">로그인</a></li>
                                <li><a href="/auth/join">회원가입</a></li>
                            </ul>
                        </div>
                        <div class="mobile_menu">
                            <ul>
                                <li><a href="#">관련 동영상</a></li>
                                <li><a href="#">내 강의실</a></li>
                                <li><a href="#">강사찾기</a></li>
                                <li><a href="/auth/community">커뮤니티</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div id="middle">
                <div class="middle_box"><a href="#">관련 동영상</a></div>
                <div class="middle_box"><a href="#">내 강의실</a></div>
                <div class="middle_box"><a href="#">강사찾기</a></div>
                <div class="middle_box"><a href="/auth/community">커뮤니티</a></div>
            </div>
        </div>
    </div>