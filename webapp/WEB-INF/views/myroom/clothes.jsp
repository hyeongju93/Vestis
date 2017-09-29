<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>clothes</title>

<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/assets/css/business-casual.css" rel="stylesheet">


<style>

.tb {
	margin-top:10px;
	margin-bottom:10px;
}

.left {
	margin-left: 20px;
}

.form-control {
	display: block;
	width: 20% !important;
	padding: .5rem .75rem;
	font-size: 1rem;
	line-height: 1.25;
	color: #495057;
	background-color: #fff;
	background-image: none;
	background-clip: padding-box;
	border: 1px solid rgba(0, 0, 0, .15);
	border-radius: .25rem;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}

</style>
</head>
<body>
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

	<div class="container">
		<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>

		<div class="container">
			<div class="row">

				<select id="selectbarh" type="text" class="form-control multiselect multiselect-icon tb left" role="multiselect">
					<option value="0" data-icon="glyphicon-picture" selected="selected">ALL</option>
					<option value="1" data-icon="glyphicon-link">OUTER</option>
					<option value="2" data-icon="glyphicon-pencil">TOP</option>
					<option value="3" data-icon="glyphicon-shopping-cart">BOTTOMS</option>
					<option value="4" data-icon="glyphicon-shopping-cart">SHOES</option>
					<option value="5" data-icon="glyphicon-shopping-cart">ACCESSORY</option>
				</select>
				
				<button type="button" onclick="location.href='add'"	style="margin-left: 35%;" class="tb">등록</button>
			</div>

			<div id="sendh" class="row"></div>	<!-- 옷사진뿌려줌 -->
		</div>
	</div>

	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

</body>

<script type="text/javascript">
$(document).ready(function(){	//all뿌려줌
   
	console.log("start");
   	
  
      $.ajax({
         
         url : "${pageContext.request.contextPath }/myroom/get",
         type : "post",

         dataType : "json",
         success : function(clothList){   
             console.log("ajax들어옴");
        
	         for(var i=0;i<clothList.length;i++){
	                  console.log(clothList[i]);
	                 render(clothList[i],"down"); 
	            }
	           /*  console.log(clothList); */
         },
         error : function(XHR, status, error) {
            console.error(status + " : " + error);
         }
     }); 
});



function render(clothVo,updown){	//사진뿌리는 틀
	var str ="";  
    str+="     <span class='col-lg-3 col-sm-12 tb '> ";
    str+="         <img class='img-thumbnail' src='${pageContext.request.contextPath }/upload/"+clothVo.dbName+"'>";
    str+="     </span>";
   
    if(updown == "up"){
       $("#sendh").prepend(str);   
    }else if(updown=="down"){
       $("#sendh").append(str);   
    } else{
       
    } 
}


$('#selectbarh').on('change',function() {	//selected box 1~5
	var num=$('#selectbarh').val();
	
	console.log(num);
	 $("#sendh").empty(); 
	 $.ajax({   
         url : "${pageContext.request.contextPath }/myroom/send",      
         type : "get",
         data : {clothNo: num},  
         dataType : 'json', 
         success : function(clothList){   
            console.log("성공");
         	console.log(clothList);
         	console.log(clothList.length);
         	  for(var i=0;i<clothList.length;i++){
                 /*  console.log(clothList[i]); */
                 render(clothList[i],"down"); 
              } 
         },
         
         error : function(XHR, status, error) {
            console.error(status + " : " + error);
         }
      });
});	
</script>
</html>