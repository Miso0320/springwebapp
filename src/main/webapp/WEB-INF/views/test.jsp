<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="icon" href="/html-css-javascript/favicon.ico" type="image/x-icon">
		<title>쫀득이 버튼 만드는 중입니당 @_@</title>
		
		<!-- script : 작성된 자바스크립트 가져올 때(외부, 내부 모두 가능) -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.min.js"></script>
		<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	
		<style type="text/css">
		* {
		  box-sizing: border-box;
		}
		
		div {
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
		
		html, body {
		  width: 100%;
		  height: 100%;
		  text-align: center;
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
		</style>
	
		<script type="text/javascript">
			$('.button--bubble').each(function() {
				  var $circlesTopLeft = $(this).parent().find('.circle.top-left');
				  var $circlesBottomRight = $(this).parent().find('.circle.bottom-right');
	
				  var tl = new TimelineLite();
				  var tl2 = new TimelineLite();
	
				  var btTl = new TimelineLite({ paused: true });
	
				  tl.to($circlesTopLeft, 1.2, { x: -25, y: -25, scaleY: 2, ease: SlowMo.ease.config(0.1, 0.7, false) });
				  tl.to($circlesTopLeft.eq(0), 0.1, { scale: 0.2, x: '+=6', y: '-=2' });
				  tl.to($circlesTopLeft.eq(1), 0.1, { scaleX: 1, scaleY: 0.8, x: '-=10', y: '-=7' }, '-=0.1');
				  tl.to($circlesTopLeft.eq(2), 0.1, { scale: 0.2, x: '-=15', y: '+=6' }, '-=0.1');
				  tl.to($circlesTopLeft.eq(0), 1, { scale: 0, x: '-=5', y: '-=15', opacity: 0 });
				  tl.to($circlesTopLeft.eq(1), 1, { scaleX: 0.4, scaleY: 0.4, x: '-=10', y: '-=10', opacity: 0 }, '-=1');
				  tl.to($circlesTopLeft.eq(2), 1, { scale: 0, x: '-=15', y: '+=5', opacity: 0 }, '-=1');
	
				  var tlBt1 = new TimelineLite();
				  var tlBt2 = new TimelineLite();
				  
				  tlBt1.set($circlesTopLeft, { x: 0, y: 0, rotation: -45 });
				  tlBt1.add(tl);
	
				  tl2.set($circlesBottomRight, { x: 0, y: 0 });
				  tl2.to($circlesBottomRight, 1.1, { x: 30, y: 30, ease: SlowMo.ease.config(0.1, 0.7, false) });
				  tl2.to($circlesBottomRight.eq(0), 0.1, { scale: 0.2, x: '-=6', y: '+=3' });
				  tl2.to($circlesBottomRight.eq(1), 0.1, { scale: 0.8, x: '+=7', y: '+=3' }, '-=0.1');
				  tl2.to($circlesBottomRight.eq(2), 0.1, { scale: 0.2, x: '+=15', y: '-=6' }, '-=0.2');
				  tl2.to($circlesBottomRight.eq(0), 1, { scale: 0, x: '+=5', y: '+=15', opacity: 0 });
				  tl2.to($circlesBottomRight.eq(1), 1, { scale: 0.4, x: '+=7', y: '+=7', opacity: 0 }, '-=1');
				  tl2.to($circlesBottomRight.eq(2), 1, { scale: 0, x: '+=15', y: '-=5', opacity: 0 }, '-=1');
				  
				  tlBt2.set($circlesBottomRight, { x: 0, y: 0, rotation: 45 });
				  tlBt2.add(tl2);
	
				  btTl.add(tlBt1);
				  btTl.to($(this).parent().find('.button.effect-button'), 0.8, { scaleY: 1.1 }, 0.1);
				  btTl.add(tlBt2, 0.2);
				  btTl.to($(this).parent().find('.button.effect-button'), 1.8, { scale: 1, ease: Elastic.easeOut.config(1.2, 0.4) }, 1.2);
	
				  btTl.timeScale(2.6);
	
				  $(this).on('mouseover', function() {
				    btTl.restart();
				  });
				});
		</script>
	
	
	</head>
	<body>
		<div>
			<svg xmlns="http://www.w3.org/2000/svg" version="1.1" class="goo">
			  <defs>
			    <filter id="goo">
			      <feGaussianBlur in="SourceGraphic" stdDeviation="10" result="blur" />
			      <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 19 -9" result="goo" />
			      <feComposite in="SourceGraphic" in2="goo"/>
			    </filter>
			  </defs>
			</svg>
			
			<span class="button--bubble__container">
			  <a href="#campaign" class="button button--bubble">
			    쫀-득
			  </a>
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
	</body>
</html>