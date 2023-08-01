<%@ page contentType="text/html; charset=UTF-8" %>

<%@ include file="/WEB-INF/views/common/header.jsp" %>

<div class="card m-2">
	<div class="card-header">
		AOP(관점 지향 프로그래밍)		
	</div>
	<div class="card-body">
		<div class="card">
			<div class="card-header">
				Advice 테스트	
			</div>
			<div class="card-body frame">
				<a href="before" class="btn btn-sm custom-btn btn-12">
					<span>까꿍</span><span>@Before</span>
				</a>
				<a href="after" class="btn btn-sm custom-btn btn-12">
					<span>까꿍</span><span>@After</span>
				</a>
				<a href="afterReturning" class="btn btn-sm custom-btn btn-12">
					<span>까꿍</span><span>@AfterReturning</span>
				</a>
				<a href="afterThrowing" class="btn btn-sm custom-btn btn-12">
					<span>까꿍</span><span>@AfterThrowing</span>
				</a>
				<a href="around" class="btn btn-sm custom-btn btn-12">
					<span>까꿍</span><span>@Around</span>
				</a>
			</div>
		</div>
		
		<div class="card">
			<div class="card-header">
				AOP 예제1
			</div>
			<div class="card-body frame">
				<a href="runtimeCheck" class="btn btn-sm custom-btn btn-9">시간측정</a>
				<div>실행시간: ${methodName} - ${howLong} ns</div>
			</div>
		</div>
		
		<div class="card">
			<div class="card-header">
				AOP 예제2
			</div>
			<div class="card-body frame">
				<a href="loginCheck" class="btn btn-sm custom-btn btn-11">
					인증여부<div class="dot"></div>
				</a>
				<div id="boardList"></div>
			</div>
			<!-- <script>
				function boardList() {
					$.ajax({
						url: "boardList"
					}).done((data) => {
						if(data.result === "fail") {
							window.location.href = "${pageContext.request.contextPath}/ch14/login";		
						} else {
							$("#boardList").html(data);
						}
					});
				}
			</script> -->
		</div>		
	</div>
</div>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>