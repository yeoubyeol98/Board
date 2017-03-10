<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>여우동굴 - list</title>
</head>
<body>
	<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
	<script>
		$.ajax({
		    url : "/board/getJsonByMap",
		    dataType : "json",
		    type : "get",
		    success: function(data) {    	
		    	console.log(data);
		    	var arr = data.result;
		    	for(var i in arr){
		    		$("#listView").append("<tr bgcolor='#dddddd'><td colspan='5'></td></tr>");
		    		$("#listView").append("<tr>");
		    		$("#listView").append("<td width=35 style='text-align: right;'>"+arr[i].id+"</td>");
		    		$("#listView").append("<td style='text-align: left;'><a onclick='moveView("+arr[i].id+")'>"+arr[i].title+"</td>+</a>");
		    		$("#listView").append("<td style='text-align: left; padding-left: 20px;'>"+arr[i].user_id+"</td>");
		    		$("#listView").append("<td style='text-align: center;' width=90>"+arr[i].reg_date+"</td>");
		    		$("#listView").append("<td style='text-align: right;' width=35>"+arr[i].views+"</td>");
		    		$("#listView").append("</tr>");		    		
		    	}
		    	$("#listView").append("<tr bgcolor='#dddddd'><td colspan='5'></td></tr>");
		    },
		    error:function(request,status,error){
		        alert("code:"+request.status+"\n"+"error:"+error);
		    }
		});
		function moveWrite(){
			location.href="write.do";
		}
		function moveView(s){
			location.href="view.do?id="+s;
		}
	</script>
	<style type="text/css">  
		a:link { color: black; text-decoration: none;}
		a:visited { color: black; text-decoration: none;}
		a:hover { color: red; text-decoration: none; text-decoration: underline; cursor:pointer;}
		nav {
		  float: left;
		  width: 200px;
		}
		.container 
		{
			position: relative;
			width: 1200px;
  			margin: 0 auto;
		    min-width: 400px;
		    overflow: auto;
		}
		.elem-blue{border:1px solid blue;}
		#main
		{
			margin-left: 200px;
			border:1px solid green; 
			text-align: center;
		}
		th,td {
			padding-right: 10px;
		    padding-left: 10px;		    
		}
		.nave{margin: 0px 0x 10px 0px;}
		section{
			padding-left: 10px;
			padding-right: 10px;
			margin-bottom: 10px;
			margin-right: 10px;
		}
		#info-data
		{
			border:1px solid red; 
			text-align: center;
		}
		#category
		{
			border:1px solid blue; 
		}
	</style>
	<jsp:include page="../layout/menu.jsp" flush="false"/>
	<div class="container">
		<nav>
			<section id="info-data">
				<p>여우별<br>(yeoubyeol98)</p>
				<p><button onclick="moveWrite()">글쓰기</button></p>
			</section>
			<section id="category">
				<ul>
					<li><a href="/board/list.do">전체글보기</a></li>
					<li>프로그래밍</li>
					<li>일상</li>
					<li>뉴스</li>
					<li>사진</li>	
				</ul>
			</section>
		</nav>
		<section id="main" class="elem-blue">
			<h2>전체글보기</h2>
			<table WIDTH="100%">
				<tbody id="listView">
				  <tr bgcolor='#aaaaaa'><td colspan='5'></td></tr>
				  <tr>
				    <th style="text-align: center;">번호</th>
				    <th style="text-align: center;">제목</th>
				    <th style="text-align: left;">작성자</th>
				    <th style="text-align: center;">작성일</th>
				    <th style="text-align: center;">조회</th>
				  </tr>
			  </tbody>
			</table>
			<br>
			<input type="text" id="name">
			<input type="submit" value="검색">	
			<p>1 2 3 4 5 다음</p>
		</section>
	</div>
	<jsp:include page="../layout/footer.jsp" flush="false"/>
</body>
</html>
