<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>add</title>

	<!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/assets/css/business-casual.css" rel="stylesheet">

<style>
.sub-menu {
	width:120px;
	height:800px;
	float:left;
} 
.co{
	display:flex;
	width:80%;
	height:400px;
	float:left;
	margin:50px;
	 
}

.ro {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
}
</style>


<script>
function preview_images() 
{
 var total_file=document.getElementById("images").files.length;
 for(var i=0;i<total_file;i++)
 {
  $('#image_preview').append("<div class='col-md-3'><img class='img-responsive' src='"+URL.createObjectURL(event.target.files[i])+"'></div>");
 }
}
</script>
</head>
<body>

	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

	<div class="container" >
		<!-- 서브메뉴 -->
		<div class="sub-menu bg-faded">
			<img src="${pageContext.request.contextPath }/assets/img/s.png" width="20px" height="20px" class="top" ></img>
			<div style="text-align:center"><img src="${pageContext.request.contextPath }/assets/img/f.jpg" class="image-circle "/>
		      <p>jisoo</p>
		      <p>point:100</p>
		      <p><a href="${pageContext.request.contextPath }/myroom/clothes">옷장</p>
	    	</div> 
	  	</div>
	  	
	  	 <div class=" co bg-faded p-4 my-4 ro">
        
        	<select type="text"	class="form-control   tb left" role="multiselect">
				<option value="0"   selected="selected">최신순</option>
				<option value="1" >채택순</option>
				<option value="2" >좋아요순</option>
				<option value="3" >Cart</option>
			</select> 
			
			
			
		
		 <form action="multiupload.php" method="post" enctype="multipart/form-data">
		  <div class="col-md-6">
		      <input type="file" class="form-control" id="images" name="images[]" onchange="preview_images();" multiple/>
		  </div>
		  <div class="col-md-6">
		      <input type="submit" class="btn btn-primary" name='submit_image' value="Upload Multiple Image"/>
		  </div>
		 </form>
		
		 <div class="row" id="image_preview"></div>

 
     	
         </div>

<%-- <div class="container">

	
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
               <td style="text-align: center">${vo.no }</td>
               <td style="text-align: center"><a
                  href="${pageContext.request.contextPath }/center/read/${vo.no }">${vo.title }</a></td>
               <td style="text-align: center">관리자</td>
               <td style="text-align: center">${vo.regDate }</td>
               <td></td>
            </tr>
         </c:forEach>
 

    </div> --%>



		
		
	</div>

<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
 	

</body>
</html>