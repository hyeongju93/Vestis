<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Business Casual - Start Bootstrap Theme</title>
    <!-- 구글맵  위도 경도 구할때 사용  -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJKNfD945xU1q-W9XikGXR5zNnas7fJLo"></script>
    
	<!-- 부트스트랩세트3개  -->
    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/assets/vendor/jquery/jquery.js"></script>	
    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/assets/css/business-casual.css" rel="stylesheet">
	<style>
	.imgSize{
		width:126px;
		height:126px;
	}
	#joinform{
		background:white;
		margin-top:15px;
		height:1200px;
		margin-bottom:10px;
	}
	.form-signin {
		position: relative;
		top:60px;
		width: 600px;
		background:white;
		/* text-align:center; */
		margin:auto;
		margin-top:30px; 
	
	}
	
	#default {
		width: 600px;
		margin:auto;
		margin-top:10px;
		margin-bottom:10px;
	}
	
	/* 바꾸기  */
	#joinName {
		position: relative;
		bottom:10px;
		 text-align: center;
		font-weight: bold;
		
		/*padding: 15px;
		height: 50px; 
		margin-bottom: 3px; */
	}
	
	#btnb {
		margin-top:10px;
		background:#404040; 
	}
	
	#btnpass {
		margin-top:10px;
		background:#404040; 
	}
	#birth_form {
		height: 30px;
		margin-top: 10px;
		
	}
	
	#gender {
		margint-left:10px;
	}

	#add {
		margin-top:10px;
		text-align:left;
	}
	
	#sns {
		color: red;
		font-weight: bold;
	}
	
	#teach {
		colore: #736464;
		/* font-weight:bold; */
		
	}
	
	#addName{
		font-weight:bold;
	}
	#email {
		color: red;
		font-weight: bold;
		text-align:left;
		border:none;
		border-right:0px;
		border-top:0px;
		boder-left:0px;
		boder-bottom:0px;
		background:white;
	}
	#passwords {
		color: red;
		font-weight: bold;
		text-align:left;
		border:none;
		border-right:0px;
		border-top:0px;
		boder-left:0px;
		boder-bottom:0px;
		background:white;
	}
	#passwordd {
		color: red;
		font-weight: bold;
		text-align:left;
		border:none;
		border-right:0px;
		border-top:0px;
		boder-left:0px;
		boder-bottom:0px;
		background:white;
	}
	#name {
		color: red;
		font-weight: bold;
		text-align:left;
		border:none;
		border-right:0px;
		border-top:0px;
		boder-left:0px;
		boder-bottom:0px;
		background:white;
	}
	#nicname {
		color: red;
		font-weight: bold;
		text-align:left;
		border:none;
		border-right:0px;
		border-top:0px;
		boder-left:0px;
		boder-bottom:0px;
		background:white;
	}
	#phone {
		color: red;
		font-weight: bold;
		text-align:left;
		border:none;
		border-right:0px;
		border-top:0px;
		boder-left:0px;
		boder-bottom:0px;
		background:white;
	}
	
	#passform {
		margin-top:100px;
	}
	#password1{
		color: red;
		font-weight: bold;
		text-align:left;
		border:none;
		border-right:0px;
		border-top:0px;
		boder-left:0px;
		boder-bottom:0px;
		background:white;
	}
	#password2{
		color: red;
		font-weight: bold;
		text-align:left;
		border:none;
		border-right:0px;
		border-top:0px;
		boder-left:0px;
		boder-bottom:0px;
		background:white;
	}
	
	#password3{
		color: red;
		font-weight: bold;
		text-align:left;
		border:none;
		border-right:0px;
		border-top:0px;
		boder-left:0px;
		boder-bottom:0px;
		background:white;
	}
	
	.tb {
   margin-top:10px;
   margin-bottom:10px;
	}
	
	#absol{
		position:absolute;
		top:660px;
		left:780px;
	}
	
	#imaages {
		width:35px;
	}
	</style>
	<script language="javascript" charset="UTF-8">

function goPopup(){
	// 주소검색을 수행할 팝업 페이지를 호출합니다.
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrCoordUrl.do)를 호출하게 됩니다.
	var pop = window.open("${pageContext.request.contextPath }/user/addressform","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	console.log("도착");

	
}


