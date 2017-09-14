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


<title>My room</title>

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
.photo {
	float:right;
	width:40%;
	margin-left:30px;
	padding:1rem;
	
}
.photo-size {
	float:left;
	width:40%;
	margin-left:30px;
	padding:1rem;
}
.none ul{
list-style-type: none;
}

</style>



  </head>

  <body>
	
    <div class="tagline-upper text-center text-heading text-shadow text-white mt-5 d-none d-lg-block"><span style="color:white">VESTIS</span></div>

	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>


	<div class="container" >
	
		<div class="sub-menu bg-faded none ">
		
			<div class="outter none"><img src="${pageContext.request.contextPath }/assets/img/f.jpg" class="image-circle"/>
			<ul>
		      <li>jisoo</li>
		      <li>point:100</li>
		      <h6><li>옷장</li></h6>
		      
	    	</ul>
	    	</div> 
	    	
	    	<div class="outter none">
			<ul>
		      <li>코디북</li>
		      <li>코디하기</li>
		      
	    	</ul>
	    	</div> 
	    
		</div>
					
					
	<!-- 	<table class="bg-faded" width="120"height="800" align="left">
			<tr>
			<td class="col-md-12 col-xs-12" align="center">
			<h6>&#xf013;</h6>
			<button class="w3-button w3-teal w3-xxlarge">&#xf009;</button>
            <div class="outter" style="margin-top:5px;"><img src="http://lorempixel.com/output/people-q-c-100-100-1.jpg" class="image-circle"/></div>   
            <h6>Hi Guest</h6>
            
            <h6> <a href="#" class="btn btn-default"> <font> <font> point </ font> </ font> </a></h6>
            <h6><button class="w3-button w3-round-xlarge">MY ROOM</button></h6>
            <a href="#" class="btn btn-default"> <font> <font> 기본 </ font> </ font> </a>
            <a href="#" class="btn btn-primary disabled"> <font> <font> 기본 </ font> </ font> </a>
            
            <a href="#" class="btn btn-primary btn-xs"> <font> <font> 미니 버튼 </ font> </ font> </a>
	   		</td>
			</tr>
		</table>  -->
   
					
					
		<!-- 사진 전체틀1 -->
	  	<div class="photo-size bg-faded  my-4">
	    	<!-- Image Carousel -->
	    	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
	        	<!-- 사진 내에 버튼 -->
				<ol class="carousel-indicators">
				  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				  <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				  <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol>
				<!-- 사진 -->
				<div class="carousel-inner" role="listbox">
				  <div class="carousel-item active">
				    <img class="d-block img-fluid w-100" src="${pageContext.request.contextPath}/assets/img/slide-1.jpg" alt="1">
				  <div class="carousel-caption d-none d-md-block">
				    <h3 class="text-shadow">First Slide</h3>
				    <p class="text-shadow">This is the caption for the first slide.</p>
				  </div>
				</div>
				<div class="carousel-item">
				  <img class="d-block img-fluid w-100" src="${pageContext.request.contextPath}/assets/img/c.JPG" alt="2">
				  <div class="carousel-caption d-none d-md-block">
				    <h3 class="text-shadow">Second Slide</h3>
				    <p class="text-shadow">This is the caption for the second slide.</p>
				  </div>
				</div>
				<div class="carousel-item">
				  <img class="d-block img-fluid w-100" src="${pageContext.request.contextPath}/assets/img/slide-3.jpg" alt="3">
				    <div class="carousel-caption d-none d-md-block">
				      <h3 class="text-shadow">Third Slide</h3>
				      <p class="text-shadow">This is the caption for the third slide.</p>
				    </div>
				  </div>
				</div>
				<!-- 양쪽버튼 -->
				 <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				   <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				   <span class="sr-only">Previous</span>
				 </a>
				 <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
				   <span class="carousel-control-next-icon" aria-hidden="true"></span>
				   <span class="sr-only">Next</span>
				 </a>
			</div>
	    </div>
	    
      <!-- 사진 전체틀2 -->
	  	<div class="photo bg-faded my-4">
	    	<!-- Image Carousel -->
	    	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
	        	<!-- 사진 내에 버튼 -->
				<ol class="carousel-indicators">
				  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				  <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				  <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol>
				<!-- 사진 -->
				<div class="carousel-inner" role="listbox">
				  <div class="carousel-item active">
				    <img class="d-block img-fluid w-100" src="${pageContext.request.contextPath}/assets/img/slide-1.jpg" alt="1">
				  <div class="carousel-caption d-none d-md-block">
				    <h3 class="text-shadow">First Slide</h3>
				    <p class="text-shadow">This is the caption for the first slide.</p>
				  </div>
				</div>
				<div class="carousel-item">
				  <img class="d-block img-fluid w-100" src="${pageContext.request.contextPath}/assets/img/slide-2.jpg" alt="2">
				  <div class="carousel-caption d-none d-md-block">
				    <h3 class="text-shadow">Second Slide</h3>
				    <p class="text-shadow">This is the caption for the second slide.</p>
				  </div>
				</div>
				<div class="carousel-item">
				  <img class="d-block img-fluid w-100" src="${pageContext.request.contextPath}/assets/img/slide-3.jpg" alt="3">
				    <div class="carousel-caption d-none d-md-block">
				      <h3 class="text-shadow">Third Slide</h3>
				      <p class="text-shadow">This is the caption for the third slide.</p>
				    </div>
				  </div>
				</div>
				<!-- 양쪽버튼 -->
				 <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				   <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				   <span class="sr-only">Previous</span>
				 </a>
				 <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
				   <span class="carousel-control-next-icon" aria-hidden="true"></span>
				   <span class="sr-only">Next</span>
				 </a>
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