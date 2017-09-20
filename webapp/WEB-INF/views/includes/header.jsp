<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<c:import url="/WEB-INF/views/user/loginform.jsp"></c:import>
<style>
#head {
	/* background:#E4D0D0; */
	height:40px;
}

#inhead {
	margin-top:10px;
	
}
#loginhead {
	font-weight:bolder;
	color:#4B3838;
/* 수직 수평 정렬
		text-align:center;
	vertical-align:middle;
	*/
}
.loginhead{
	font-weight:bolder;
	color:#4B3838;
}
</style>


<div class="login_menu text-center text-heading text-shadow" id="head">
		
		<!-- 1. 로그인 화면에 마우스를 댔을 때 반응이 있게 만들기  -->
    	<div class="row" id="inhead">
    		<div class="col-md-4"></div>
  			<div class="col-md-4"></div>
  			<c:choose>
				<c:when test="${empty sessionScope.authUser }">
					<!-- 로그인 전 -->
					<div class="col-md-1">
						<a data-role="button" id="loginhead" 
							data-toggle="modal" data-target="#loginpop">로그인</a>
					</div>
					<div class="col-md-1">
						<a data-role="button" class="loginhead" href="${pageContext.request.contextPath }/user/joinform">회원가입</a>
					</div>
				</c:when>
					<c:otherwise>	
					<!-- 로그인 후 -->
					<div class="col-md-1">
						<a data-role="button" id="loginhead" >${sessionScope.authUser.nicname}님</button>
					</div>
					<div class="col-md-1">
						<a data-role="button" class="loginhead" id="logout" href="${pageContext.request.contextPath }/user/logout">로그아웃</a>
					</c:otherwise>
			</c:choose>
		
		<!-- facebook 로그아웃 -->
		<script type="text/javascript">
			$("#logout").on("click", function() {
				FB.getLoginStatus(function(response) {
					if (response.status === 'connected') {
						FB.logout();
					}
				});
				
			});	
		</script>
		
		<!-- 2. Kakao 로그아웃 만들기 -->
		<!-- 없어도 되지만 만들수 있으면 만들기  -->


	</div>
    	
    </div>
    <a href="${pageContext.request.contextPath }/main/test" class="tagline-upper text-center text-heading text-shadow text-white mt-5 d-none d-lg-block"><span style="color:white">VESTIS</span></a>
    
    
    <nav class="navbar navbar-expand-lg navbar-light bg-faded py-lg-4">
      <div class="container">
        <a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="#">Start Bootstrap</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        
        
        <ul class="navbar-nav mx-auto">
        	<li class="nav-item active px-lg-4">
            	<a class="nav-link text-uppercase text-expanded" href="index.html">my room
                <span class="sr-only">(current)</span>
              	</a>
            </li>
            <li class="nav-item px-lg-4">
              	<a class="nav-link text-uppercase text-expanded" href="about.html">codi gallery</a>
            </li>
            <li class="nav-item px-lg-4">
              	<a class="nav-link text-uppercase text-expanded" href="blog.html">market</a>
            </li>
            <li class="nav-item px-lg-4">
              	<a class="nav-link text-uppercase text-expanded" href="contact.html">service center</a>
            </li>
        </ul>
        </div>
    </nav>