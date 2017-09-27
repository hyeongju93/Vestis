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
    #container {
      width: 70%;
      margin: 0 auto;     /* 가로로 중앙에 배치 */
      padding-top: 0%;   /* 테두리와 내용 사이의 패딩 여백 */
    }
    /* Bootstrap 수정 */
    .table > thead {
      background-color: #b3c6ff;
    }
    .table > thead > tr > th {
      text-align: center;
    }
    .table-hover > tbody > tr:hover {
      background-color: #e6ecff;
    }
    .table > tbody > tr > td {
      text-align: reft;
    }
    .table > tbody > tr > #title {
      text-align: center;
    }
     
    div > #paging {
      text-align: center;
    }
    
    #qaii {
 
	width: 1100px;
	position:relative;
	left: 50px;
    }
    
	#textist{
	width: 900px;
	position:relative;
	left: 0px;
    }
    
    #buttt{
    position:relative;
    hight:200px;
	left: 930px;
    top:-60px;
    }
    
    #container{
    overflow:auto;
    }
    
  </style>
    
</head>
<body>
	
    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

  <div id="container">
		
		<div id="qaii" class="bg-faded p-4 my-4">
		
		<div id="content">
			<div id="center" class="center-form">
					<table class="table table-condensed">
						<tr>
							<th colspan="2">Vestis Q&A</th>
						</tr>
						<tr>
							<td class="label">제목</td>
							<td>${vo.title }</td>
						</tr>
						<tr>
							<td class="label">내용</td>
							<td class="content">
								${vo.content }
							</td>
						</tr>
						
						
					</table>
				
					<div class="bottom" style="text-align: right">
						<c:if test="${empty param.kwd }">
						<a href="${pageContext.request.contextPath }/qa/list?currNo=${param.currNo}">글목록</a>
					</c:if>
				
					<c:if test="${!(empty param.kwd) }">
						<a href="${pageContext.request.contextPath }/qa/search?currNo=${param.currNo}&kwd=${param.kwd}">글목록</a>
					</c:if>
					
					
					<c:if test="${sessionScope.authUser.no==vo.personNO }">	
						<a href="${pageContext.request.contextPath }/qa/modifyform?no=${vo.no}&currNo=${param.currNo}&kwd=${param.kwd}">글수정</a>				
					</c:if>
					
					
				</div>
			</div>
		</div>
		</div>
	</div>
		
		<div id="container">
			<div id="qaii" class="bg-faded p-4 my-4">
					<h5>*댓글*</h5>
					<textarea class="form-control" rows="3" id="textist"></textarea>
					<button type="button" class="btn btn-success" id="buttt">댓글등록</button>
					<div id="comment_view" class="bg-faded p-4 my-4"></div>
		</div>
		
			</div>
			 
			 
			 <footer class="bg-faded text-center py-5">
      <div class="container">
        <p class="m-0">Copyright &copy; Your Website 2017</p>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/popper/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
				
</body>
<script type="text/javascript">
$(document).ready(function(){
	
	  $.ajax({
	      
	      url : "${pageContext.request.contextPath }/qa/comment_view"+"?no="+${param.no},  
	      type : "post",
	      /* contentType : "application/json",   이 방식은 json으로 보낸다는 뜻
	      data : {name: ”홍길동"}, */

	       dataType : "json",
	      success : function(guestbookList){   //list-ajax에서 보낸 것을 guestbook으로 받음
	          
	    	  for(var i=0;i<guestbookList.length;i++){
	            	console.log(guestbookList[i]);
	        	   render(guestbookList[i],"down"); 
	         }  
	         console.log(guestbookList);
	          /*성공시 처리해야될 코드 작성*/
	          
	      },
	      error : function(XHR, status, error) {
	         console.error(status + " : " + error);
	      }
	  });
});
 
	$("#buttt").on("click",function(){
	event.preventDefault(); 
    var text=$('#textist').val();
    console.log(text);
    var result;
    $("#comment_view").empty(); 
    $.ajax({   
          url : "${pageContext.request.contextPath }/qa/comment"+"?no="+${param.no},    
          type : "post",
          data : {text: text},  
           dataType : "json",  
          success : function(guestbookList){   //list-ajax에서 보낸 것을 guestbook으로 받음
        	  for(var i=0;i<guestbookList.length;i++){
        		  
	            	console.log(guestbookList[i]);
	        	   render(guestbookList[i],"down"); 
	         }  
	         console.log(guestbookList);
	         $('#textist').val(" ");
          },
          error : function(XHR, status, error) {
             console.error(status + " : " + error);
          }
       });
 }); 
	
 	function render(CommentVo,updown){
		   var str ="";
		   
		   str+="   <table>";
		   str+="      <tr>";
		   str+="         <td>["+CommentVo.rn+"]</td>";
		   str+="         <td>["+CommentVo.nicname+"]</td>";
		   str+="         <td>["+CommentVo.regDate+"]</td>";
		   str+="         <td><a id='deletej' href='${pageContext.request.contextPath }/qa/codelete?commentNo="+CommentVo.no+"&centerNo="+CommentVo.centerNo+"'>삭제<a/></td>";
		   str+="			<input id='hidno' type='hidden' value='"+CommentVo.no+"'></input>"	
		   str+="			<input id='hidno' type='hidden' value='"+CommentVo.centerNo+"'></input>"		
		   str+="      </tr>";
		   str+="      <tr>";
		   str+="         <td colspan=4>["+CommentVo.content+"]</td>";
		   str+="      </tr>";
		   str+="      </tr>";
		   str+="   </table>";
		   str+="   <br/>";   
		   str+="</li>";
		   
		   if(updown == "up"){
		      $("#comment_view").prepend(str);   
		   }else if(updown=="down"){
		      $("#comment_view").append(str);   
		   } else{
			   
		   } 
 	}
		      
		   
</script>


</html>