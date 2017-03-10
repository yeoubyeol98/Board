<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>여우동굴 - shop</title>
</head>
<body>
	<style type="text/css">
		#main
		{
			width: 1200px;
			margin: 0 auto;
		}
	</style>
	<jsp:include page="layout/menu.jsp" flush="false"/>
	<div id="main">
		<p>쇼핑몰 페이지입니다.</p>
	</div>
	<jsp:include page="layout/footer.jsp" flush="false"/>
</body>
</html>
