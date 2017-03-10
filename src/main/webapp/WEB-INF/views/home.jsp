<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>여우동굴 - home</title>
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
		<p>이곳은 여우별이 학습용으로 만든 공간입니다.</p>
		<p>수시로 수정,보안하고 있다는 점 참고해주세요.</p>
		<p>궁금한 사항이 있으시다면 아래에 있는 이메일을 통해 보내주시면 감사하겠습니다.</p>
	</div>
	<jsp:include page="layout/footer.jsp" flush="false"/> 
</body>
</html>
