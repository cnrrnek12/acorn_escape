<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<html>
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css?v=<%=System.currentTimeMillis() %>" />
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css?v=<%=System.currentTimeMillis() %>"/>
 	<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" ></script>
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" /></script>
	<title>Acorn Escape 설명</title>
</head>
<body id="bootstrap-overrides">
	<jsp:include page="templates/nav.jsp"></jsp:include>
	<main role="main" class="bg-white">
		<!-- 메인 설명 -->
		<section>
			<div class="container pt-5">
				<h4 class="text-center text-primary">도전하세요!</h4>
				<h4 class="text-center text-primary">당신의 상상력,판단력,추리 능력으로...</h4>
				<div class="row mt-5">
					<div class="col-lg-3 col-md-6 px-5">
						<div class="d-flex flex-column justify-content-center align-items-center">
							<img src="/escape/resources/img/sub01_01.jpg" alt="" />
							<span class="text-muted mt-5">예약방법</span>
							<hr class="w-25 solid">
						</div>
						<p class="text-muted">
						예약은 홈페이지, 매장전화를 이용 예약을 하세요. 예약시간 최소10분전 도착하셔야 정상이용이 가능하며 5분 이상 늦으시면 예약은 자동 취소 됩니다.
						</p>
					</div>
					<div class="col-lg-3 col-md-6 px-5">
						<div class="d-flex flex-column justify-content-center align-items-center">
							<img src="/escape/resources/img/sub01_02.jpg" alt="" />
							<span class="text-muted mt-5">진행방법</span>
							<hr class="w-25 solid">
						</div>
						<p  class="text-muted">
						입장전 휴대폰, 인화물질은 별도로 보관하며 게임의 몰입도를 위해 눈을 가리고 입장합니다. 힌트는 총3번까지 요청하실 수 있습니다. 게임 진행 시간은 총 60분 입니다.
						</p>
					</div>
					<div class="col-lg-3 col-md-6 px-5">
						<div class="d-flex flex-column justify-content-center align-items-center">
							<img src="/escape/resources/img/sub01_03.jpg" alt="" />
							<span class="text-muted mt-5">입장제한 및 환불 불가</span>
							<hr class="w-25 solid">
						</div>
						<p class="text-muted">
						예약시간 이후 도착하시면 입장이 제한될 수 있습니다. 미성년자 이용불가 테마가 있으니 테마소개에서 확인 바랍니다. 과도한 음주자, 폐쇄공포증, 심장 질환자, 임산부는 이용하실 수 없습니다
						</p>
					</div>
					<div class="col-lg-3 col-md-6 px-5" >
						<div class="d-flex flex-column justify-content-center align-items-center">
							<img src="/escape/resources/img/sub01_04.jpg" alt="" />
							<span class="text-muted mt-5">기밀누설금지</span>
							<hr class="w-25 solid">						
						</div>
						<p class="text-muted">
						큐브 이스케이프의 모든 테마는 기밀입니다. 아직 테마를 경험하지 못하신 분들을 위해 퀴즈에 대한 세부사항은 방문자만 공유바랍니다.
						</p>
					</div>
				</div>
			</div>
		</section>
	
	 </main>
	<jsp:include page="templates/footer.jsp"></jsp:include>
</body>
</html>