<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>read</title>
</head>
<body>


 <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>


    <div class="container">

    	<div class="bg-faded p-4 my-4">
		
			
		
		
		<div id="content">
			<div id="board">
				<form class="board-form" method="post" action="${pageContext.request.contextPath }/market/write">
			
					<table class="table table-condensed">
						<tr>
							<th colspan="2">market</th>
						</tr>
						<tr>
							<td id="hjs">
							
							</td>
						</tr>
						<tr>
							<td id="labe" class="label">제목</td>		
							<td><input id="titles" type="text" name="title" value=""></td>
						</tr>
						
						<tr>
							<td id="labe" class="label">내용</td>
							<td>
								<textarea id="contents" name="content"></textarea>
								<input type="text" name="person_no" value="${sessionScope.authUser.no}" >
								<input type="text" name="cloth_no" id="hjss" value="" >
								
							</td>
						</tr>
					</table>
					
					
					<div class="bottom" style="text-align: center">
						<a href="${pageContext.request.contextPath }/market/list?currNo=1">취소</a>
						
					</div>
				</form>				
			</div>
		</div>
		

    	</div>
	</div>
	
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>


</body>
</html>