function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo,entX,entY){
	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
	/* console.log(roadAddrPart1);
	console.log(roadAddrPart2);
	console.log(roadFullAddr); */
	/* document.form.roadFullAddr.value = roadFullAddr; */
	$('#roadFullAddr').val(roadFullAddr);
	/* $('#entX').val(entX);
	$('#entY').val(entX); */
	
	
	/* document.form.roadAddrPart1.value = roadAddrPart1;
	document.form.roadAddrPart2.value = roadAddrPart2;
	document.form.addrDetail.value = addrDetail;
	document.form.engAddr.value = engAddr;
	document.form.jibunAddr.value = jibunAddr;
	document.form.zipNo.value = zipNo;
	document.form.admCd.value = admCd;
	document.form.rnMgtSn.value = rnMgtSn;
	document.form.bdMgtSn.value = bdMgtSn;
	document.form.detBdNmList.value = detBdNmList;
	document.form.bdNm.value = bdNm;
	document.form.bdKdcd.value = bdKdcd;
	document.form.siNm.value = siNm;
	document.form.sggNm.value = sggNm;
	document.form.emdNm.value = emdNm;
	document.form.liNm.value = liNm;
	document.form.rn.value = rn;
	document.form.udrtYn.value = udrtYn;
	document.form.buldMnnm.value = buldMnnm;
	document.form.buldSlno.value = buldSlno;
	document.form.mtYn.value = mtYn;
	document.form.lnbrMnnm.value = lnbrMnnm;
	document.form.lnbrSlno.value = lnbrSlno;
	document.form.emdNo.value = emdNo; */
	/* document.form.entX.value = entX;
	document.form.entY.value = entY;  */
	
	
	console.log("시작");
	var faddr = roadAddrPart1;
	var geocode;
	
	geocoder = new google.maps.Geocoder();
	geocoder.geocode( { 'address': faddr}, function(results, status) {

		if (status == google.maps.GeocoderStatus.OK) {
			console.log("확인");
			console.log(results);
			 var lat = results[0].geometry.location.lat();
             var lng = results[0].geometry.location.lng();
             $('#lat').val(lat);
         	 $('#lng').val(lng);
             /* $("#lat").html(lat);
             $("#lng").html(lng); */
		} else {
			var faddr_lat = "";
			var faddr_lng = "";
		}

		/* alert('주소 : ' + faddr + '\n\n위도 : ' + lat + '\n\n경도 : ' + lng);
		
		 */
	});
	
}

</script>

  </head>
  <body>

   
	

	
    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
	

    <div class="container" style="width: 100%">
	<!-- 지수씨거 그림가져오는 방법   
   				<div class="row tb">
		 <form action="multiupload.php" method="post" enctype="multipart/form-data">
		  <div class="col-md-6">
		      <input type="file" class="form-control" id="images" name="images[]" onchange="preview_images();" multiple/>
		  </div>
		  <div class="col-md-6">
		      <input type="submit" class="btn btn-primary" name='submit_image' value="Upload Multiple Image"/>
		  </div>
		 </form>
		
		 <div class="row" id="image_preview"></div>
		
         </div>
        <script>
function preview_images() 
{
 var total_file=document.getElementById("images").files.length;
 for(var i=0;i<total_file;i++)
 {
  $('#image_preview').append("<div class='col-md-3'><img class='img-responsive' src='"+URL.createObjectURL(event.target.files[i])+"'></div>");
 }
}
</script> -->


    <div id="joinform">
	 <form id="forminf"  class="form-signin" method="get" action="${pageContext.request.contextPath }/user/changeinfo" disabled>
      	 <h4 id="joinName">회원정보수정</h4>

		<div class="row">
  			<div class="col-md-10">
  				 <label for="inputEmail" class="sr-only">Email address</label>
   				 <input type="hidden" id="inputEmail" name="email" class="form-control" value="${user.email}"placeholder="Email address">
 			 </div>
 			 <div class="col-md-2">
   				 <input id="email" type="hidden" disabled></input>
  			</div>
  		</div>
  		
  		<div class="row">
  			<div class="col-md-10">
  				 <label for="inputName" class="sr-only">Name</label>
   				 <input type="text" id="inputName" name="name" class="form-control" value="${user.name}" placeholder="Name">
 			 </div>
 			 <div class="col-md-2">
   				 <input id="name" disabled></input>
  			</div>
  		</div>
  		
  		<div class="row">
  			<div class="col-md-10">
  				 <label for="inputNicname" class="sr-only">Nicname</label>
   				 <input type="text" id="inputNicname" name="nicname" class="form-control" value="${user.nicname}" placeholder="Nicname">
 			 </div>
 			 <div class="col-md-2" >
   				 <input id="nicname" disabled>
  			</div>
  		</div>
  		
  		<div class="row">
  			<div class="col-md-10">
  				 <label for="inputPhone" class="sr-only">inputPhone</label>
   				 <input type="text" id="inputPhone" name="phone" class="form-control" value="${user.phone}" placeholder="inputPhone">
 			 </div>
 			 <div class="col-md-2">
   				 <input id="phone" disabled>
  			</div>
  		</div>
  		
		<input id="add" type="button" onClick="goPopup();" value="주소검색" />
					<div id="list"></div>
					<div id="callBackDiv">
						<table>
							<tr>
								<td id="addName">주소</td>
								<td><input type="text" style="width: 500px;"
									id="roadFullAddr" name="address" value="${user.address}" /></td>
							</tr>
							<tr>			
							</tr>
							<tr>
								<!-- <td></td> -->	
								<td><input type="hidden" style="width: 500px;" id="lat" value="${user.lat}"
									name="lat" /></td>
							</tr>
							<tr>
								<!-- <td></td> -->
								<td><input type="hidden" style="width: 500px;" id="lng" value="${user.lon}"
									name="lon" /></td>
							</tr>
						</table>
					</div>
					
					
			<div class="row">
				<span id="profilenn" class='col-lg-9 col-sm-12 tb '>
					<div id="birth_form">
  		<tr>
									<th class="title">생년월일</th>
									<td class="birth"><select id="birthyear" name="birthyear" class="MS_select MS_birthday">
