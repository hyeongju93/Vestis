<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>

.sub-menu {
	width:120px;
	height:800px;
	float:left;
} 

.image-circle{
    border-radius: 50%;
    width: 90px;
    height: 90px;
    margin: 10px;
}

.clear{
	clear:both;
}

.top{
	margin-top:30px;
	margin-left:5px;
}
</style>

<!-- 서브메뉴 -->

<div class="sub-menu bg-faded">
	<a href="${pageContext.request.contextPath }/user/modifyform"><img src="${pageContext.request.contextPath }/assets/img/s.png" width="20px" height="20px" class="top" /></a>
	<div id="hyj"></div>
	<div style="text-align:center">
      <p id="userNicName">${sessionScope.authUser.nicname}</p>
      <p id="userPoint">point:${sessionScope.authUser.point}</p>
      <p><a href="${pageContext.request.contextPath }/myroom/clothes/${userNo}">옷장</a></p>
      <p><a href="${pageContext.request.contextPath }/myroom/codibook/${userNo}">코디북</a></p>
      <p><a href="${pageContext.request.contextPath }/myroom/codi/${userNo}">코디하기</a></p>
   	</div> 
   	
   
</div>

   
<script type="text/javascript">	
$(document).ready(function(){
	var mo = ${userNo};
	console.log(mo);
	$.ajax({	
		url : "${pageContext.request.contextPath }/user/image",		
			type : "post",
			data : {mo: mo},  
		 	dataType : 'json', 
			success : function(UserVo){	
				console.log(UserVo);
				console.log(UserVo.profileDBName);
				console.log(UserVo.point);
				render(UserVo.profileDBName);
				$("#userNicName").html(UserVo.nicname);
				$("#userPoint").html('point:'+UserVo.point);
				console.log("성공");
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
	});
	
	
});



function render(result){
	var str ="";
	str+="<div style='text-align:center'><img src='${pageContext.request.contextPath }/upload/"+result+"' class='image-circle' />";
	str+="</div>";
	$("#hyj").append(str);	
	
}
</script>


