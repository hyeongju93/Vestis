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
    
   <!--  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"> -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="http://www.expertphp.in/js/jquery.form.js"></script>

<style>

.co{
	display:flex;
	width:80%;
	height:600px;
	float:left;
	margin:50px;
	 
}

.ro {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-wrap: wrap;
      flex-wrap: wrap;
}

.lo{
	margin:20px;
	float:left;
}

 #formdiv {
  text-align: center;
}
#file {
  color: green;
  padding: 5px;
  border: 1px dashed #123456;
  background-color: #f9ffe5;
}
#img {
  width: 17px;
  border: none;
  height: 17px;
  margin-left: -20px;
  margin-bottom: 191px;
}
.upload {
  width: 100%;
  height: 30px;
}
.previewBox {
  text-align: center;
  position: relative;
  width: 150px;
  height: 150px;
  margin-right: 10px;
  margin-bottom: 20px;
  float: left;
}
.previewBox img {
  height: 150px;
  width: 150px;
  padding: 5px;
  border: 1px solid rgb(232, 222, 189);
}
.delete {
  color: red;
  font-weight: bold;
  position: absolute;
  top: 0;
  cursor: pointer;
  width: 20px;
  height:  20px;
  border-radius: 50%;
  background: #ccc;
} 

.imgSize{
	width:400px;
	height:400px;
}


</style>


</head>
<body>

	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

	<div class="container" >
		
		<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>
	  	
		<div class=" co bg-faded p-4 my-4 ro">
		    <div class="lo">
			<select type="text" id="clothNum"	class="form-control left" role="multiselect">
				<option value="0"   selected="selected">옷 분류</option>
				<option value="1" >외투</option>
				<option value="2" >상의</option>
				<option value="3" >하의</option>
				<option value="4" >신발</option>
				<option value="5" >악세사리</option>
			</select>
			</div>
		
			 <form action="${pageContext.request.contextPath }/myroom/upload/${sessionScope.authUser.no}" method="post" enctype="multipart/form-data" >
			  <div class="lo">
			      <input type="file" class="form-control" id="images" name="file" onchange="preview_images();"/>
			      <input id="valh" name="valh" type="text" ></input>   <!-- 옷종류번호 -->
			      <input type="text" name="huserNo" value="${sessionScope.authUser.no}"></input>
			  </div>
			  <div class="lo">
			      <input type="submit" class="btn btn-primary" name='submit_image' value="submit"/>
			  </div>
			  
			
				<script type="text/javascript">
					function preview_images() 
					{
				 		var total_file=document.getElementById("images").files.length;
				 		for(var i=0;i<total_file;i++){
				  			$('#image_preview').append("<div class='col-md-3'><img class='imgSize' src='"+URL.createObjectURL(event.target.files[i])+"'></div>");
				 		}
					}
				</script>
    		 </form>
			 
			<script type="text/javascript">
			$('#clothNum').blur(function() {
				   var val=$('#clothNum').val();
				   console.log(val);
				   $('#valh').val(val);
				   });
			</script>
		 	<div class="row" id="image_preview"></div>
         
		</div>
	</div>
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
 	

</body>
</html>