<option value="">선택</option><option value="1920">1920</option><option value="1921">1921</option><option value="1922">1922</option><option value="1923">1923</option><option value="1924">1924</option><option value="1925">1925</option><option value="1926">1926</option><option value="1927">1927</option><option value="1928">1928</option><option value="1929">1929</option><option value="1930">1930</option><option value="1931">1931</option><option value="1932">1932</option><option value="1933">1933</option><option value="1934">1934</option><option value="1935">1935</option><option value="1936">1936</option><option value="1937">1937</option><option value="1938">1938</option><option value="1939">1939</option><option value="1940">1940</option><option value="1941">1941</option><option value="1942">1942</option><option value="1943">1943</option><option value="1944">1944</option><option value="1945">1945</option><option value="1946">1946</option><option value="1947">1947</option><option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option></select>년<select id="birthmonth"name="birthmonth" class="MS_select MS_birthday">
<option value="">선택</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select>월<select id="birthday" name="birthday" class="MS_select MS_birthday">
<option value="">선택</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select>일&nbsp;&nbsp;

			<c:choose>
				<c:when test="${sessionScope.authUser.gender=='female' }">
				<input id="gender" type="radio" name="gender" value="male" class="MS_radio">남 <input id="gender" type="radio" name="gender" value="female" class="MS_radio" checked="">여</td>
				</c:when>	
				<c:otherwise>
<input id="gender" type="radio" name="gender" value="male" class="MS_radio" checked="">남 <input id="gender" type="radio" name="gender" value="female" class="MS_radio" >여</td>				
				</c:otherwise>
			</c:choose>	
				
				
				</tr>
				
			</div>
				</span>
				<span id="profilehh" class='col-lg-3 col-sm-12 tb '> 
				
				</span>
			</div>	
							
			
				
<!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------  --> 
         
  		     
        <button class="btn btn-lg btn-primary btn-block" id="btnb" type="button">수정완료</button>
        <a href="${pageContext.request.contextPath }/user/modifyform" class="btn btn-lg btn-info btn-block" id="default">다시하기</a>
      </form>
    
 <!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ -->
<div class="row tb">
		 <form id="ffff" action="${pageContext.request.contextPath }/user/proimage" method="post" enctype="multipart/form-data">
		  <div id="absol" class="col-lg-2 col-sm-12 tb ">
		      <input type="file" class="form-control" id="images" name="file" onchange="preview_images();">
		  </div>
		 <!--  <div class="col-lg-3 col-sm-12 tb ">
		      <input id="bttt" type="submit" class="btn btn-primary" name='submit_image' value="Upload Multiple Image" disabled/>
		  </div>  -->
		 </form>
		
		 <div class="row" id="image_preview"></div>

