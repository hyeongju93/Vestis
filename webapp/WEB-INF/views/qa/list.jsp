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
				<div class="bottom" style="text-align: right">
					<a href="${pageContext.request.contextPath }/center/list" id="new-book">공지사항</a>
				</div>
        
		<table class="table table-strip" id="tb">
			<tr>
				<th style="text-align: center">번호</th>
				<th style="text-align: center">제목</th>
				<th style="text-align: center">작성자</th>
				<th style="text-align: center">작성일</th>
				<th style="text-align: center">&nbsp;</th>
			</tr>
			<c:forEach items="${fq}" var="faq">
					<tr>
						<td style="text-align: center">★</td>
						<td style="text-align: center"><a href="${pageContext.request.contextPath }/qa/read?flag=1&no=${faq.no }&currNo=${page.currNo}&kwd=${param.kwd}">${faq.title}</a></td>
						<td style="text-align: center">${faq.nicname }</td>
						<td style="text-align: center">${faq.regDate }</td>
						
						<td>
							<c:if test="${sessionScope.authUser.no==faq.personNO }">
							<a href="${pageContext.request.contextPath }/qa/delete?no=${faq.no }&currNo=${page.currNo}" class="del">삭제</a>
							</c:if>
						</td>
						
					</tr>
					</c:forEach>
			<c:forEach items="${list}" var="vo">
					<tr>
						<td style="text-align: center">${vo.rn }</td>
						<td style="text-align: center"><a href="${pageContext.request.contextPath }/qa/read?flag=1&no=${vo.no }&currNo=${page.currNo}&kwd=${param.kwd}">${vo.title}</a></td>
						<td style="text-align: center">${vo.nicname }</td>
						<td style="text-align: center">${vo.regDate }</td>
						
						<td>
							<c:if test="${sessionScope.authUser.no==vo.personNO }">
							<a href="${pageContext.request.contextPath }/qa/delete?no=${vo.no }&currNo=${page.currNo}" class="del">삭제</a>
							</c:if>
						</td>
						
					</tr>
					</c:forEach>
			
 
</table>
				<div class="pager">
					<ul>
					
						<c:if test="${page.currNo != 1 }">
						
						<c:if test="${empty param.kwd }">
							<li><a href="${pageContext.request.contextPath }/qa/list?currNo=${page.currNo-1}">◀</a></li>
						</c:if>
						<c:if test="${!(empty param.kwd) }">
							<li><a href="${pageContext.request.contextPath }/qa/search?currNo=${page.currNo-1}&kwd=${param.kwd}">◀</a></li>
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
								<li class="selected">${i }</li>
							</c:if>
						</c:forEach>
						<c:if test="${page.currNo != page.pageEnd }">
						
							
						<c:if test="${empty param.kwd }">
							<li><a href="${pageContext.request.contextPath }/qa/list?currNo=${page.currNo+1}">▶</a></li>
						</c:if>
						<c:if test="${!(empty param.kwd) }">
							<li><a href="${pageContext.request.contextPath }/qa/search?currNo=${page.currNo+1}&kwd=${param.kwd}">▶</a></li>
						</c:if>
						
						</c:if>
					
					</ul>
				</div>				
				<div class="bottom" style="text-align: right">
					<a href="${pageContext.request.contextPath }/qa/writeform?currNo=${page.currNo}" id="new-book">글쓰기</a>
				</div>				
			</div>
		</div>



      </div>
	

   


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