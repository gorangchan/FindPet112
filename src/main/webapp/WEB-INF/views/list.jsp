
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="includes/header.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>CSS Template</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.barTitle {
	background-color: #2d6bba;
	color: white;
	padding: 30px;
	font-size: 25px;
}
/* Style the side navigation */
.sidenav {
	height: 100%;
	width: 250px;
	z-index: 1;
	background-color: white;
	overflow-x: hidden;
	margin: 30px 0px;
}

/* Side navigation links */
.sidenav a {
	color: black;
	padding: 16px;
	text-decoration: none;
	display: block;
}

/* Change color on hover */
.sidenav a:hover {
	background-color: #2d6bba;
	color: white;
	font-size: 15px;
}

/* Style the content */
.layout {
	display: flex;
	position: absolute;
	left: 220px;
	justify-content: space-around;
}

able caption {
	padding: .5em 0;
}

table.dataTable th, table.dataTable td {
	white-space: nowrap;
}

table th {
	width: 100px;
}

.boardTop {
	border-top: 3px solid #2d6bba;
}

.insertBoard {
	align: rignt;
}

.contents-wrap {
	position: absolute;
	top: 350px;
	left: 550px;
	right: 100px;
}

footer {
	position: absolute;
	bottom: -150px;
	left: 0;
	right: 0;
	color: black;
}
</style>
</head>
<body>



	<div class="layout">
		<div class="sidenav">

			<div class="barTitle">습득물</div>
			<a href="#">습득물 검색</a> <a href="#">습득물 휴대폰 검색</a> <a href="#">핸드폰찾기콜센터
				검색</a>
		</div>
	</div>
	</div>
	<div class="contents-wrap">
		<div class="container">
			<c:set var="seq" value="${no }"></c:set>
			<h2>습득물 검색</h2>
			
			<div class="row">
				<div class="col-xs-12">
					<table
						summary="This table shows how to create responsive tables using Datatables' extended functionality"
						class="table table-bordered table-hover dt-responsive"
						style="width: 900px">


						<thead style="text-align: center;">
							<tr class="boardTop">
								<th>관리번호</th>
								<th style='width: 300px'>제목</th>
								<th>글쓴이</th>
								<th>등록일</th>
								<th>조회수</th>
								
							</tr>
							</thead>
						<tbody>
					<c:if test="${empty list }">
				<tr>
					<th colspan="5">데이터가 없습니다</th>
				</tr>
			</c:if>
			<c:if test="${not empty list}">
				<c:forEach var="board" items="${list }">
					<tr>
						<td>
							<%-- ${board.num} --%>${seq} <c:set var="seq" value="${seq - 1}"></c:set>
						</td>
						<c:if test="${board.delete_flag == 'y' }">
							<td colspan="4">삭제된 글입니다</td>
						</c:if>
						<c:if test="${board.delete_flag != 'y' }">
							<td title="${board.content}">
								<!-- 답변글이면 --> <c:if test="${board.re_level > 0}">
									<img src="${path}/images/level.gif" height="5"
										width="${board.re_level * 10}">
									<!-- 들여쓰기 -->
									<img src="${path}/images/re.gif">
								</c:if> <c:if test="${board.hit_cnt > 30 }">
									<img alt="" src="${path}/images/hot.gif">
								</c:if> <a
								href="${path}/view/seq/${board.seq}/pageNum/${pb.currentPage}"> ${board.title}</a>
							</td>
							<td>${board.create_userid }</td>
							<td>${board.hit_cnt }</td>
							<td>
					<fmt:formatDate value="${board.create_datetime}" pattern="yyyy-MM-dd" />				
				</td>
						</c:if>
					</tr>
				</c:forEach>
			</c:if>
			</tbody>
		</table>

					<div align="center">
						<ul class="pagination">
							<c:if test="${pb.startPage > pb.pagePerBlock}">
								<li><a
									href="${path}/list/pageNum/1?search=${board.search}&keyword=${board.keyword}">
										<span class="glyphicon glyphicon-backward"></span>
								</a></li>
								<li><a
									href="${path}/list/pageNum/${pb.startPage - 1}?search=${board.search}&keyword=${board.keyword}">
										<span class="glyphicon glyphicon-triangle-left"></span>
								</a></li>
							</c:if>
							<c:forEach var="i" begin="${pb.startPage}" end="${pb.endPage }">
								<c:if test="${i==pb.currentPage}">
									<li class="active"><a
										href="${path}/list/pageNum/${i}?search=${board.search}&keyword=${board.keyword}">${i}</a></li>
								</c:if>
								<c:if test="${i!=pb.currentPage}">
									<li><a
										href="${path}/list/pageNum/${i}?search=${board.search}&keyword=${board.keyword}">${i}</a></li>
								</c:if>
							</c:forEach>
							<c:if test="${pb.endPage < pb.totalPage}">
								<li><a
									href="${path}/list/pageNum/${pb.endPage + 1}?search=${board.search}&keyword=${board.keyword}">
										<span class="glyphicon glyphicon-triangle-right"></span>
								</a></li>
								<li><a
									href="${path}/list/pageNum/${pb.totalPage}?search=${board.search}&keyword=${board.keyword}">
										<span class="glyphicon glyphicon-forward"></span>
								</a></li>
							</c:if>
						</ul>
					</div>
					<form action="${path}/list/pageNum/1">
						<!-- 	<input  type="hidden" name="pageNum" value="1"> -->
						<select name="search">
							<c:if test="${board.search=='create_userid'}">
								<option value="create_userid" selected="selected">작성자</option>
							</c:if>
							<c:if test="${board.search=='title'}">
								<option value="title" selected="selected">제목</option>
							</c:if>
							<c:if test="${board.search=='content'}">
								<option value="content" selected="selected">내용</option>
							</c:if>
							<option value="create_userid">작성자</option>
							<option value="title">제목</option>
							<option value="content">내용</option>
						</select> <input type="text" name="keyword" value="${board.keyword}">
						<input type="submit" value="확인">
					</form>
					<a href="${path}/insertForm/nm/null/pageNum/1">게시글 입력</a>
				</div>
			</div>
		</div>
	</div>

	<footer><%@ include file="includes/footer.jsp"%></footer>
</body>
</html>



