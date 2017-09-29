<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Vestis</title>

<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


<!-- Custom fonts for this template -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/assets/css/business-casual.css" rel="stylesheet">

<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
 p { font-size: 18px; }
 .hn { font-family: 'Hanna'; }

table.type09 {
    border-collapse: collapse;
    text-align: center;
    line-height: 1.5;

}
table.type09 thead th {
    padding: 10px;
    font-weight: bold;
    vertical-align: center;
    color: #369;
    border-bottom: 3px solid #036;
}
table.type09 tbody th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: center;
    border-bottom: 7px solid #ccc;
    background: #f3f6f7;
}
table.type09 td {
    width: 350px;
    padding: 10px;
    vertical-align: center;
    border-bottom: 7px solid #ccc;
    white-space:nowrap;
}

#butn1{
width: 100px;
height: 35px;
}


</style>


</head>

 <body>
	
    
    
    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

    <div class="container">

      <div class="bg-faded p-4 my-4">
        
		<table class="type09" id="tb">
			<tr>
				<th style="text-align: center"><p class="hn">번호</p></th>
				<th style="text-align: center"><p class="hn">제목</p></th>
				<th style="text-align: center"><p class="hn">작성자</p></th>
				<th style="text-align: center"><p class="hn">작성일</p></th>
				<th style="text-align: center"><p class="hn">&nbsp;</p></th>
			</tr>
			<c:forEach items="${list }" var="vo">
				<tr>
					<td ><p class="hn">※공지※</p></td>
					<td ><p class="hn"><a href="${pageContext.request.contextPath }/center/read/${vo.no }">${vo.title }</a></p></td>
					<td ><p class="hn">관리자</p></td>
					<td ><p class="hn">${vo.regDate }</p></td>
					<td></td>
				</tr>
			</c:forEach>
			
		</table>
 <style>
 
 .pager { /* float: left; */ width: 100%;
 			 padding-right: 20px;
 			 padding-left: 25px;
 			 margin: 0 auto;
 			 text-align: center; }
  
 .pager ul { list-style: none; }
 
 .pager ul li { color: #808080;
  				 padding-bottom: 3px;
  				  display:inline-block; padding-right: 10px; }
 
 </style>
 
 <!-- width: 0px; margin:0 auto; -->
			
			<br>
			<div class="pager">
			<ul>
				<li><a href=""><p class="hn">◀</p></a></li>
				<li><a href=""><p class="hn">1</p></a></li>
				<li><a href=""><p class="hn">▶</p></a></li>
			</ul>
		</div>
		
		<div class="col-sm-12" style="text-align:right;">
		<p>
		<button id=butn1 type="button" class="btn btn-danger btn-sm"  onClick="location.href='${pageContext.request.contextPath }/qa/list?currNo=1';"><p class="hn">FAQ로가기</p></button>
		</p>
		</div>




      </div>


    </div>
    <!-- /.container -->

    <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/popper/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	
	
	
	
  </body>







</html>

























