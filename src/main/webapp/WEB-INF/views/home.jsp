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
	<title>Cube Escape</title>
</head>
<body id="bootstrap-overrides">
<jsp:include page="templates/nav.jsp"></jsp:include>

<main role="main">
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
	    <ol class="carousel-indicators">
	      <li data-target="#myCarousel" data-slide-to="0" class=""></li>
	      <li data-target="#myCarousel" data-slide-to="1" class=""></li>
	      <li data-target="#myCarousel" data-slide-to="2" class="active"></li>
	    </ol>
	    <div class="carousel-inner">
	      <div class="carousel-item">
	      	<img src="/escape/resources/img/main_img03.jpg" width="100%" height="100%"  alt="" />
			<div class="carousel-caption">
			  <h1>방안에 모든것이 단서다! 지금 이 순간! 큐브에 도전하세요!</h1>
			</div>
	      </div>
	      <div class="carousel-item ">
            <img src="/escape/resources/img/main_img01.jpg" width="100%" height="100%"  alt="" />
			<div class="carousel-caption">
			  <h1>주어진 시간은 단 60분!</h1>
			</div>
	      </div>
	      <div class="carousel-item active">
			<img src="/escape/resources/img/main_img02.jpg" width="100%" height="100%"  alt="" />
			<div class="carousel-caption">
			  <h1>전국 최대 100평 규모의 미스터리 방탈출 카페</h1>
			</div>
	      </div>
	    </div>
	    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
	      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
	      <span class="carousel-control-next-icon" aria-hidden="true"></span>
	      <span class="sr-only">Next</span>
	    </a>
	</div>
	
	<!-- 지점소개 -->
	<div class="myBack bg-dark p-5">
		<div class="container">
			<h3 class="text-center mt-5">지점별 예약/테마소개</h3>
			<h5 class="text-center mt-4 mb-5">원하시는 지점에서 예약 가능한 일자 확인 또는 예약을 하시려면, 예약하기 버튼을 눌러 주세요.</h5>
			<div class="row d-flex flex-wrap">
				<div class="col-lg-2"></div>
				<div class="col-lg-2 col-md-4 col-sm-5 myBox d-flex flex-column justify-content-center align-items-center  my-4 mx-2  branchStore">
					<h5>홍대점</h5>
					<hr class="w-50 solid">
					<a href="">예약하기</a>
					<a href="">테마소개</a>
					<a href="mapinfo/mapinfo.do#/hongdae">오시는길</a>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-5 myBox d-flex flex-column justify-content-center align-items-center  my-4 mx-2  branchStore">
					<h5>대구점</h5>
					<hr class="w-50 solid">
					<a href="">예약하기</a>
					<a href="">테마소개</a>
					<a href="mapinfo/mapinfo.do#/daegu">오시는길</a>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-5 myBox d-flex flex-column justify-content-center align-items-center  my-4 mx-2  branchStore">
					<h5>인천구월점</h5>
					<hr class="w-50 solid">
					<a href="">예약하기</a>
					<a href="">테마소개</a>
					<a href="mapinfo/mapinfo.do#/incheon">오시는길</a>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-5 myBox d-flex flex-column justify-content-center align-items-center  my-4 mx-2  branchStore">
					<h5>전주점</h5>
					<hr class="w-50 solid">
					<a href="">예약하기</a>
					<a href="">테마소개</a>
					<a href="mapinfo/mapinfo.do#/jeonju">오시는길</a>
				</div>
				<div class="col-lg-2"></div>
			</div>
			
			
			
			<div class="row d-flex flex-wrap">
				<div class="col-lg-2"></div>
				<div class="col-lg-2 col-md-4 col-sm-5 myBox d-flex flex-column justify-content-center align-items-center  my-4 mx-2  branchStore">
					<h5>잠실점</h5>
					<hr class="w-50 solid">
					<a href="">예약하기</a>
					<a href="">테마소개</a>
					<a href="mapinfo/mapinfo.do#/jamsil">오시는길</a>				
				</div>
				<div class="col-lg-2 col-md-4 col-sm-5 myBox d-flex flex-column justify-content-center align-items-center  my-4 mx-2  branchStore">
					<h5>대전둔산점</h5>
					<hr class="w-50 solid">
					<a href="">예약하기</a>
					<a href="">테마소개</a>
					<a href="mapinfo/mapinfo.do#/daejeon">오시는길</a>				
				</div>
				<div class="col-lg-2 col-md-4 col-sm-5 myBox d-flex flex-column justify-content-center align-items-center  my-4 mx-2  branchStore">
					<h5>천호점</h5>
					<hr class="w-50 solid">
					<a href="">예약하기</a>
					<a href="">테마소개</a>
					<a href="mapinfo/mapinfo.do#/cheonho">오시는길</a>
				</div>
				<div class="col-lg-2 col-md-4 col-sm-5 myBox d-flex flex-column justify-content-center align-items-center  my-4 mx-2  branchStore">
					<h5>수유점</h5>
					<hr class="w-50 solid">
					<a href="">예약하기</a>
					<a href="">테마소개</a>
					<a href="mapinfo/mapinfo.do#/suyu">오시는길</a>
				</div>
				<div class="col-lg-2"></div>
			</div>
		</div>
	</div>
	<section class="bg-white">
		<div class="container  pt-5">
			<h3 class="text-muted text-center">주의 사항</h3>
			<h5 class="text-muted text-center">안전한 문화생활을 위해 아래 준수사항을 꼭 지켜주시길 바랍니다.</h5>
			<div class="row">
				<div class="col-lg-3 col-md-6 col my-5 d-flex flex-column justify-content-center align-items-center">
					<img src="/escape/resources/img/notice01.jpg" alt="" />
					<span class="text-muted mt-5">사진촬영금지</span>
				</div>
				<div class="col-lg-3 col-md-6 col my-5 d-flex flex-column justify-content-center align-items-center">
					<img src="/escape/resources/img/notice02.jpg" alt="" />
					<span class="text-muted mt-5">위험물질 반입금지</span>
				</div>
				<div class="col-lg-3 col-md-6 col my-5 d-flex flex-column justify-content-center align-items-center">
					<img src="/escape/resources/img/notice03.jpg" alt="" />
					<span class="text-muted mt-5">안전주의</span>
				</div>
				<div class="col-lg-3 col-md-6 col my-5 d-flex flex-column justify-content-center align-items-center">
					<img src="/escape/resources/img/notice04.jpg" alt="" />
					<span class="text-muted mt-5">물질파손주의</span>
				</div>
			</div>
		</div>
	</section>
</main>
<jsp:include page="templates/footer.jsp"></jsp:include>

</body>
</html>
