<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/vendor/jquery/jquery-1.12.4.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<style>
/* 나가기 버튼 */
#btnn {
	background:#404040;
	
}
/* 페이스북 버튼 */
#loginBtnn {
	/* width:290px;*/
	height:38px; 
	margin-bottom:5px;

} 

#kakao-login-btn {
	width:180px;
}
.modal-title {
	font-weight:bold;
}

#sty {
	height:25px;
	margin-bottom:5px;
}



</style>
<script id="facebook-jssdk" src="//connect.facebook.com/ko_KR/sdk.js"></script>
<div class="modal fade" id="loginpop">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
      <div class="container">   	
		
        <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button> -->
        <div class="row">
        	<div class="col-md-5">
        	</div>
        	<div class="col-md-4">
        		<h4 class="modal-title" >로그인</h4>
        	</div>	
        	<div class="col-md-2">
        	</div>
        	
        	<div class="col-md-1">
        		<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        	</div>	
       </div>
        			
      </div>
      </div>
      <div class="modal-body">
				<form id="loginForm" method="POST" action="${pageContext.request.contextPath }/main/test"
					novalidate="novalidate">
					<div class="form-group">
						<label for="username" class="control-label">UserEmail</label> 
						<input type="text" class="form-control" id="username" name="username"
							value="" required="" title="Please enter you username" placeholder="example@gmail.com">
						<span class="help-block"></span>
					</div>
					<div class="form-group">
						<label for="password" class="control-label">Password</label> <input
							type="password" class="form-control" id="password"
							name="password" value="" required=""
							title="Please enter your password" placeholder="Password"> <span
							class="help-block"></span>
					</div>
					<p id="sty">
						<tr style="height:25px"><td class="td-find">잊으셨나요? <span class="blue"><a href="#">아이디/비밀번호 찾기</a></span></td></tr>
					</p>
					<p style="height:25px">
						<tr><td class="td-find">아직 Vestis 회원이 아니신가요? <span class="blue"><a href="${pageContext.request.contextPath }/user/joinform">간편가입하기</a></span></td></tr>
					</p>		
	
					<button id="loginbtn" type="button" class="btn btn-success btn-block">로그인</button>
					<button type="button" class="btn btn-primary btn-block" id="loginBtnn">페이스북 로그인</button>
					<a id="kakao-login-btn"></a>
					<!-- 1. 카카오톡 버튼 바꾸기 일치되는 느낌을 주는 아이콘으로 바꾸기  -->
					
	<!-- 카카오톡 로그인 API -->				
    <script type='text/javascript'>
    //<![CDATA[
      // 사용할 앱의 JavaScript 키를 설정해 주세요.
      Kakao.init('1ab5acd034bd6a05a591695dce2ff3e3');
      // 카카오 로그인 버튼을 생성합니다.
      Kakao.Auth.createLoginButton({
        container: '#kakao-login-btn',
        success: function(authObj) {
           //로그인 성공시 api호출합니다. 
           Kakao.API.request({
              url: '/v1/user/me',
                success: function(res) {
                  /* alert(JSON.stringify(res)); */
                  console.log(JSON.stringify(res));
                  $("#email").text("이메일 : "+res.kaccount_email);
                  $("#profile").append($("<img/>",{"src":res.properties.profile_image}));
                  $("#nickname").text("닉네임 : "+res.properties.nickname);
                  
                  var name=res.properties.nickname;
                  var email=res.kaccount_email;
                  var id=res.id;
                  var result;
                  
                  
                  console.log(name);
                  $.ajax({	
          			url : "${pageContext.request.contextPath }/user/snslogin",		
          			type : "post",
          			data : {name: name,email: email,id: id},  
          		 	dataType : 'text', 
          			success : function(result){	//list-ajax에서 보낸 것을 guestbook으로 받음
          				/* console.log("성공"); */
          				alert("로그인에 성공하였습니다.");
          				$('#move').submit();
          				
          				/* if(result==0){
          					alert("로그인에 실패했습니다.");
          					return false;
          				} else {
          					alert("로그인에 성공하였습니다.");
          					$('#loginForm').submit();
          					
          			 			
          				} */
          				
          			},
          			error : function(XHR, status, error) {
          				console.error(status + " : " + error);
          			}
          		});
                  
                },
                fail: function(error) {
                  alert(JSON.stringify(error));
                }
              });
            },
        fail: function(err) {
           alert(JSON.stringify(err));
        }
      });
      
    //]]>
  </script>
    
					

