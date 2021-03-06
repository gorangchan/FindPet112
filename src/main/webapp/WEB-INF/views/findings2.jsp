
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
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
	align:rignt;
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
	</div>

	<div class="contents-wrap">

		<div class="container">
			<h2>습득물 검색</h2>
			<br>
			<div class="row">
				<div class="col-xs-6">
					<table
						summary="This table shows how to create responsive tables using Datatables' extended functionality"
						class="table table-bordered table-hover dt-responsive">

						<thead style="text-align: center;">
							<tr class="boardTop">
								<th>관리번호</th>
								<th>제목</th>
								<th>글쓴이</th>
								<th>연락처</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody>
							
								
								<tr>
									<th>1</th>
									<th>2</th>
									<th>3</th>
									<th>4</th>
									<th>5</th>
								</tr>
								<tr>
									<th>1</th>
									<th>2</th>
									<th>3</th>
									<th>4</th>
									<th>5</th>
								</tr>
							
							
						</tbody>
					</table>
				</div>
			</div>
			<footer><%@ include file="includes/footer.jsp"%></footer>

		</body>
</html>
