
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ include file="includes/header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
.tapMenu {
padding:15px;

}
.notice {
display: flex;
justify-content: space-around;
border: 1px solid #dadada;
padding: 25px;
}
table, th, td {
	border: 1px solid #dadada;
	padding: 30px;
}

td {
	width: 300px;
	padding: 10px;
}

td, th {
    padding: 15px;
}



h2 {
	text-align: center;
	padding: 20px;
}
/* Slider */
.slick-slide {
	margin: 0px 20px;
	
	
}

.slick-slide img {
	width: 100%;
}

.slick-slider  {
	position: relative;
	display: block;
	box-sizing: border-box;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	-webkit-touch-callout: none;
	-khtml-user-select: none;
	-ms-touch-action: pan-y;
	touch-action: pan-y;
	-webkit-tap-highlight-color: transparent;
	padding: 30px;
}

.slick-list {
	position: relative;
	display: block;
	overflow: hidden;
	margin: 0;
	padding: 0;
}

.slick-list:focus {
	outline: none;
}

.slick-list.dragging {
	cursor: pointer;
	cursor: hand;
}

.slick-slider .slick-track, .slick-slider .slick-list {
	-webkit-transform: translate3d(0, 0, 0);
	-moz-transform: translate3d(0, 0, 0);
	-ms-transform: translate3d(0, 0, 0);
	-o-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0);
}

.slick-track {
	position: relative;
	top: 0;
	left: 0;
	display: block;
}

.slick-track:before, .slick-track:after {
	display: table;
	content: '';
}

.slick-track:after {
	clear: both;
}

.slick-loading .slick-track {
	visibility: hidden;
}

.slick-slide {
	display: none;
	float: left;
	height: 100%;
	min-height: 1px;
}

[dir='rtl'] .slick-slide {
	float: right;
}

.slick-slide img {
	display: block;
}

.slick-slide.slick-loading img {
	display: none;
}

.slick-slide.dragging img {
	pointer-events: none;
}

.slick-initialized .slick-slide {
	display: block;
}

.slick-loading .slick-slide {
	visibility: hidden;
}

.slick-vertical .slick-slide {
	display: block;
	height: auto;
	border: 1px solid transparent;
}

.slick-arrow.slick-hidden {
	display: none;
}
</style>
<script>
	$(function() {

	});
