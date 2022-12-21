<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/link.jsp" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="/css/CommunityDetail.css">
<%@ include file="../layout/header.jsp"%>
	<div id="container">
        <div class="category">
            <span class="sp_category">${community.category}</span>
            <span id="id" style="display:none;">${community.id}</span>
        </div>
       
        
        <div class="title">
            <span class="sp_title">${community.title}</span>
        </div>
        
        <div class="board_info">
            <div class="writer">
                <span class="sp_writer">작성자 : ${community.users.name}</span>
            </div>
            <div class="board_date_count">
                <span class="sp_date">
                	<fmt:formatDate pattern = "yyyy/MM/dd" value="${community.createDate}"/>
                </span>
            
                <span class="sp_count">조회수: ${community.count}</span>
            </div>
        </div>
        
        <div class="content">
        	<div class="content_uses">
            	<p>${community.content}</p>
            </div>
            <div class="comment_img">
                
                <img src="img/comment.png" alt="" style="width: 14px;"> <span class="comment_img_label"> 댓글 0</span>
                <div class="content_btn">
                <c:if test="${community.users.id==principal.user.id}">
                    <button id="btn-update">수정</button>
                    <button id="btn-delete">삭제</button>
                </c:if>
                </div>
            </div>
        </div>
        <div class="reply">
            <label for="comment" class="reply_label">댓글 </label>
            <input type="text" placeholder="댓글을 입력해주세요!" id="comment"name="comment">
            <button class="btn_comment">입력</button>
        </div>
        <div class="comment">
        </div>
    </div>
<script type="text/javascript" src="/JS/community.js"></script>
<%@ include file="../layout/footer.jsp" %>