<script type="text/javascript">
function preview_images() 
{
$('#profilehh').empty();
$('#mo').val("change");
 var total_file=document.getElementById("images").files.length;
 for(var i=0;i<total_file;i++)
 {
  $('#profilehh').append("<img class='imgSize' src='"+URL.createObjectURL(event.target.files[i])+"'></div>");
 }

}
</script>

		
  <!-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
   	<!--  sns로그인자의 비밀번호 변경을 막을려함 -->
    <c:choose>
    <c:when test="${(user.email != user.password) && user.phone != 'noinput'}">
   
	 <form id="passform" class="form-signin" method="post" action="${pageContext.request.contextPath }/user/changepass" disabled>
      	 <h4 id="joinName">비밀번호 수정</h4>
  		<div class="row">
  			<div class="col-md-10">
  				 <label for="inputEmail2" class="sr-only">Email address</label>
   				 <input type="hidden" id="inputEmail2" name="email" class="form-control" value="${user.email}"placeholder="Email address">
 			 </div>
 			 <div class="col-md-2">
   				 <input id="email2" type="hidden" disabled></input>
  			</div>
  		</div>
  		
  		<div class="row">
  			<div class="col-md-10">
  				 <label for="inputPassword1" class="sr-only">Passwordd</label>
   				 <input type="password" id="inputPassword1" name="password1" class="form-control" placeholder="기존비밀번호">
 			 </div>
 			 <div class="col-md-2">
   				 <input id="password1" disabled></input>
  			</div>
  		</div>
  		
  		
  		<div class="row">
  			<div class="col-md-10">
  				 <label for="inputPassword2" class="sr-only">Password</label>
   				 <input type="password" id="inputPassword2"  name="password" class="form-control" placeholder="새로운 비밀번호">
 			 </div>
 			 <div class="col-md-2">
   				 <input id="password2" disabled></input>
  			</div>
  		</div>
  		
  		<div class="row">
  			<div class="col-md-10">
  				 <label for="inputPassword3" class="sr-only">Passwords</label>
   				 <input type="password" id="inputPassword3" name="password3"  class="form-control" placeholder="새로운 비밀번호 확인">
 			 </div>
 			 <div class="col-md-2">
   				 <input id="password3" disabled></input>
  			</div>
  		</div>
  		
  		
        <button class="btn btn-lg btn-primary btn-block" id="btnpass" type="button">수정완료</button>
        <a href="${pageContext.request.contextPath }/user/modifyform" class="btn btn-lg btn-info btn-block" id="default">다시하기</a>
      </form>
      
      </c:when>
      <c:otherwise>
      </c:otherwise>
      </c:choose>
    </div>
    </div> 
    
    <!-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
	<form id="move" method="get" action="${pageContext.request.contextPath}/user/index">
   <input id="mo" type="hidden" value="${sessionScope.authUser.profile_no}">
   </form>    
   
    <!-- /.container -->

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
	var birthyear=${user.birthyear};	
	var birthmonth=${user.birthmonth};	
	var birthday=${user.birthday};	
	
	$('#birthyear').val(birthyear);
	$('#birthmonth').val(birthmonth);
	$('#birthday').val(birthday);
	
	var mo=$('#mo').val();
	console.log(mo);
	$.ajax({	
		url : "${pageContext.request.contextPath }/user/image",		
			type : "post",
			data : {mo: mo},  
		 	dataType : 'text', 
			success : function(result){	
				console.log(result);
				render(result);
				console.log("성공");
				$('#mo').val(result);
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
	});
	
});

function render(result){
	console.log("render 들어옴");
	var str ="";
	str+="<div style='text-align:center'><img src='${pageContext.request.contextPath }/upload/"+result+"' class='imgSize' />";
	str+="</div>";
	console.log("render 끝");
	$("#profilehh").append(str);	
	
}


	
$('#inputName').blur(function() {
	var name=$('#inputName').val();
	console.log(name);
	if(name==""){
		$('#name').val("X");
		var element = document.getElementById("name");
		element.style.color = "#ff0000";
		return "false";
	} else {
		$('#name').val("O");
		var element = document.getElementById("name");
		element.style.color = "#03FA38";
		return "true";	
	}
	
	});
	
$('#inputNicname').blur(function() {
	var nicname=$('#inputNicname').val();
	console.log(nicname);
	if(nicname==""){
		$('#nicname').val("X");
		var element = document.getElementById("nicname");
		element.style.color = "#ff0000";
		return false;
	} else {
		$('#nicname').val("O");
		var element = document.getElementById("nicname");
		element.style.color = "#03FA38";
		return true;	
	}
	
	});	

