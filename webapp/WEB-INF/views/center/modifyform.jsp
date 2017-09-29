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
    
    
</head>
<body>
	
	<div class="center-faded mt-4"></div>
	
    <div class="tagline-upper text-center text-heading text-shadow text-white mt-5 d-none d-lg-block"><span style="color:white">VESTIS</span></div>
    
    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

    
  <div id="container">
		
		

		<br><br><br><br>
		<div class="bg-faded p-4 my-4">
		<div id="content">
		<div id="center">
				<form class="center-form" method="post" action="${pageContext.request.contextPath}/center/modify">
					<input type="hidden" name="no" value="${centerVo.no}" />
		
		
			
				<table class="table table-strip">
<tr>
							<th colspan="2">글수정</th>
						</tr>
						<tr>
							<td class="label">제목</td>
							<td><input type="text" name="title" value="${centerVo.title}"></td>
						</tr>
						<tr>
							<td class="label">내용</td>
							<td>
								<textarea id="content" name="content">${centerVo.content}</textarea>
							</td>
						</tr>
					</table>
				
					<div class="bottom">
						<a href="${pageContext.request.contextPath}/center">취소</a>
						<input type="submit" value="수정">
					</div>
				</form>				
			</div>
		</div>

		
	</div><!-- /container -->
</div>


 <c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/popper/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>


































