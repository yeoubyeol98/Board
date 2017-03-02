<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>여우동굴 - portfolio</title>
</head>
<body>
	<style type="text/css">
		#main
		{
			width: 800px;
			margin: 0 auto;
		}
	</style>
	<jsp:include page="layout/menu.jsp" flush="false"/>
	<div id="main">
		<p>포트폴리오 페이지입니다.</p>
	</div>
	<jsp:include page="layout/footer.jsp" flush="false"/>
</body>
</html>
