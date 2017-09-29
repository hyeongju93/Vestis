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


</style>

<!-- 서브메뉴 -->
<div class="sub-menu bg-faded ">
	<img src="${pageContext.request.contextPath }/assets/img/s.png" width="20px" height="20px" class="top" />
	<div style="text-align:center"><img src="${pageContext.request.contextPath }/assets/img/f.jpg" class="image-circle "/>
	
      <p>jisoo</p>
      <p>point:100</p>
      <p><a href="${pageContext.request.contextPath }/myroom/clothes">옷장</a></p>
      
   	
   	</div> 
   	
   	<div style="text-align:center">

      <p><a href="${pageContext.request.contextPath }/myroom/codibook">코디북</a></p>
      <p><a href="${pageContext.request.contextPath }/myroom/codi">코디하기</a></p>
      
   	</div> 
   
</div>

