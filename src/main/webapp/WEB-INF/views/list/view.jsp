<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>여우동굴 - view</title>
</head>
<body>
	<style type="text/css">  
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
		    text-align: center;
		}
		input{
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
		.table_left
		{
			text-align:left;
		}
		a:link { color: black; text-decoration: none;}
		a:visited { color: black; text-decoration: none;}
		a:hover { color: red; text-decoration: none; text-decoration: underline; cursor:pointer;}
	</style>
	<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
	<script>
		console.log(location.href);
		$.ajax({
		    url : "/board/textView?"+location.href.split('?')[1],
		    dataType : "json",
		    type : "post",
		    success: function(data) {    	
		    	console.log(data);
		    	var arr = data.result;
	    		$("#main_title").append(arr[0].title);
	    		$("#user_id").append(arr[0].user_id);
	    		$("#text").append(arr[0].text);
		    },
		    error:function(request,status,error){
		        alert("code:"+request.status+"\n"+"error:"+error);
		    }
		});
		function moveWrite(){
			location.href="write.do";
		}
	</script>
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
			<p>글쓰기</p>
			<table witdh="100%">
		     <tr>
		      <td align="center" witdh=50>제목</td>
		      <td class="table_left" id="main_title"></td>
		     </tr>
		     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
		    <tr>
		      <td align="center" witdh=50>작성자</td>
		      <td class="table_left" id="user_id"></td>
		     </tr>
		     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
		     <tr></tr>
		     <tr>
		      <td colspan="2"><textarea id="text" readonly="readonly" cols="125" rows="30"></textarea></td>
		      <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
		      <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
		     <tr align="center">
		       <td colspan="2"><input type="button" onclick="" value="수정">
		       <input type="button" onclick="javascript:history.back()" value="삭제">
		     </tr>
		    </table>
		</section>
	</div>
	
</body>
</html>
