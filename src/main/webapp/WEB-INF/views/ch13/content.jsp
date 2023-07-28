<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="card m-2">
	<div class="card-header">Service와 DAO(데이터 접근 객체)</div>
	<div class="card-body">
		<div class="mt-2">
			<a href="insertBoard" class="btn-hover color-1">게시물 삽입하기</a>
		</div>
		<div class="mt-2">
			<a href="getBoardList" class="btn-hover color-2">게시물 목록 가져오기</a>
		</div>
		<div class="mt-2">
			<a href="updateBoard" class="btn-hover color-3">게시물 변경하기</a>
		</div>
<!-- 		<div class="mt-2">
			<a href="deleteBoard" class="btn-hover color-4">게시물 삭제하기</a>
		</div> -->
		
		<div class="div">
			<span class="button--bubble__container">
				<a href="deleteBoard" class="button button--bubble">게시물 삭제하기</a>
				<span class="button--bubble__effect-container">
					<span class="circle top-left"></span>
				    <span class="circle top-left"></span>
				    <span class="circle top-left"></span>
				
				    <span class="button effect-button"></span>
				
				    <span class="circle bottom-right"></span>
				    <span class="circle bottom-right"></span>
				    <span class="circle bottom-right"></span>
			 	</span>
			</span>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
