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
.top{
	margin-top:30px;
	margin-left:5px;
}
/* .carousel-control-prev-icon{
	background-image: url("/Vestis/assets/img/images.png") !important;
	
}
 */

</style>



  </head>

  <body>
	
    <div class="tagline-upper text-center text-heading text-shadow text-white mt-5 d-none d-lg-block"><span style="color:white">VESTIS</span></div>

	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>


	<div class="container" >
		<!-- 서브메뉴 -->
		<div class="sub-menu bg-faded">
			<img src="${pageContext.request.contextPath }/assets/img/s.png" width="20px" height="20px" class="top" />
			<div style="text-align:center"><img src="${pageContext.request.contextPath }/assets/img/f.jpg" class="image-circle "/>
			
		      <p>jisoo</p>
		      <p>point:100</p>
		      <p><a href="${pageContext.request.contextPath }/myroom/clothes">옷장</p>
		      
	    	
	    	</div> 
	    	
	    	<div style="text-align:center">
		
		      <p><a href="${pageContext.request.contextPath }/myroom/codibook">코디북</a></p>
		      <p><a href="${pageContext.request.contextPath }/myroom/codi">코디하기</a></p>
		      
	    	</div> 
	    
		</div>
					
					
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
				   <span style="color:black" aria-hidden="true"><h1>＜</h1></span>
				   <span class="sr-only">Previous</span>
				 </a>
				 <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
				   <span style="color:black" aria-hidden="true"><h1>》</h1></span>
				   <span class="sr-only">Next</span>
				 </a>
			</div>
	    </div>
	    
      <!-- 사진 전체틀2 -->
	  	<div class="photo bg-faded my-4">
	    	<!-- Image Carousel -->
	    	<div id="carouselExampleIndicators2" class="carousel slide" data-ride="carousel">
	        	<!-- 사진 내에 버튼 -->
				<ol class="carousel-indicators">
				  <li data-target="#carouselExampleIndicators2" data-slide-to="0" class="active" ></li>
				  <li data-target="#carouselExampleIndicators2" data-slide-to="1"></li>
				  <li data-target="#carouselExampleIndicators2" data-slide-to="2"></li>
				</ol>
				<!-- 사진 -->
				<div class="carousel-inner" role="listbox">
				  <div class="carousel-item active">
				    <img class="d-block img-fluid w-100" src="${pageContext.request.contextPath}/assets/img/k.png" alt="1">
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
				 <a class="carousel-control-prev" href="#carouselExampleIndicators2" role="button" data-slide="prev">
				   <span style="color:black" aria-hidden="true"><h1>◁</h1></span>
				   <span class="sr-only">Previous</span>
				 </a>
				 <a class="carousel-control-next" href="#carouselExampleIndicators2" role="button" data-slide="next">
				   <span style="color:black" aria-hidden="true"><h1>▶</h1></span>
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