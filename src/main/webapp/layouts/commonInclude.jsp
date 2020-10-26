<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <title>Find Pet 119</title>
    <!-- NanumGothic-font style CSS -->

	    <link rel="shortcut icon" href="<c:url value='/resources/favicon/findpet119.ico'/>" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Meta, title, CSS, favicons, etc. -->
        <meta charset="utf-8">
        <meta name="description" content="Sites where you can find lost pets." /><%-- 간략한 페이지 설명을 쓰면됩니다.  --%>
		<%
			response.setHeader("Cache-Control","no-store");
			response.setHeader("Pragma","no-cache");
			response.setDateHeader("Expires",0);
			if (request.getProtocol().equals("HTTP/1.1")){
				response.setHeader("Cache-Control", "no-cache");
			}
		%>

		<!-- Global Styles -->
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/font.css'/>" >
		<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/font-awesome.min.css'/>" >
		<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/layout.css'/>" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/contents.css'/>" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/style.css'/>" />

		<%-- JS --%>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
		<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<c:url value='/resources/js/common.js'/>"></script>
		<!-- SPIN / 로딩 효과 -->
		<script src="<c:url value='/resources/js/spin.js'/>"></script>
		<script type="text/javascript">
			var ctx = "${pageContext.request.contextPath}";
			jQuery(function() {
				/** 로딩 동작(스피너) **/
				var spinners;
				function wrapWindowByMaskCom(){
					var _workstartCom = function() { spinners = new Spinner().spin(document.getElementById("spiner")); }
					_workstartCom();
					//화면의 높이와 너비를 구한다.
				    var maskHeight = $(window).height();
				    var maskWidth = $(window).width();
				    //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
				    $('#spiner').css({'left' : maskWidth%2, 'top' : maskHeight/2, 'position' : 'absolute'});
				    $('#mask').css({'width':maskWidth,'height':maskHeight,'position' : 'absolute', 'left' : 0, 'top' : 0, 'z-index' : 9000, 'background-color' : '#999999', 'opacity' : 0.0 });
				    //애니메이션 효과
				    $('#mask').fadeIn(200);

				}
				function wrapWindowByMaskEndCom(){
					var _workendCom = function() { spinners.stop(); }
					$('#mask').hide();
					$('#spiner').hide();

				}
				$(document).ajaxStart(function() {
					//wrapWindowByMaskCom();
				})

				$(document).ajaxError(function(data) {
					//wrapWindowByMaskEndCom();
					//fnAlert("오류가 발생하였습니다.");
				})

				// AJAX가 끝날 경우 호출할 함수를 등록
				$(document).ajaxStop(function() {
					//wrapWindowByMaskEndCom();

				})

				$("input, textarea").each(function(){ // each 사용 이유 : $("input").val()의 경우 첫번째 셀렉트된 input태그의 값만 가져옴
			 		// javascript에서는 replace('인자1', '인자2')는 첫번째 인자1에 대해서만 치환한다.
			 		// replaceAll과 같은 효과를 얻기 위해 /인자1/g 정규식을 사용한다. g: 발생할 모든 pattern에 대한 전역 검색, i: 대/소문자 구분 안함
			 		this.value = this.value.replace(/&apos;/g, "\'")
								 		   .replace(/&quot;/g, "\"")
								 		   .replace(/&amp;/g, "\&")
								 		   .replace(/&lt;/g, "\<")
								 		   .replace(/&gt;/g, "\>");
		 		});


			});
		</script>
			<div id="mask" style="display:none"></div>
			<div id="spiner"></div>
