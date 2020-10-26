<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/includes.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/resources/js/includes.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
  .totalMenu:link {
        color: white;
    }
    .totalMenu:hover {
        color: white;
    }
    .totalMenu:visited {
        color: white;
    }
    a {
        text-decoration: none;
    }

</style>
<title>Insert title here</title>
</head>
<body>

    <div class="adminMenu">
        <div class="topMenu">로그인</div>
        <div class="topMenu">회원가입</div>
        <div class="topMenu">1:1문의</div>
        <div class="topMenu">사이트맵</div>
        <div class="topMenu">관리자</div>
    </div>

    <div class="logo">
        <div><a href="/"><img src="${pageContext.request.contextPath}/resources/images/logo12.png" alt="경찰청 유실물 통합포털"></a> </div>

        <div><img src=" ${pageContext.request.contextPath}/resources/images/0119.png" alt="182"></div>
    </div>

    <div class="menuBar">
        <div></div>
        <div><a class="totalMenu" href="totalInfo.html">유실물 종합안내</a></div>
        <div><a class="totalMenu" href="findings.html">주인을 찾아요!(습득물)</a></div>
        <div><a class="totalMenu" href="lostProperty.html">잃어버렸나요?(분실물)</a></div>
        <div><a class="totalMenu" href="infoDesk.html">정보마당</a></div>
        <div><a class="totalMenu" href="memberBoard.html">회원마당</a></div>
        <div><a class="totalMenu" href="myPage.html">마이페이지</a></div>
        <div></div>
    </div>

