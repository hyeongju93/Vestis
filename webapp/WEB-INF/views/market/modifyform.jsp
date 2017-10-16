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
	width:900px;
	height:250px;
	
}
#titles {
	width:900px;
}

.white_content {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background: rgba(0, 0, 0, 0.8);
    opacity:0;
    -webkit-transition: opacity 400ms ease-in;
    -moz-transition: opacity 400ms ease-in;
    transition: opacity 400ms ease-in;
    pointer-events: none;
}
.white_content:target {
    opacity:1;
    pointer-events: auto;
}
.white_content > div {
	position: absolute;
	top: 15%;
	left: 25%;
	width: 50%;
	height: 60%;
	padding: 16px;
	border: 16px solid orange;
	background-color: white;
	overflow: auto;	
}

</style>
</head>
<body>

    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>


    <div class="container">

    	<div class="bg-faded p-4 my-4">
		
			<p>팔 옷을 선택하시려면 <a href="#open">여기</a> 를 클릭하십시오.</p>
    		<div class="white_content" id="open">
        		<div>
            		<a href="#close">닫기</a>
            		<form id="gog" action='#close'>
            			<input type='hidden'>
            		</form>
            		<div id="sendh" class="row">
            
            	</div>    
        	</div>
    	</div>
		
		
		<div id="content">
			<div id="board">
				<form class="board-form" method="post" action="${pageContext.request.contextPath }/market/modify?currNo=${param.currNo }&no=${vo.no }&kwd=${param.kwd}">
					
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
							<td><input id="titles" type="text" name="title" value="${vo.title}"></td>
						</tr>
						
						<tr>
							<td id="labe" class="label">내용</td>
							<td>
								<textarea id="contents" name="content">${vo.content}</textarea>
								<input type="text" name="cloth_no" id="hjss" value="" >
								<input type="text" name="no" value="${vo.no}" >
							</td>
						</tr>
					</table>
					
					
					<div class="bottom" style="text-align: center">
						<a href="${pageContext.request.contextPath }/market/list?currNo=1">취소</a>
						<input type="submit" value="등록" style="text-align: right">
					</div>
				</form>				
			</div>
		</div>
		

    	</div>
	</div>
	
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	
</body>





<script type="text/javascript">
$("#sendh").on("click", "img", function(){
	$("#hjs").empty();
	var selectedImgURL = $(this).attr("src");
	console.log(selectedImgURL);
	lol(selectedImgURL);
	
	var res = selectedImgURL.split('/');
	var dbName=res[3];
	console.log(dbName);
	
	$.ajax({
    	url : "${pageContext.request.contextPath }/market/dbdb",
        type : "post",
		data: {dbName:dbName},
        dataType : "json",
        success : function(result){   
	        console.log("ajax들어옴");
        	$('#hjss').val(result);
	         
	           /*  console.log(clothList); */
        },
        error : function(XHR, status, error) {
        	console.error(status + " : " + error);
        }
     }); 
 	alert("등록 되었습니다.") 
/*   $('#gog').submit();   */
	
});
 


$(document).ready(function(){	//all뿌려줌
	var no="4";
	console.log("start");
   	
	var mo = ${vo.cloth_no};
	$('#hjss').val(mo);
	console.log(mo);
	$.ajax({	
		url : "${pageContext.request.contextPath }/market/image",		
			type : "post",
			data : {mo: mo},  
		 	dataType : 'json', 
			success : function(saveName){	
				modify_render(saveName);
				console.log("성공");
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
	});
  	
    $.ajax({
    	url : "${pageContext.request.contextPath }/myroom/get",
        type : "post",
		data: {no:no},
        dataType : "json",
        success : function(clothList){   
	        console.log("ajax들어옴");
        
	         for(var i=0;i<clothList.length;i++){
		         console.log(clothList[i]);
	             render(clothList[i],"down",i); //i는 이미지번호
	         }
	           /*  console.log(clothList); */
        },
        error : function(XHR, status, error) {
        	console.error(status + " : " + error);
        }
     }); 
});


function render(clothVo,updown,i){	//사진뿌리는 틀
	var str ="";  

	str+="<a href='#close' class='col-lg-3 col-sm-12 tb ' onclick='return false;'>"; 
	str+="	<img id='"+i+"' class='img-thumbnail' src='${pageContext.request.contextPath }/upload/"+clothVo.dbName+"'>";
	str+="</a>";
    
    if(updown == "up"){
       $("#sendh").prepend(str);   
    }else if(updown=="down"){
       $("#sendh").append(str);   
    } else{
       
    } 
}

function lol(result){	//사진뿌리는 틀
	var str ="";  
	str+="<img src='"+result+"' width='60px' height='60px'>";
	
	
	$("#hjs").append(str);   
     
}

function modify_render(saveName){
	var str ="";  
	str+="<img src='${pageContext.request.contextPath }/upload/"+saveName+"' width='60px' height='60px'>";
	
	
	$("#hjs").append(str);
	
	}
</script>
</html>






























