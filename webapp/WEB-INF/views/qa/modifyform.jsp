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

#labe {
	float:left;
	width:70px;
}
#contents {
	width:700px;
	height:250px;
	
}
#titles {
	width:700px;
}

#modii{
	width: 1100px;
	position:relative;
	left: 400px;
}
</style>


</head>
<body>
	
	<div class="center-faded mt-4"></div>
	
    
    
    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

    
  <div id="container">
		

		<div class="bg-faded p-4 my-4" id="modii">
		
		<div id="content">
				<div id="board">
					<form class="board-form" method="post" action="${pageContext.request.contextPath }/qa/modify?currNo=${param.currNo }&no=${vo.no }&kwd=${param.kwd}">
						<input type="hidden" name="no" value="${qaVo.no}" />
		
		
			
				<table class="table table-strip">
<tr>
							<th colspan="2">글수정</th>
						</tr>
						<tr>
							<td id="labe" class="label">제목</td>
							<td><input id="titles" type="text" name="title" value=""></td>
						</tr>
						<tr>
							<td id="labe" class="label">내용</td>
							<td>
								<textarea id="contents" name="content"></textarea>
							</td>
						</tr>
					</table>
				
					<div class="bottom">
						<a href="${pageContext.request.contextPath}/qa/list?currNo=1">취소</a>
						<input type="submit" value="수정">
					</div>
				</form>				
			</div>
		</div>

		
	</div><!-- /container -->
	 <footer class="bg-faded text-center py-5">
      <div class="container">
        <p class="m-0">Copyright &copy; Your Website 2017</p>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/popper/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
</div>

</body>
</html>


































