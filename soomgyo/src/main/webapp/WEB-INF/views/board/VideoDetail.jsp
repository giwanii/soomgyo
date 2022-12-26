<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ include file="../layout/link.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <style>
        #container {
            width: 60%;
            margin: 0 auto;
        }
        textarea {

            resize: none;
            outline: none;
            margin-bottom: 20px;
        }
        #save_memo,#save_reply {
            float: right;
            background-color: #edd3dc;
            border: none;
            border-radius: 5px;
            width: 60px;
            height: 25px;
            margin-bottom: 10px;

        }
        #save_reply{
            width: 15%;
            height: 35px;
        }
        .youtube{
            width: 100%;
           
            height: 600px;
            margin-top:50px;
            margin-bottom: 30px;
            border-radius:10px; 
        }
        .youtube iframe{
        	width: 100%;
        	height: 100%;
        }
        .reply_box{
            display: flex;
            justify-content: space-between;
        }
    </style>
<%@ include file="../layout/header.jsp" %>
    <div id="container">
        <form>
            <ul>
                <li>
                    <div class="youtube">
                    	<iframe src="${youtube.videoUrl}"></iframe>
                    </div>        
                </li>   
                <li>
                    <span class="title">Memo</span>
                    <input type="button" id="save_memo" name="save_memo" value="저장">
                </li>
    
                <li>
                    <textarea name="memo" id="memo" style="width: 99%; height: 300px; border-radius: 5px; font-size: 1.3rem;"placeholder="메모 하고 싶으면 여기다가~"></textarea>
                </li>
       
            </ul>
        </form>
    </div>
<%@ include file="../layout/footer.jsp"%>