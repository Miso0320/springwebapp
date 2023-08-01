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
			
			/* C13 a 태그 */
			.div {
			  display: block;
			  height: 100%;
			  animation: hue-rotate 10s linear infinite;
			}
			
			.button {
			  -webkit-font-smoothing: antialiased;
			  background-color: #222;
			  border: none;
			  color: #fff;
			  display: inline-block;
			  font-family: "Montserrat", sans-serif;
			  font-size: 14px;
			  font-weight: 100;
			  text-decoration: none;
			  user-select: none;
			  letter-spacing: 1px;
			  color: white;
			  padding: 20px 40px;
			  text-transform: uppercase;
			  transition: all 0.1s ease-out;
			}
			.button:hover {
			  background-color: #90feb5;
			  color: #fff;
			}
			.button:active {
			  transform: scale(0.95);
			}
			.button--bubble {
			  position: relative;
			  z-index: 2;
			  color: white;
			  background: none;
			}
			.button--bubble:hover {
			  background: none;
			}
			.button--bubble:hover + .button--bubble__effect-container .circle {
			  background: #44fd82;
			}
			.button--bubble:hover + .button--bubble__effect-container .button {
			  background: #44fd82;
			}
			.button--bubble:active + .button--bubble__effect-container {
			  transform: scale(0.95);
			}
			.button--bubble__container {
			  position: relative;
			  display: inline-block;
			}
			.button--bubble__container .effect-button {
			  position: absolute;
			  width: 50%;
			  height: 25%;
			  top: 50%;
			  left: 25%;
			  z-index: 1;
			  transform: translateY(-50%);
			  background: #222;
			  transition: background 0.1s ease-out;
			}
			
			.button--bubble__effect-container {
			  position: absolute;
			  display: block;
			  width: 200%;
			  height: 400%;
			  top: -150%;
			  left: -50%;
			  -webkit-filter: url("#goo");
			  filter: url("#goo");
			  transition: all 0.1s ease-out;
			  pointer-events: none;
			}
			.button--bubble__effect-container .circle {
			  position: absolute;
			  width: 25px;
			  height: 25px;
			  border-radius: 15px;
			  background: #222;
			  transition: background 0.1s ease-out;
			}
			.button--bubble__effect-container .circle.top-left {
			  top: 40%;
			  left: 27%;
			}
			.button--bubble__effect-container .circle.bottom-right {
			  bottom: 40%;
			  right: 27%;
			}
			
			.goo {
			  position: absolute;
			  visibility: hidden;
			  width: 1px;
			  height: 1px;
			}
			
			.button--bubble__container {
			  top: 50%;
			  margin-top: -25px;
			}
			
			@keyframes hue-rotate {
			  from {
			    -webkit-filter: hue-rotate(0);
			    -moz-filter: hue-rotate(0);
			    -ms-filter: hue-rotate(0);
			    filter: hue-rotate(0);
			  }
			  to {
			    -webkit-filter: hue-rotate(360deg);
			    -moz-filter: hue-rotate(360deg);
			    -ms-filter: hue-rotate(360deg);
			    filter: hue-rotate(360deg);
			  }
			}
			
			/* 색깔 막 바뀌는 버튼 */
			.color-bg-start {
			  background-color: salmon;
			}
			.bg-animate-color {
			  animation: random-bg .5s linear infinite;
			}
			@keyframes random-bg {
			  from {
			    filter: hue-rotate(0);
			  }
			  to {
			    filter: hue-rotate(360deg);
			  }
			}
			.fun-btn {
			  background-color: salmon;
			  color: white;
			  border: none;
			  transition: all .3s ease;
			  border-radius: 5px;
			  text-transform: uppercase;
			  outline: none;
			  align-self: center;
			  cursor: pointer;
			  font-weight: bold;
			}
			.logbtn {
			   animation: random-bg .5s linear infinite, grow 1300ms ease infinite;
			}
			.fun-btn:hover {
			   animation: random-bg .5s linear infinite, grow 1300ms ease infinite;
			}
			.start-fun {
			  background-color: #fff !important;
			  /* change color of button text when fun is started   */
			  color: salmon !important;
			}
			
			/* 재홍버튼 */
			/* 공통 */
			.frame {
			  width: 90%;
			  margin: 40px auto;
			  text-align: center;
			}
			.custom-btn {
			  margin: 20px;
			  width: 130px;
			  height: 40px;
			  color: #fff;
			  border-radius: 5px;
			  padding: 10px 25px;
			  font-family: 'Lato', sans-serif;
			  font-weight: 500;
			  background: transparent;
			  cursor: pointer;
			  transition: all 0.3s ease;
			  position: relative;
			  display: inline-block;
			   box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
			   7px 7px 20px 0px rgba(0,0,0,.1),
			   4px 4px 5px 0px rgba(0,0,0,.1);
			  outline: none;
			}
			
			/* 버튼9 보라파랑 */
			.btn-9 {
			  position: sticky;
			  border: none;
			  transition: all 0.3s ease;
			  overflow: hidden;
			}
			.btn-9:after {
			  position: absolute;
			  content: " ";
			  z-index: -1;
			  top: 0;
			  left: 0;
			  width: 100%;
			  height: 100%;
			   background-color: #1fd1f9;
			background-image: linear-gradient(315deg, #1fd1f9 0%, #b621fe 74%);
			  transition: all 0.3s ease;
			}
			.btn-9:hover {
			  background: transparent;
			  box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),
			              -4px -4px 6px 0 rgba(116, 125, 136, .2), 
			    inset -4px -4px 6px 0 rgba(255,255,255,.5),
			    inset 4px 4px 6px 0 rgba(116, 125, 136, .3);
			  color: #fff;
			}
			.btn-9:hover:after {
			  -webkit-transform: scale(2) rotate(180deg);
			  transform: scale(2) rotate(180deg);
			  box-shadow:  4px 4px 6px 0 rgba(255,255,255,.5),
			              -4px -4px 6px 0 rgba(116, 125, 136, .2), 
			    inset -4px -4px 6px 0 rgba(255,255,255,.5),
			    inset 4px 4px 6px 0 rgba(116, 125, 136, .3);
			}
			
			/* 버튼 11(핫핑크 반짝) */
			.btn-11 {
			  border: none;
			  background: rgb(251,33,117);
			  background: linear-gradient(0deg, rgba(251,33,117,1) 0%, rgba(234,76,137,1) 100%);
			  color: #fff;
			  overflow: hidden;
			}
			.btn-11:hover {
			    text-decoration: none;
			    color: #fff;
			}
			.btn-11:before {
			    position: absolute;
			    content: '';
			    display: inline-block;
			    top: -180px;
			    left: 0;
			    width: 30px;
			    height: 100%;
			    background-color: #fff;
			    animation: shiny-btn1 3s ease-in-out infinite;
			}
			.btn-11:hover{
			  opacity: .7;
			}
			.btn-11:active{
			  box-shadow:  4px 4px 6px 0 rgba(255,255,255,.3),
			              -4px -4px 6px 0 rgba(116, 125, 136, .2), 
			    inset -4px -4px 6px 0 rgba(255,255,255,.2),
			    inset 4px 4px 6px 0 rgba(0, 0, 0, .2);
			}
			
			
			@-webkit-keyframes shiny-btn1 {
			    0% { -webkit-transform: scale(0) rotate(100deg); opacity: 0; }
			    80% { -webkit-transform: scale(0) rotate(100deg); opacity: 0.5; }
			    81% { -webkit-transform: scale(4) rotate(100deg); opacity: 1; }
			    100% { -webkit-transform: scale(40) rotate(100deg); opacity: 0; }
			}
			
			/* 버튼 12(파란상자) */
			.btn-12{
			  position: relative;
			  right: 20px;
			  bottom: 20px;
			  border:none;
			  box-shadow: none;
			  width: 130px;
			  height: 40px;
			  line-height: 42px;
			  -webkit-perspective: 230px;
			  perspective: 230px;
			}
			.btn-12 span {
			  background: rgb(0,172,238);
			background: linear-gradient(0deg, rgba(0,172,238,1) 0%, rgba(2,126,251,1) 100%);
			  display: block;
			  position: absolute;
			  width: 130px;
			  height: 40px;
			  box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
			   7px 7px 20px 0px rgba(0,0,0,.1),
			   4px 4px 5px 0px rgba(0,0,0,.1);
			  border-radius: 5px;
			  margin:0;
			  text-align: center;
			  -webkit-box-sizing: border-box;
			  -moz-box-sizing: border-box;
			  box-sizing: border-box;
			  -webkit-transition: all .3s;
			  transition: all .3s;
			}
			.btn-12 span:nth-child(1) {
			  box-shadow:
			   -7px -7px 20px 0px #fff9,
			   -4px -4px 5px 0px #fff9,
			   7px 7px 20px 0px #0002,
			   4px 4px 5px 0px #0001;
			  -webkit-transform: rotateX(90deg);
			  -moz-transform: rotateX(90deg);
			  transform: rotateX(90deg);
			  -webkit-transform-origin: 50% 50% -20px;
			  -moz-transform-origin: 50% 50% -20px;
			  transform-origin: 50% 50% -20px;
			}
			.btn-12 span:nth-child(2) {
			  -webkit-transform: rotateX(0deg);
			  -moz-transform: rotateX(0deg);
			  transform: rotateX(0deg);
			  -webkit-transform-origin: 50% 50% -20px;
			  -moz-transform-origin: 50% 50% -20px;
			  transform-origin: 50% 50% -20px;
			}
			.btn-12:hover span:nth-child(1) {
			  box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
			   7px 7px 20px 0px rgba(0,0,0,.1),
			   4px 4px 5px 0px rgba(0,0,0,.1);
			  -webkit-transform: rotateX(0deg);
			  -moz-transform: rotateX(0deg);
			  transform: rotateX(0deg);
			}
			.btn-12:hover span:nth-child(2) {
			  box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
			   7px 7px 20px 0px rgba(0,0,0,.1),
			   4px 4px 5px 0px rgba(0,0,0,.1);
			 color: transparent;
			  -webkit-transform: rotateX(-90deg);
			  -moz-transform: rotateX(-90deg);
			  transform: rotateX(-90deg);
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
	            <%-- <div>
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
	            </div> --%>
	            
	            <!-- Ch13 -->
	            <div>
	               <div>
						<c:if test="${ch13Login == null}">
							<a href="${pageContext.request.contextPath}/ch13/login" class="btn btn-sm fun-btn logbtn">로그인</a>
						</c:if>
	              
	              		<c:if test="${ch13Login != null}">
							<a href="${pageContext.request.contextPath}/ch13/logout" class="btn btn-sm fun-btn logbtn">로그아웃</a>
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
