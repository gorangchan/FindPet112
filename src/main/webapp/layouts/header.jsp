<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="adminMenu">
	<div class="topMenu">로그인</div>
	<div class="topMenu">회원가입</div>
	<div class="topMenu">관리자</div>
</div>

<div class="logo">
	<div>
		<a href="home"><img
			src="${pageContext.request.contextPath}/resources/images/logo12.png"
			alt="FindPet119" style="width:170px; " ></a>
	</div>

	<div>
		<img style="top: 10px; position: relative; width: 150px;  " src=" ${pageContext.request.contextPath}/resources/images/0119.png" alt="0119" >
	</div>
</div>

<div class="menuBar">
	<div></div>
	<div>
		<a class="totalMenu" href="**/main/totalInfo">유실유기종합안내</a>
	</div>
	<div>
		<a class="totalMenu" href="**/main/findings">주인을 찾아요!</a>
	</div>
	<div>
		<a class="totalMenu" href="*/main/lostProperty">잃어버렸나요?</a>
	</div>
	<div>
		<a class="totalMenu" href="*/main/infoDesk">정보마당</a>
	</div>
	<div>
		<a class="totalMenu" href="*/main/memberBoard">회원마당</a>
	</div>
	<div>
		<a class="totalMenu" href="*/main/myPage">마이페이지</a>
	</div>
	<div></div>
</div>