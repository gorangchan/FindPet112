<!DOCTYPE html>

<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<html lang="ko">
<head>
<%@ include file="commonInclude.jsp"%>
</head>
<body>

	<form id="menuForm"></form>
	<form id="hiddenForm"></form>
	
	<header>
		<tiles:insertAttribute name="header" />
	</header>
    <div>
		<main class="main" id="contents">
    		<div class="container" style="padding: 20px">
            <div id="content">
				<tiles:insertAttribute name="content"/>
			</div>
			</div>
        </main>
	</div>
	<!-- Footer -->
	<footer>
		<tiles:insertAttribute name="footer" />
	</footer>
		
        
        <%--  --%>
        <!-- <!--========== END FOOTER ==========-->
</body>
</html>