<!-- 페이스북 로그인 API  -->
<script>
function getUserData() {
    /* FB.api('/me', function(response) {
        document.getElementById('response').innerHTML = 'Hello ' + response.name;
        console.log(response);
    }); */
    FB.api('/me', {fields: 'name,email,gender,birthday'}, function(response) {
        console.log(JSON.stringify(response));
        var name=response.name;
        var email=response.email;
        var id=response.id;
        var result;
  
        
        console.log(name);
        $.ajax({	
			url : "${pageContext.request.contextPath }/user/snslogin",		
			type : "post",
			data : {name: name,email: email,id: id},  
		 	dataType : 'text', 
			success : function(result){	//list-ajax에서 보낸 것을 guestbook으로 받음
				
			/* 	alert("로그인에 성공하였습니다."+result); */
  			/* 	$('#move').submit(); */
				 if(result==0){
					alert("로그인에 실패했습니다.");
					return false;
				} else if (result==1){
					alert("로그인에 성공하였습니다.");
      				$('#move').submit();
				} else {
					
				}
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
    });
}
  
window.fbAsyncInit = function() {
    //SDK loaded, initialize it
    FB.init({
        appId      : '946510852170558',
        cookie     : true,  // enable cookies to allow the server to access
                // the session
        xfbml      : true,  // parse social plugins on this page
        version    : 'v2.10' // use graph api version 2.8
    });
  
    //check user session and refresh it
    FB.getLoginStatus(function(response) {
        if (response.status === 'connected') {
            //user is authorized
            //document.getElementById('loginBtn').style.display = 'none';
            getUserData();
        } else {
            //user is not authorized
        }
        
        
    });
};
  
//load the JavaScript SDK
(function(d, s, id){
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.com/ko_KR/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
  
//add event listener to login button
document.getElementById('loginBtnn').addEventListener('click', function() {
    //do the login
    FB.login(function(response) {
        if (response.authResponse) {
            access_token = response.authResponse.accessToken; //get access token
            user_id = response.authResponse.userID; //get FB UID
            console.log("성공")
            console.log('access_token = '+access_token);
            console.log('user_id = '+user_id);
            $("#access_token").text("접근 토큰 : "+access_token);
            $("#user_id").text("FB UID : "+user_id);
            //user just authorized your app
            //document.getElementById('loginBtn').style.display = 'none';
            getUserData();
        }
    }, {scope: 'email,public_profile,user_birthday',
        return_scopes: true});
}, false);
</script>

				</form>
				
				<!-- 로그인 관련  -->
				<script type="text/javascript">	
				$("#loginbtn").on("click",function(){
					var email=$('#username').val();
					var password=$('#password').val();
					console.log(email);
					console.log(password);
					var result;
					 $.ajax({	
							url : "${pageContext.request.contextPath }/user/login",		
							type : "post",
							data : {email: email,password:password},  
						 	dataType : "json",  
							success : function(result){	//list-ajax에서 보낸 것을 guestbook으로 받음
								console.log("성공");
								console.log(result);
								if(result==0){
									alert("아이디와 비밀번호가 맞지 않습니다.");
									return false;
								} else if(result==1) {
									alert("로그인에 성공하였습니다.");
									$('#loginForm').submit();
								} else {
									
									
								}
								
							},
							error : function(XHR, status, error) {
								console.error(status + " : " + error);
							}
						});
				});
				</script>
			</div>
      <div class="modal-footer">
        <button type="button" id="btnn" class="btn btn btn-info" data-dismiss="modal">나가기</button>
        <!-- <button type="button" class="btn btn-primary">로그인</button> -->
        <form id="move" method="POST" action="${pageContext.request.contextPath }/main/test">
        	<input type="hidden">
        </form>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