</script>
</head>
<body>

	<div class="container">
		<table style="width:1200px;">

			<tr>
				<td><a href=""><img
					src="${pageContext.request.contextPath}/resources/images/pet.jpg"
					></a></td>
				<td class="tapMenu"><a href=""><h3>분실물 휴대폰 찾기</h3> <br>
					<p>경찰청에서 보관중인 습득 휴대폰 정보와 한국정보통신진흥협회에서 운영하고 있는 휴대폰 찾기 서비스를 함께
						제공하고 있습니다.</p> <br> <img
					src="${pageContext.request.contextPath}/resources/images/qnb_icon1.png"
					align="right"></a></td>
				<td class="tapMenu"><a href=""><h3>분실물 신고</h3> <br>
					<p>잃어버린 물건을 온라인으로 신고 할 수 있습니다. 온라인 분실신고는 회원가입 후 가능합니다. (상단 회원가입
						이용)</p> <br> <img
					src="${pageContext.request.contextPath}/resources/images/qnb_icon2.png"
					align="right"></a></td>
				<td class="tapMenu"><a href=""><h3>1:1 문의</h3> <br>
					<p>경찰청 유실물 종합안내 서비스에 관련하여 궁금하신 사항을 1:1 문의로 남길 수 있습니다. (회원가입 필요)</p>
					<br> <img
					src="${pageContext.request.contextPath}/resources/images/qnb_icon3.png"
					align="right"></a></td>
			</tr>
	

			<tr>
				<td class="tapMenu"><a href=""><h3>유실물 포털 소개</h3> <br>
					<p>유실물 취급기관 안내 및 각 기관에서 습득한 물품을 경찰청 유실물 종합안내시스템과 연계할 수 있는 유실물
						포털 사이트에 대한 소개입니다.</p> <br> <img
					src="${pageContext.request.contextPath}/resources/images/qnb_icon4.png"
					align="right"></a></td>>
				<td class="tapMenu" colspan="2" style="border: 5px solid #96b5dc;">55577854</td>
				<td class="tapMenu"><a href="">
					<h3>도움말</h3> <br>
					<p>
						<span class="qnb_span">경찰청 유실물 종합안내 사이트의 도움말입니다. 회원가입부터 분실물
							신고 및 조회, 습득물 검색 방법을 자세히 안내해드립니다. 
					</p> <br> <img
					src="${pageContext.request.contextPath}/resources/images/qnb_icon5.png"
					align="right"></a>
				</td>
			</tr>

		</table>
	</div>


	<script src="https://code.jquery.com/jquery-2.2.0.min.js"
		type="text/javascript"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
		rel="stylesheet">

	<div class="container" style="padding:50px 0px;">
		<h2>최근 등록된 반려동물</h2>
		<section class="customer-logos slider">
			<div class="slide">
				<img
					src="https://image.freepik.com/free-vector/luxury-letter-e-logo-design_1017-8903.jpg">
			</div>
			<div class="slide">
				<img
					src="https://image.freepik.com/free-vector/3d-box-logo_1103-876.jpg">
			</div>
			<div class="slide">
				<img
					src="https://image.freepik.com/free-vector/blue-tech-logo_1103-822.jpg">
			</div>
			<div class="slide">
				<img
					src="https://image.freepik.com/free-vector/colors-curl-logo-template_23-2147536125.jpg">
			</div>
			<div class="slide">
				<img
					src="https://image.freepik.com/free-vector/abstract-cross-logo_23-2147536124.jpg">
			</div>
			<div class="slide">
				<img
					src="https://image.freepik.com/free-vector/football-logo-background_1195-244.jpg">
			</div>
			<div class="slide">
				<img
					src="https://image.freepik.com/free-vector/background-of-spots-halftone_1035-3847.jpg">
			</div>
			<div class="slide">
				<img
					src="https://image.freepik.com/free-vector/retro-label-on-rustic-background_82147503374.jpg">
			</div>
		</section>
	</div>
	<script>
		$(document).ready(function() {
			$('.customer-logos').slick({
				slidesToShow : 6,
				slidesToScroll : 1,
				autoplay : true,
				autoplaySpeed : 1500,
				arrows : false,
				dots : false,
				pauseOnHover : false,
				responsive : [ {
					breakpoint : 768,
					settings : {
						slidesToShow : 4
					}
				}, {
					breakpoint : 520,
					settings : {
						slidesToShow : 3
					}
				} ]
			});
		});
	</script>
	
	<div class="notice">
		
	<div class="notice_tab" >
	<a href="#" title="공지사항" style="font-size: 25px;">　공지사항</a>
		
	
		<ul class="tabcontent">

			<li><a href="javascript:fn_notice_detail('B0003721')"> 서버
					장비교체로 인한 오프라인점검 안내 </a></li>

			<li><a href="javascript:fn_notice_detail('B0002315')"> 서버
					재비치 작업 및 오프라인점검에 따른 서비스 중단안내 </a></li>

			<li><a href="javascript:fn_notice_detail('B0001699')"> 분양계약서
					분실신고접수증 발급과 관련 재공지 안내 </a></li>

			<li><a href="javascript:fn_notice_detail('B0001632')"> 2018
					평창올림픽 습득물 조회 공지 </a></li>

			<li><a href="javascript:fn_notice_detail('B0001580')"> 경찰청
					유실물통합포털시스템 서버점검 및 패치작업안내 </a></li>

		</ul>
		<p class="morebtn">
			<a href="javascript:fn_menuMove('/minwon/notice/noticeList.do');"
				title="공지사항 더보기"> <span class="tab_more">더보기 &gt;</span>
			</a>
		</p>
		
	</div>
	<p style="border-right:1px solid #dadada;"></p>
	<div class="notice_tab">
	<a href="#" title="공지사항" style="font-size: 25px;">　자주 묻는 질문</a>
		
	
		<ul class="tabcontent">

			<li><a href="javascript:fn_notice_detail('B0003721')"> 서버
					장비교체로 인한 오프라인점검 안내 </a></li>

			<li><a href="javascript:fn_notice_detail('B0002315')"> 서버
					재비치 작업 및 오프라인점검에 따른 서비스 중단안내 </a></li>

			<li><a href="javascript:fn_notice_detail('B0001699')"> 분양계약서
					분실신고접수증 발급과 관련 재공지 안내 </a></li>

			<li><a href="javascript:fn_notice_detail('B0001632')"> 2018
					평창올림픽 습득물 조회 공지 </a></li>

			<li><a href="javascript:fn_notice_detail('B0001580')"> 경찰청
					유실물통합포털시스템 서버점검 및 패치작업안내 </a></li>

		</ul>
		<p class="morebtn">
			<a href="javascript:fn_menuMove('/minwon/notice/noticeList.do');"
				title="공지사항 더보기"> <span class="tab_more">더보기 &gt;</span>
			</a>
		</p>
		
	</div>
	

</div>
<footer><%@ include file="includes/footer.jsp"%></footer>
</body>
</html>