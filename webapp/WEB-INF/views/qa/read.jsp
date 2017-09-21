<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<title>Vestis</title>
<!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/assets/css/business-casual.css" rel="stylesheet">
      <style>
    #container {
      width: 70%;
      margin: 0 auto;     /* 가로로 중앙에 배치 */
      padding-top: 0%;   /* 테두리와 내용 사이의 패딩 여백 */
    }
    /* Bootstrap 수정 */
    .table > thead {
      background-color: #b3c6ff;
    }
    .table > thead > tr > th {
      text-align: center;
    }
    .table-hover > tbody > tr:hover {
      background-color: #e6ecff;
    }
    .table > tbody > tr > td {
      text-align: reft;
    }
    .table > tbody > tr > #title {
      text-align: center;
    }
     
    div > #paging {
      text-align: center;
    }
    
    
    

  </style>
    
</head>
<body>
	
	<div class="center-faded mt-4"></div>
	
    <div class="tagline-upper text-center text-heading text-shadow text-white mt-5 d-none d-lg-block"><span style="color:white">VESTIS</span></div>
    
    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

    
  <div id="container">
		
		 

		<br><br><br><br>
		<div class="bg-faded p-4 my-4">
		
		<div id="content">
			<div id="center" class="center-form">
					<table class="table table-condensed">
						<tr>
							<th colspan="2">Vestis Q&A</th>
						</tr>
						<tr>
							<td class="label">제목</td>
							<td>${vo.title }</td>
						</tr>
						<tr>
							<td class="label">내용</td>
							<td class="content">
								${vo.content }
							</td>
						</tr>
					</table>
				
					<div class="bottom" style="text-align: right">
						<c:if test="${empty param.kwd }">
						<a href="${pageContext.request.contextPath }/qa/list?currNo=${param.currNo}">글목록</a>
					</c:if>
				
					<c:if test="${!(empty param.kwd) }">
						<a href="${pageContext.request.contextPath }/qa/search?currNo=${param.currNo}&kwd=${param.kwd}">글목록</a>
					</c:if>
					
					
					<c:if test="${sessionScope.authUser.no==vo.personNO }">	
						<a href="${pageContext.request.contextPath }/qa/modifyform?no=${vo.no}&currNo=${param.currNo}&kwd=${param.kwd}">글수정</a>				
					</c:if>
				</div>
			</div>
		</div>
	</div>
</body>
</html>