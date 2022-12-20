<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ include file="link.jsp" %>
<link rel="stylesheet" href="/css/header.css">
</head>
<body>
    <div id="main_container">
       <div id="header_wrap">
            <div id="top">
             	<div class="logo2">
                   <a href="/"><h1>SoomGyo</h1></a>
                </div>
                <div class="search">
                    <form class="search_form">
                        <input type="text" name="search">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </form>
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
                                <li><a href="/auth/FindTeacher">강사찾기</a></li>
                                <li><a href="/auth/community">커뮤니티</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div id="middle">
             <div class="logo">
                    <a href="/"><h1>SoomGyo</h1></a>
                </div>
                <div class="middle_box middle_box1"><a href="#">관련 동영상</a></div>
                <div class="middle_box middle_box2"><a href="#">내 강의실</a></div>
                <div class="middle_box middle_box3"><a href="/auth/FindTeacher">강사찾기</a></div>
                <div class="middle_box middle_box4"><a href="/auth/community">커뮤니티</a></div>
            </div>
        </div>
    </div>