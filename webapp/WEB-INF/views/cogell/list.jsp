<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>clothes</title>

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">


<!-- Custom fonts for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic"
	rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link
	href="${pageContext.request.contextPath}/assets/css/business-casual.css"
	rel="stylesheet">

<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
 p { font-size: 24px; }
 .hn { font-family: 'Hanna'; }


.tb {
	margin-top: 20px;
	white-space:nowrap;
}


.left {
	margin-left: 18px;
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
	white-space:nowrap;
}

#birthyear{
width: 70px;
height: 30px;
white-space:nowrap;
}

#birthmonth{
height: 30px;
white-space:nowrap;
}

#birthday{
height: 30px;
white-space:nowrap;
}

#gender{
white-space:nowrap;
}

</style>

</head>

<body>

	
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

	<div class="container">
		<!-- 서브메뉴 -->
	


		<div id="birth_form" >
  		<tr>
  		<br>
		<p class="hn">랜덤 찾기</p>
		<td class="birth"><select id="birthyear" name="birthyear" class="MS_select MS_birthday">
		
		<!-- 년도 선택란 -->
		<option value="">선택</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option>
		<option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option>
		<option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option>
		<option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option>
		<option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option>
		<option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option>
		<option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option>
		<option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option>
		<option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option>
		<option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option>
		<option value="2017">2017</option></select>년
		
		<!-- 월 선택란 -->
		<select id="birthmonth"name="birthmonth" class="MS_select MS_birthday">
		<option value="">선택</option><option value="01">1</option><option value="02">2</option><option value="03">3</option>
		<option value="04">4</option><option value="05">5</option><option value="06">6</option><option value="07">7</option>
		<option value="08">8</option><option value="09">9</option><option value="10">10</option><option value="11">11</option>
		<option value="12">12</option></select>월
		
		
		<!-- 일 선택란 -->
		<select id="birthday" name="birthday" class="MS_select MS_birthday">
		<option value="">선택</option><option value="01">1</option><option value="02">2</option><option value="03">3</option>
		<option value="04">4</option><option value="05">5</option><option value="06">6</option><option value="07">7</option>
		<option value="08">8</option><option value="09">9</option><option value="10">10</option><option value="11">11</option>
		<option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option>
		<option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option>
		<option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option>
		<option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option>
		<option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option>
		</select>일&nbsp;&nbsp;
		
		<!-- 남, 녀 구분 -->
		<input id="gender" type="radio" name="gender" value="male" class="MS_radio">남<input id="gender" type="radio" name="gender" value="female" class="MS_radio" checked="">여</td>
		</tr>
		   <button type="button" class="btn btn-info"> 찾기 </button>
  		</div>     
       
      </form>
      
		<div class="container"><br>
		<p class="hn">최근등록</p>
			<div class="row">
				<span class="col-lg-3 col-sm-12 picture tb"> <img
					class="img-thumbnail"
					src="${pageContext.request.contextPath}/assets/img/j.jpg"">
				</span> 
				<span class="col-lg-3 col-sm-12 tb "> <img
					class="img-thumbnail"
					src="${pageContext.request.contextPath}/assets/img/j.jpg"">
				</span> <span class="col-lg-3 col-sm-12 tb"> <img
					class="img-thumbnail"
					src="${pageContext.request.contextPath}/assets/img/j.jpg"">
				</span> <span class="col-lg-3 col-sm-12 tb"> <img
					class="img-thumbnail"
					src="${pageContext.request.contextPath}/assets/img/j.jpg">	
				</span> <span class="col-lg-3 col-sm-12 tb"> <img
					class="img-thumbnail" src="//placehold.it/200x200">
				</span> <span class="col-lg-3 col-sm-12 tb"> <img
					class="img-thumbnail" src="//placehold.it/200x200">
				</span> <span class="col-lg-3 col-sm-12 tb"> <img
					class="img-thumbnail" src="//placehold.it/200x200">
				</span> <span class="col-lg-3 col-sm-12 tb "> <img
					class="img-thumbnail" src="//placehold.it/200x200">
				</span> 
				</div>
				
				<div class="container"><br>
				<p class="hn">추천 별 랭킹</p>
				<div class="row">
				
				<span class="col-lg-3 col-sm-12 tb"> <img
					class="img-thumbnail" src="//placehold.it/200x200">
				</span> <span class="col-lg-3 col-sm-12 tb"> <img
					class="img-thumbnail" src="//placehold.it/200x200">
				</span> <span class="col-lg-3 col-sm-12 tb"> <img
					class="img-thumbnail" src="//placehold.it/200x200">
				</span> <span class="col-lg-3 col-sm-12 tb"> <img
					class="img-thumbnail" src="//placehold.it/200x200">
				</span>
			</div>
		</div>
	</div>
	</div>
	<br>

	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

</body>
</html>