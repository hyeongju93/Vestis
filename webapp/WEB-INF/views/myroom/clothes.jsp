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

.tb {
	margin-top: 20px;
}

/* .multiselect-container {
	position: absolute;
	list-style-type: none;
	margin: 0;
	padding: 0
}

.multiselect-container .input-group {
	margin: 5px
}

.multiselect-container>li {
	padding: 0
}

.multiselect-container>li>a.multiselect-all label {
	font-weight: bold
}

.multiselect-container>li>label.multiselect-group {
	margin: 0;
	padding: 3px 20px 3px 10px;
	height: 100%;
	font-weight: bold;
}

.multiselect-container>li>a>label {
	margin: 0;
	height: 100%;
	cursor: pointer;
	font-weight: normal
}

.multiselect-container>li>a>label.radio, .multiselect-container>li>a>label.checkbox
	{
	margin: 0
}

.multiselect-container>li>a>label>input[type="checkbox"] {
	margin-bottom: 5px
}

.btn-group>.btn-group:nth-child(2)>.multiselect.btn {
	border-top-left-radius: 4px;
	border-bottom-left-radius: 4px
}

.btn {
	padding: 10px 16px;
	font-size: 18px;
	line-height: 1.33;
	border-radius: 6px;
}
 */
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
		<!-- 서브메뉴 -->
		<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>


		<div class="container">
			<div class="row">

				<select type="text"	class="form-control   tb left" role="multiselect">
					<option value="0"   selected="selected">최신순</option>
					<option value="1" >채택순</option>
					<option value="2" >좋아요순</option>
					<option value="3" >Cart</option>
				</select> 
				<select type="text" class="form-control multiselect multiselect-icon tb left" role="multiselect">
					<option value="0" data-icon="glyphicon-picture" selected="selected">최신순</option>
					<option value="1" data-icon="glyphicon-link">채택순</option>
					<option value="2" data-icon="glyphicon-pencil">좋아요순</option>
					<option value="3" data-icon="glyphicon-shopping-cart">Cart</option>
				</select>
				<button type="button" onclick="location.href='add'"
					style="margin-left: 35%;" class="tb">등록</button>
			</div>

			<div class="row">
				<span class="col-lg-3 col-sm-12 picture tb"> <img
					class="img-thumbnail"
					src="${pageContext.request.contextPath}/assets/img/j.jpg"">
				</span> <span class="col-lg-3 col-sm-12 tb "> <img
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
				</span> <span class="col-lg-3 col-sm-12 tb"> <img
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

	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

</body>
</html>