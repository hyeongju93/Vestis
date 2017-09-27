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


</head>



 <body>
	
    
    
    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

    <div class="container">

      <div class="bg-faded p-4 my-4">
        
		<table class="table table-strip" id="tb">
			<tr>
				<th style="text-align: center">번호</th>
				<th style="text-align: center">제목</th>
				<th style="text-align: center">작성자</th>
				<th style="text-align: center">작성일</th>
				<th style="text-align: center">&nbsp;</th>
			</tr>
			<c:forEach items="${list }" var="vo">
				<tr>
					<td style="text-align: center">※공지※</td>
					<td style="text-align: center"><a
						href="${pageContext.request.contextPath }/center/read/${vo.no }">${vo.title }</a></td>
					<td style="text-align: center">관리자</td>
					<td style="text-align: center">${vo.regDate }</td>
					<td></td>
				</tr>
			</c:forEach>
			<%-- 	<tr>
					<th style="text-align:center">번호</th>
					<th style="text-align:center">제목</th>
					<th style="text-align:center">작성자</th>
					<th style="text-align:center">작성일</th>
					<th style="text-align:center">&nbsp;</th>
				</tr>			
				<c:forEach items="${list }" var="vo">
					<tr>
						<td>${vo.no }</td>
						<td style="text-align:center"><a href="${pageContext.request.contextPath }/center/read/${vo.no }">${vo.title }</a></td>
						<td>관리자</td>
						<td>${vo.regDate }</td>
						<td>
							
						</td>
					</tr>
				</c:forEach> --%>
		</table>
 <style>
 
 .pager { float: left; width: 100%;
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
			<div class="pager">
			<ul>
				<li><a href="">◀</a></li>
				<li><a href="">1</a></li>
				<!-- <li class="selected">1</li> -->
				<!-- <li><a href="">2</a></li> -->
				<li><a href="">▶</a></li>
			</ul>
		</div>

		<div class="bottom" style="text-align: right">
			<a href="${pageContext.request.contextPath }/qa/list?currNo=1"
				id="new-book">FAQ로 가기</a>
		</div>



      </div>


    </div>
    <!-- /.container -->

    <footer class="bg-faded text-center py-5">
      <div class="container">
        <p class="m-0">Copyright &copy; Your Website 2017</p>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/popper/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	
	
	
	
  </body>







</html>

























