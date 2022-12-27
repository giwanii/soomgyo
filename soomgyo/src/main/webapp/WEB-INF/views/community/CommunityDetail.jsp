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
            	<div class="commu_content_imgbox">
            		<img src="/auth/images?filename=${community.filename}">
            	</div>
            </div>
            <div class="comment_img">
                
                <img src="img/comment.png" alt="" style="width: 14px;"> <span class="comment_img_label">댓글 : ${reply}</span>
                <div class="content_btn">
                <c:if test="${community.users.id==principal.user.id}">
                    <a href="/community/${community.id}/updateForm">수정</a>
                    <button id="btn-delete">삭제</button>
                </c:if>
                </div>
            </div>
        </div>
        <div class="reply">
            <label for="comment" class="reply_label">댓글 </label>
            <input type="hidden" id="communityID" value="${community.id}">
            <input type="text" placeholder="댓글을 입력해주세요!" id="comment"name="comment">
            <button id="reply-btn-save" class="btn_comment">등록</button>
        </div>
        	<c:forEach var="reply" items="${community.replyList}">
		       <div class="comment">
			       	<div class="reply_name">
			       		<p>${reply.users.name}</p>
			       		<span id="reid" style="display:none;">${reply.id}</span>
			       	</div>
			       	
			       	<div class="reply_content">
			       		<p id="re_name">${reply.content}</p>	
			       		<textarea id="re_modify_box">${reply.content}</textarea>
			       	</div>
			       	
			       	<div class="reply_time">
			       		<div class="reply_time_box">
			       			<p><fmt:formatDate pattern = "MM/dd HH:mm" value="${reply.createDate}"/></p>
			       		</div>
			       		<div class="reply_time_box">
			       		<c:if test="${reply.users.id==principal.user.id}">
			        		<button class="mo_btn" id="mo_btn" value="${reply.id}" onclick="modify(this)">수정</button>
			        		<button id="de_btn" onclick="replyDelete(${community.id},${reply.id})">삭제</button>
			        		<button id="mo_finish_btn" onclick="final_modify(${community.id},${reply.id})">수정완료</button>
			        	</c:if>
			       		</div>
			       	</div>
		       </div>
	    	</c:forEach>
    </div>
<script type="text/javascript" src="/JS/community.js"></script>
<script type="text/javascript" src="/JS/reply.js"></script>
<%@ include file="../layout/footer.jsp" %>