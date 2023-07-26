<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico" type="image/x-icon">
		<title>Insert title here</title>
		
		<!-- script : 작성된 자바스크립트 가져올 때(외부, 내부 모두 가능) -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
		<style type="text/css">
			/* C11 form */
			.btn-hover {
			    width: 100px;
			    font-size: 16px;
			    font-weight: 600;
			    color: #fff;
			    cursor: pointer;
			    margin: 20px;
			    height: 55px;
			    text-align:center;
			    border: none;
			    background-size: 300% 100%;
			
			    border-radius: 50px;
			    moz-transition: all .4s ease-in-out;
			    -o-transition: all .4s ease-in-out;
			    -webkit-transition: all .4s ease-in-out;
			    transition: all .4s ease-in-out;
			}
			
			.btn-hover:hover {
			    background-position: 100% 0;
			    moz-transition: all .4s ease-in-out;
			    -o-transition: all .4s ease-in-out;
			    -webkit-transition: all .4s ease-in-out;
			    transition: all .4s ease-in-out;
			}
			
			.btn-hover:focus {
			    outline: none;
			}
			
			.btn-hover.color-1 {
			    background-image: linear-gradient(to right, #25aae1, #40e495, #30dd8a, #2bb673);
			    box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
			}
			.btn-hover.color-2 {
			    background-image: linear-gradient(to right, #f5ce62, #e43603, #fa7199, #e85a19);
			    box-shadow: 0 4px 15px 0 rgba(229, 66, 10, 0.75);
			}
			.btn-hover.color-3 {
			    background-image: linear-gradient(to right, #667eea, #764ba2, #6B8DD6, #8E37D7);
			    box-shadow: 0 4px 15px 0 rgba(116, 79, 168, 0.75);
			}
			.btn-hover.color-4 {
			    background-image: linear-gradient(to right, #fc6076, #ff9a44, #ef9d43, #e75516);
			    box-shadow: 0 4px 15px 0 rgba(252, 104, 110, 0.75);
			}
			.btn-hover.color-5 {
			    background-image: linear-gradient(to right, #0ba360, #3cba92, #30dd8a, #2bb673);
			    box-shadow: 0 4px 15px 0 rgba(23, 168, 108, 0.75);
			}
			.btn-hover.color-6 {
			    background-image: linear-gradient(to right, #009245, #FCEE21, #00A8C5, #D9E021);
			    box-shadow: 0 4px 15px 0 rgba(83, 176, 57, 0.75);
			}
			.btn-hover.color-7 {
			    background-image: linear-gradient(to right, #6253e1, #852D91, #A3A1FF, #F24645);
			    box-shadow: 0 4px 15px 0 rgba(126, 52, 161, 0.75);
			}
			.btn-hover.color-8 {
			    background-image: linear-gradient(to right, #29323c, #485563, #2b5876, #4e4376);
			    box-shadow: 0 4px 15px 0 rgba(45, 54, 65, 0.75);
			}
			.btn-hover.color-9 {
			    background-image: linear-gradient(to right, #25aae1, #4481eb, #04befe, #3f86ed);
			    box-shadow: 0 4px 15px 0 rgba(65, 132, 234, 0.75);
			}
			.btn-hover.color-10 {
			        background-image: linear-gradient(to right, #ed6ea0, #ec8c69, #f7186a , #FBB03B);
			    box-shadow: 0 4px 15px 0 rgba(236, 116, 149, 0.75);
			}
			.btn-hover.color-11 {
			       background-image: linear-gradient(to right, #eb3941, #f15e64, #e14e53, #e2373f);  box-shadow: 0 5px 15px rgba(242, 97, 103, .4);
			}
			
			/* C11 content */
			.button_container {
			  
			}
			.btn_move {
			  text-decoration: none;
			  width: 200px;
			  border: none;
			  display: block;
			  text-align: center;
			  cursor: pointer;
			  text-transform: uppercase;
			  outline: none;
			  overflow: hidden;
			  position: relative;
			  color: #fff;
			  font-weight: 700;
			  font-size: 15px;
			  background-color: #222;
			  padding: 17px 60px;
			  margin: 0 auto;
			  box-shadow: 0 5px 15px rgba(0,0,0,0.20);
			}
			
			.btn_move span {
			  position: relative; 
			  z-index: 1;
			}
			
			.btn_move:after {
			  color: #fff;
			  content: "";
			  position: absolute;
			  left: 0;
			  top: 0;
			  height: 490%;
			  width: 140%;
			  background: #78c7d2;
			  -webkit-transition: all .5s ease-in-out;
			  transition: all .5s ease-in-out;
			  -webkit-transform: translateX(-98%) translateY(-25%) rotate(45deg);
			  transform: translateX(-98%) translateY(-25%) rotate(45deg);
			}
			
			.btn_move:hover:after {
			  color: #fff;
			  -webkit-transform: translateX(-9%) translateY(-25%) rotate(45deg);
			  transform: translateX(-9%) translateY(-25%) rotate(45deg);
			}
			
			
		</style>
	
	</head>
	<body>
		 <div class="d-flex flex-column vh-100">
	         <nav class="navbar navbar-dark bg-dark text-white font-weight-bold">
	            <a class="navbar-brand" href="${pageContext.request.contextPath}"> 
	               <%-- 
	               	${pageContext.request.contextPath}는 런타임 시에 ContextPath를 리턴
	               	ContextPath: /servlet_jsp
	                --%>
	               
	               <img src="${pageContext.request.contextPath}/resources/images/logo-spring.png" width="30" height="30" class="d-inline-block align-top">
	               	전자정부 프레임워크(Spring Framework)
	            </a>
	            <div>
	               <div>
						<c:if test="${login == null}">
							<a href="${pageContext.request.contextPath}/ch08/content" class="btn btn-success btn-sm">로그인</a>
						</c:if>
	              
	              		<c:if test="${login != null}">
							현재 ${login.mid} 로그인 됨
							<img src="${pageContext.request.contextPath}/resources/images/face/${login.mid}.png" width="30" height="30">
							<a href="${pageContext.request.contextPath}/ch08/logout" class="btn btn-warning btn-sm mt-2">로그아웃</a>
						</c:if>
	               </div>
	            </div>
	         </nav>
   
         <div class="flex-grow-1 container-fluid">
            <div class="row h-100">
               <div class="col-md-4 p-3 bg-dark">
                  <div class="h-100 d-flex flex-column">
                     <div class="flex-grow-1" style="height: 0px; overflow-y: auto; overflow-x: hidden;">
                        <%@ include file="/WEB-INF/views/common/menu.jsp" %>
                     </div>
                  </div>
               </div>
   
               <div class="col-md-8 p-3">
                  <div class=" h-100 d-flex flex-column">
                     <div class="flex-grow-1 overflow-auto pr-3" style="height: 0px">
