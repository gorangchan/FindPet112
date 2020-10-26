<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="includes/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html><html><head>
<style type="text/css">
footer {
	position: absolute;
	bottom: -150px;
	left: 0;
	right: 0;
	color: black;
}
</style><meta charset="UTF-8">
<title>Insert title here</title>
<!-- <script type="text/javascript">
	$(function() {
		$('#boardListDisp').load('${path}/list/pageNum/${pageNum}');
		$('#rbdListDisp').load('${path}/replyList/seq/${board.seq}');
		$('#rInsert').click(function() {
/* 			var sendData = 'seq='+frm.seq.value+
				'&replyer='+frm.replyer.value+
				'&replytext='+frm.replytext.value; */
			var sendData = $('#frm').serialize();
			$.post('${path}/rInsert', sendData, function(data) {
				alert('댓글이 작성 되었습니다');
				$('#rbdListDisp').html(data);
				frm.replytext.value = "";
			});
		});
	});
</script> -->


</head><body>

<div class="layout">
		<div class="sidenav">
	<div class="barTitle">정보마당</div> 
  <a href="#">공지사항</a>
  <a href="#">자주하는질문</a>
  <a href="#">모바일서비스</a>
 <a href="#">유실물SNS</a>
  <a href="#">사이트맵</a>
</div>
		</div>
	</div>
</div>

<div class="contents-wrap">


<h3>공지사항</h3><br>
<p>경찰청 유실물 통합포털의 공지사항입니다.</p>
<hr style="border-bottom:3px solid #2d6bba;">

<table class="boardDetail_table" style="border:2px; width: 1200px; solid #f4f7fc;" summary="제목, 작성자, 작성일, 조회수, 내용, 첨부파일">
			<caption style="padding:70px 10px;" >${board.content}</caption>
			<colgroup>
				<col width="12%">
				<col width="20%">
				<col width="12%">
				<col width="">
				<col width="12%">
				<col width="20%">
			</colgroup>
			<tbody>
				<tr>
					<th scope="row" style="background: #f4f7fc;">제목</th>
					<td colspan="5"><strong>${board.title }</strong></td>
				</tr>
				<tr>
					<th scope="row" style="background: #f4f7fc;">작성일</th>
					<td colspan="3"><fmt:formatDate value="${board.create_datetime}" pattern="yyyy-MM-dd hh:ss" /></td>
					<th scope="row" style="background: #f4f7fc;">조회수</th>
					<td>${board.hit_cnt }</td>
				</tr>
				<tr>
					<th scope="row" style="background: #f4f7fc;">첨부파일</th>
					<td colspan="5">${board.b_file}
	                    <!-- <img src="../images/home/sub/icon_jpg.gif" alt="이미지아이콘" />
	                    <span>icogif.jpg</span> -->
	                    
	                    
					</td>
				</tr>
	            </tbody>
	    </table>


	<tr><td colspan="2">
		<a href="${path}/list/pageNum/${pageNum}" 
			class="btn btn-info" >게시글 목록</a>
		<a href="${path}/updateForm/seq/${board.seq}/pageNum/${pageNum}" 
			class="btn btn-warning" >수정</a>
		<a href="${path}/deleteForm/seq/${board.seq}/pageNum/${pageNum}" 
			class="btn btn-danger" >삭제</a>
		<a href="${path}/insertForm/nm/${board.seq}/pageNum/${pageNum}" 
			class="btn btn-success" >답글</a>
	</td>
</table>
<form action="" name="frm" id="frm">
	<input type="hidden" name="seq" value="${board.seq}">
<table class="table table-hover">
	
	<!-- 회원 게시글인 경우는 작성자는 로그인 한 사람의 이름 또는 id -->
	<tr><td>작성자</td><td><input type="text" name="create_userid" 
			value="${board.create_userid}" size="4"></td>
		<td>댓글</td><td><textarea rows="3" cols="30" 
			name="context"></textarea></td>
		<td><input type="button" value="댓글입력" id="rInsert"></td></tr>
</table>
</form>
<!-- <div id="rbdListDisp"></div>
<div id="boardListDisp"></div> -->
</div>

	<footer><%@ include file="includes/footer.jsp"%></footer>
</body>
</html>


