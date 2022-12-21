<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ include file="../layout/link.jsp" %>

 <link rel="stylesheet" href="/css/CommunitySaveForm.css">
<%@ include file="../layout/header.jsp"%>

<div class="container">
 	<div id="comm_menu">
        <ul id="comm_menu_bar">
          <div class="comm_menu_bar_1">
            <li>
              <a href="#">
                <div class="comm_menu comm_menu1">
               
                  <span>전체</span>
                </div>
              </a>
            </li>
            <li>
              <a href="#">
                <div class="comm_menu comm_menu2">
                  <img src="/img/team.png" alt="">
                  <span>공유해요</span>
                </div>
              </a>
            </li>
            <li>
              <a href="#">
                <div class="comm_menu comm_menu3">
                  <img src="/img/problem.png" alt="">
                  <span>질문해요</span>
                </div>
              </a>
            </li>
            <li>
              <a href="#">
                <div class="comm_menu comm_menu4">
                  <img src="/img/study.png" alt="">
                  <span>공부해요</span>
                </div>
              </a>
            </li>
            <li>
              <a href="#">
                <div class="comm_menu comm_menu5">
                  <img src="/img/campaign.png" alt="">
                  <span>공지사항</span>
                </div>
              </a>
            </li>
          </div>
        </ul>
      </div>
	<div class="board_box">
	<div class="title">
		<p>게시물 작성</p>
	</div>
	<form name="CommuSaveForm" >
		<div class=form-group>
		<label for="category">Category </label><br>
			<select class="category" id="category" name="category">
				<option value="">필수선택</option>
				<option value="공유해요">공유해요</option>
				<option value="질문해요">질문해요</option>
				<option value="공부해요">공부해요</option>		
			</select>
		</div>
		<div class="form-group">
			<label for="title">Title</label><br>
			<input type="text" class="form-control" placeholder="Enter title" id="title">
		</div>
		
		<div class="form-group">
			<label for="content">Content:</label><br>
			<textarea class="form-control summernote" id="content"></textarea>
		</div>
		<div class="form-group">
			<label for="file">File</label><br>
			<input type="file" class="form-control"  id="file" multiple="multiple">
		</div>
		
	</form>
	<div id="btn_div">
		<button id="btn-save">저장</button>
	</div>
	</div>
</div>
<br/>

<script type="text/javascript" src="/JS/community.js"></script>
