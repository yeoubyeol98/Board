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
	<style type="text/css">  
		nav {
		  float: left;
		  width: 200px;
		}
		.container 
		{
			position: relative;
			width: 800px;
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
				<p><button>글쓰기</button></p>
			</section>
			<section id="category">
				<ul>
					<li>전체글보기</li>
					<li>프로그래밍</li>
					<li>일상</li>
					<li>뉴스</li>
					<li>사진</li>	
				</ul>
			</section>
		</nav>
		<section id="main" class="elem-blue">
			<p>전체글보기</p>
			<table BORDER=1 WIDTH="100%">
			  <tr>
			    <th>번호</th>
			    <th>제목</th>
			    <th>작성자</th>
			    <th>작성일</th>
			    <th>조회</th>
			  </tr>
			  <tr>
			    <td>1</td>
			    <td><a href="/board/list.do">안녕하세요^^</a></td>
			    <td>여우별</td>
			    <td>2017.02.28</td>
			    <td>13</td>
			  </tr>
			  <tr>
			    <td>2</td>
			    <td><a href="/board/list.do">오늘의 진행사항입니다.</a></td>
			    <td>여우별</td>
			    <td>2017.03.01</td>
			    <td>7</td>
			  </tr>
			  <tr>
			    <td>3</td>
			    <td><a href="/board/list.do">한번 추가해 보았습니다.</a></td>
			    <td>여우별</td>
			    <td>2017.03.02</td>
			    <td>8</td>
			  </tr>
			  <tr>
			    <td>4</td>
			    <td><a href="/board/list.do">심심하다 ㅠㅠ</a></td>
			    <td>여우별</td>
			    <td>2017.03.02</td>
			    <td>22</td>
			  </tr>
			  <tr>
			    <td>5</td>
			    <td><a href="/board/list.do">오늘의 점심메뉴는?</a></td>
			    <td>여우별</td>
			    <td>2017.03.02</td>
			    <td>30</td>
			  </tr> 
			  <tr>
			    <td>6</td>
			    <td><a href="/board/list.do">예의상 넣어보았습니다.</a></td>
			    <td>여우별</td>
			    <td>2017.03.02</td>
			    <td>1</td>
			  </tr> 
			  <tr>
			    <td>7</td>
			    <td><a href="/board/list.do">아침에 밥 안먹으면 손떨리네</a></td>
			    <td>여우별</td>
			    <td>2017.03.02</td>
			    <td>22</td>
			  </tr> 
			  <tr>
			    <td>8</td>
			    <td><a href="/board/list.do">진짜 할거 없다</a></td>
			    <td>여우별</td>
			    <td>2017.03.02</td>
			    <td>5</td>
			  </tr> 
			  <tr>
			    <td>9</td>
			    <td><a href="/board/list.do">1년 내내 쉬고싶다</a></td>
			    <td>여우별</td>
			    <td>2017.03.02</td>
			    <td>99</td>
			  </tr> 
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
