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
    
    @import url(//fonts.googleapis.com/earlyaccess/hanna.css);
 	p { font-size: 18px; }
 	.hn { font-family: 'Hanna'; }
    
    
    
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

    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

    
  <div id="container">
		
		 
		<div class="bg-faded p-4 my-4">
		
		<div id="content">
			<div id="center" class="center-form">
					<table class="table table-condensed">
						<tr>
							<th colspan="2"><p class="hn">Vestis 공지사항</p></th>
						</tr>
						<tr>
							<td class="label"><p class="hn">제목</p></td>
							<td><p class="hn">${centerVo.title }</p></td>
						</tr>
						<tr>
							<td class="label"><p class="hn">내용</p></td>
							<td><p class="hn">${centerVo.content }</p></td>
						</tr>
					</table>
				
					<div class="bottom" style="text-align: right">
						<a href="${pageContext.request.contextPath }/center/list"><p class="hn">글목록</p></a>
					
					<%-- <c:if test="${authUser.no == boardVo.userNo }"> 
 						<a href="${pageContext.request.contextPath }/board/modifyform?no=${boardVo.no }">글수정</a> 
 					</c:if>  --%>
					
					
				</div>
			</div>
		</div>
	</div>
		
	</div><!-- /container -->
	
	 <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/popper/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
    
</body>
</html>		
		


































