<!DOCTYPE html>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html lang="ko" >
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<%@ include file="commonInclude.jsp"%>
		<style type="text/css">
		</style>
		<script type="text/javascript">
		$(document).ready(function(){
			$('textarea').autogrow({onInitialize: true});
		});
		</script>


	</head>
	<body>
		<div id="modal_wrap">
		    <h3 id="modal_title">
		    </h3>

			<div id="modal_content_wrap" class="">
				<tiles:insertAttribute name="content"/>
			</div><!-- //modal_content_wrap -->

		</div><!-- //modal_wrap -->
	</body>
</html>