$('#inputPassword2').blur(function() {
	
	var password2=$("#inputPassword2").val();
	var password3=$("#inputPassword3").val();
	console.log("1"+password2);
	console.log("2"+password3);
	
	if(password2==password3){
		if(password2 ==""){
			
			$('#password2').val("X");
			var elements = document.getElementById("password2");
			elements.style.color = "#ff0000";
			return false;
		} else {
		
			$('#password2').val("O");	
			$('#password3').val("O");
			var element = document.getElementById("password2");
			var elements = document.getElementById("password3");
			element.style.color = "#03FA38";
			elements.style.color = "#03FA38";
			
			return true;
		}
		
	} else {
	
		$('#password2').val("X(같지않습니다.)");
		var elements = document.getElementById("password2");
		elements.style.color = "#ff0000";
		return false;
	}
	
});
	
$('#inputPassword3').blur(function() {
	
	var password2=$("#inputPassword2").val();
	var password3=$("#inputPassword3").val();
	console.log("1"+password2);
	console.log("2"+password3);
	
	if(password2==password3){
		if(password3 == ""){
			$('#password3').val("X");
			var element = document.getElementById("password3");
			element.style.color = "#ff0000";
			
			return false;
		} else {
			
			$('#password2').val("O");	
			$('#password3').val("O");	
			var element = document.getElementById("password2");
			var elements = document.getElementById("password3");
			element.style.color = "#03FA38";
			elements.style.color = "#03FA38";
			
			return true;
		}
		
	} else {
		$('#password3').val("X(같지 않습니다)");
		var element = document.getElementById("password3");
		element.style.color = "#ff0000";
		
		return false;
	}
	
});
	
$('#inputPhone').blur(function() {
	var phone=$('#inputPhone').val();
	console.log(phone);
	console.log($.isNumeric(phone));
	if($.isNumeric(phone)){
		if(phone==""){
			console.log("빈칸");
			$('#phone').val("X");
			var element = document.getElementById("phone");
			element.style.color = "#ff0000";
			
			return false;
		} else {
			console.log("숫자 입니다.");
			
			$('#phone').val("O");
			var element = document.getElementById("phone");
			element.style.color = "#03FA38";
			return true;
		}
	} else {
		console.log("숫자 아닙니다.");
		$('#phone').val("X(숫자만)");
		var element = document.getElementById("phone");
		element.style.color = "#ff0000";		
		return false;
	}
});

$("#btnb").on("click",function(){
	var email=$('#inputEmail').val();
	var name=$('#inputName').val();
	var nicname=$('#inputNicname').val();
	var phone=$('#inputPhone').val();
	var address=$('#roadFullAddr').val();
	var birthyear=$('#birthyear').val();
	var birthmonth=$('#birthmonth').val();
	var birthday=$('#birthday').val();
	var lat=$('#lat').val();
	var lng=$('#lng').val();
	var gender=$('#gender:checked').val();
	var mo=$('#mo').val();
	console.log(address);
	console.log(birthyear);
	console.log(birthmonth);
	console.log(birthday);
	console.log(lat);
	console.log(lng);
	
	if(email=="" || name=="" || nicname=="" || phone=="" || address=="" || birthyear=="" || birthmonth=="" || birthday==""){
		alert("입력을 안한 값이 있습니다.");
		return false;
	} else if( !$.isNumeric(phone)){
		alert("번호에 숫자만 넣으십시오");
		return false;
	} else if(lat=="" || lng==""){
		alert("주소값 변경은 주소검색을 통해서 넣어주세요")
	}else {
		
		$.ajax({	
			url : "${pageContext.request.contextPath }/user/changeinfo",		
			type : "post",
			data : {email: email,name: name,nicname: nicname,phone: phone,address: address,birthyear: birthyear,birthmonth: birthmonth,birthday: birthday,lat: lat,lon: lng,gender:gender},  
		 	dataType : "json",  
			success : function(result){	//list-ajax에서 보낸 것을 guestbook으로 받음
				console.log("성공");
				
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});	
		alert("회원정보수정에 성공하셨습니다.");
		if(mo=="change"){
			$('#ffff').submit();	
		} else {
			$('#move').submit();
		}
		
	
	}
});


$("#btnpass").on("click",function(){
	var email=$('#inputEmail').val();
	var password1=$('#inputPassword1').val();
	var password2=$('#inputPassword2').val();
	var password3=$('#inputPassword3').val();
	var password4=${user.password};
	if(password1=="" || password2=="" || password3=="" ){
		alert("입력을 안한 값이 있습니다.");
		return false;
	} else if(password2 !=password3) {
		alert("비밀번호가 같지 않습니다.");
		return false;
	} else if(password1 != password4 ){
		alert("기존 비밀번호가 틀렸습니다.");
		return false;
	} else {
		
	alert("비밀번호 수정에 성공하셨습니다.");
	$('#passform').submit();
	}
});


</script>
</html>
