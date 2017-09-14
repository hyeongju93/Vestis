<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>codibook</title>

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
	width:20%;
	hrigh:100px;
	margin-left:30px;
	padding:1rem;
	
}
.photo-size {
	float:left;
	width:20%;
	heght:2rem;
	margin-left:30px;
	padding:1rem;
} 
.none ul{
	list-style-type: none;
}
.top{
	margin-top:1.5rem;
}
.center{
  position: absolute;
    left: 0;
    width: 100%;
    text-align: center;
    font-size: 18px;
}
</style>

</head>
<body>

  <div class="tagline-upper text-center text-heading text-shadow text-white mt-5 d-none d-lg-block"><span style="color:white">VESTIS</span></div>

	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>


	<div class="container" >
	
		<div class="sub-menu bg-faded none ">
			<div style="text-align:center"><img src="${pageContext.request.contextPath }/assets/img/f.jpg" class="image-circle top"/>
		      <p>jisoo</p>
		      <p>point:100</p>
		      <p>옷장</p>
	    	</div> 
	    	
	    	<div style="text-align:center">
		      <p><a href="${pageContext.request.contextPath }/myroom/codibook">코디북</a></p>
		      <p><a href="${pageContext.request.contextPath }/myroom/codi">코디하기</a></p>
	    	</div> 
		</div>
	
		<div class="top center">
			<fieldset >
				<label>All</label> <input type="radio" name="gender" value="HTML" checked="checked">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<label>My Codi</label> <input type="radio" name="gender" value="HTML">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  	<label>Other Codi</label> <input type="radio" name="gender" value="HTML">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  	<label>System</label> <input type="radio" name="gender" value="male">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 	</fieldset>
	 	</div>
		<div class="photo-size bg-faded my-4">
		
		</div>


	</div>
</body>
</html>