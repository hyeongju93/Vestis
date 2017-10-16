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




</style>

<!-- <style type="text/css">
 a:link { color: red; text-decoration: none;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: blue; text-decoration: underline;}


</style> -->



</head>

 <style>
 
 .pager { 
 	/* float: left;  */
 	width: 100%;
 	padding-right: 20px;
 	padding-left: 25px;
 	margin: 0 auto;
 	text-align: center; }
  
 .pager ul { list-style: none; }
 
 .pager ul li { 
 	color: #808080;
  	padding-bottom: 3px;
  	padding-right: 10px; 
  	display:inline-block; }
 
 
#butn2{
width: 80px;
height: 35px;
}

#butn3{
width: 75px;
height: 35px;
}
 
 </style>

 <body>
	
    
    
    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

    <div class="container">

      <div class="bg-faded p-4 my-4">
      
      <div id="content">
			<div id="board">
				<form id="search_form" action="${pageContext.request.contextPath }/qa/search" method="get" style="text-align: center">
					<input type="text" id="kwd" name="kwd" value="${param.kwd}">
					<input type="hidden" id="currNo" name="currNo" value="1">
					
					<input type="submit" value="찾기">
				</form>
      </div>				
				<div class="col-sm-12" style="text-align:right;">
					<button type="button" id=butn2 class="btn btn-danger"  onClick="location.href='${pageContext.request.contextPath }/center/list';"><p class="hn">공지사항</p></button>
				</div>
				
		<table class="type09" id="tb">
			<tr>
				<th style="text-align: center"><p class="hn">번호</p></th>
				<th style="text-align: center"><p class="hn">제목</p></th>
				<th style="text-align: center"><p class="hn">작성자</p></th>
				<th style="text-align: center"><p class="hn">작성일</p></th>
				<th style="text-align: center"><p class="hn">&nbsp;</p></th>
			</tr>
			<c:forEach items="${fq}" var="faq">
					<tr>
						<td style="text-align: center"><p class="hn">★</p></td>
						<td style="text-align: center"><a href="${pageContext.request.contextPath }/qa/read?flag=1&no=${faq.no }&currNo=${page.currNo}&kwd=${param.kwd}"><p class="hn">${faq.title}</p></a></td>
						<td style="text-align: center"><p class="hn">${faq.nicname }</p></td>
						<td style="text-align: center"><p class="hn">${faq.regDate }</p></td>
						
						<td>
							<c:if test="${sessionScope.authUser.no==faq.personNO }">
							<a href="${pageContext.request.contextPath }/qa/delete?no=${faq.no }&currNo=${page.currNo}" class="del"><p class="hn">삭제</p></a>
							</c:if>
						</td>
						
					</tr>
					</c:forEach>
			<c:forEach items="${list}" var="vo">
					<tr>
						<td style="text-align: center"><p class="hn">${vo.rn }</td>
						<td style="text-align: center"><a href="${pageContext.request.contextPath }/qa/read?flag=1&no=${vo.no }&currNo=${page.currNo}&kwd=${param.kwd}"><p class="hn">${vo.title}</p></a></td>
						<td style="text-align: center"><p class="hn">${vo.nicname }</p></td>
						<td style="text-align: center"><p class="hn">${vo.regDate }</p></td>
						
						<td>
							<c:if test="${sessionScope.authUser.no==vo.personNO }">
							<a href="${pageContext.request.contextPath }/qa/delete?no=${vo.no }&currNo=${page.currNo}" class="del"><p class="hn">삭제</p></a>
							</c:if>
						</td>
						
					</tr>
					</c:forEach>
			
 
</table>
				<br>
				
				
				<div class="pager">
					<ul>
					
						<c:if test="${page.currNo != 1 }">
						
						<c:if test="${empty param.kwd }">
							<li><a href="${pageContext.request.contextPath }/qa/list?currNo=${page.currNo-1}"><p class="hn">◀</p></a></li>
						</c:if>
						<c:if test="${!(empty param.kwd) }">
							<li><a href="${pageContext.request.contextPath }/qa/search?currNo=${page.currNo-1}&kwd=${param.kwd}"><p class="hn">◀</p></a></li>
						</c:if>
						
						</c:if>
						
						<c:forEach var="i" begin="${page.firstNo }" end="${page.endNo }" step="1">
							<c:if test="${i != page.currNo }">
								
								<c:if test="${empty param.kwd }">
									<li><a href="${pageContext.request.contextPath }/qa/list?currNo=${i }">${i }</a></li>
								</c:if>
								<c:if test="${!(empty param.kwd) }">
									<li><a href="${pageContext.request.contextPath }/qa/search?currNo=${i }&kwd=${param.kwd}">${i }</a></li>
								</c:if>
								
							</c:if>
							<c:if test="${i == page.currNo }">
								<li class="selected" style="color:blue"><p class="hn">${i }</p></li>
							</c:if>
						</c:forEach>
						<c:if test="${page.currNo != page.pageEnd }">
						
							
						<c:if test="${empty param.kwd }">
							<li><a href="${pageContext.request.contextPath }/qa/list?currNo=${page.currNo+1}"><p class="hn">▶</p></a></li>
						</c:if>
						<c:if test="${!(empty param.kwd) }">
							<li><a href="${pageContext.request.contextPath }/qa/search?currNo=${page.currNo+1}&kwd=${param.kwd}"><p class="hn">▶</p></a></li>
						</c:if>
						
						</c:if>
					
					</ul>
				</div>				
				<div class="col-sm-12" style="text-align:right;">
					<button id=butn3 type="button" class="btn btn-primary"  onClick="location.href='${pageContext.request.contextPath }/qa/writeform?currNo=${page.currNo}';"><p class="hn">글 쓰기</p></button>
				</div>			
				
				
			</div>
		</div>



      </div>
	

   


   	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/popper/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	
	
	
	
  </body>
</html>