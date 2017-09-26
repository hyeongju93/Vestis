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



<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>



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

/*** PANEL DEFAULT ***/
.with-nav-tabs.panel-default .nav-tabs > li > a,
.with-nav-tabs.panel-default .nav-tabs > li > a:hover,
.with-nav-tabs.panel-default .nav-tabs > li > a:focus {
    color: #777;
}
.with-nav-tabs.panel-default .nav-tabs > .open > a,
.with-nav-tabs.panel-default .nav-tabs > .open > a:hover,
.with-nav-tabs.panel-default .nav-tabs > .open > a:focus,
.with-nav-tabs.panel-default .nav-tabs > li > a:hover,
.with-nav-tabs.panel-default .nav-tabs > li > a:focus {
    color: #777;
	background-color: #ddd;
	border-color: transparent;
}
.with-nav-tabs.panel-default .nav-tabs > li.active > a,
.with-nav-tabs.panel-default .nav-tabs > li.active > a:hover,
.with-nav-tabs.panel-default .nav-tabs > li.active > a:focus {
	color: #555;
	background-color: #fff;
	border-color: #ddd;
	border-bottom-color: transparent;
}
.with-nav-tabs.panel-default .nav-tabs > li.dropdown .dropdown-menu {
    background-color: #f5f5f5;
    border-color: #ddd;
}
.with-nav-tabs.panel-default .nav-tabs > li.dropdown .dropdown-menu > li > a {
    color: #777;   
}
.with-nav-tabs.panel-default .nav-tabs > li.dropdown .dropdown-menu > li > a:hover,
.with-nav-tabs.panel-default .nav-tabs > li.dropdown .dropdown-menu > li > a:focus {
    background-color: #ddd;
}
.with-nav-tabs.panel-default .nav-tabs > li.dropdown .dropdown-menu > .active > a,
.with-nav-tabs.panel-default .nav-tabs > li.dropdown .dropdown-menu > .active > a:hover,
.with-nav-tabs.panel-default .nav-tabs > li.dropdown .dropdown-menu > .active > a:focus {
    color: #fff;
    background-color: #555;
}

#to {
	width:40px;
	height:40px;
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





<div class="col-md-6">
            <div class="panel with-nav-tabs panel-default">
                <div class="panel-heading">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab1default" data-toggle="tab">Default 1</a></li>
                            <li><a href="#tab2default" data-toggle="tab">Default 2</a></li>
                            <li><a href="#tab3default" data-toggle="tab">Default 3</a></li>
                            <li class="dropdown">
                                <a href="#" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#tab4default" data-toggle="tab">Default 4</a></li>
                                    <li><a href="#tab5default" data-toggle="tab">Default 5</a></li>
                                </ul>
                            </li>
                        </ul>
                </div>
                <div class="panel-body">
                    <div class="tab-content">
                        <div id="to" class="tab-pane fade in active" id="tab1default">Default 1</div>
                        <div id="to" class="tab-pane fade" id="tab2default">Default 2</div>
                        <div id="to" class="tab-pane fade" id="tab3default">Default 3</div>
                        <div id="to" class="tab-pane fade" id="tab4default">Default 4</div>
                        <div id="to" class="tab-pane fade" id="tab5default">Default 5</div>
                    </div>
                </div>
            </div>
        </div>










				<!--<select type="text"	class="form-control   tb left" role="multiselect">
					<option value="0"   selected="selected">최신순</option>
					<option value="1" >채택순</option>
					<option value="2" >좋아요순</option>
				</select> -->
				
				<select type="text" class="form-control multiselect multiselect-icon tb left" role="multiselect">
					<option value="0" data-icon="glyphicon-picture" selected="selected">ALL</option>
					<option value="1" data-icon="glyphicon-link">OUTER</option>
					<option value="2" data-icon="glyphicon-pencil">TOP</option>
					<option value="3" data-icon="glyphicon-shopping-cart">BOTTOMS</option>
					<option value="3" data-icon="glyphicon-shopping-cart">SHOES</option>
					<option value="3" data-icon="glyphicon-shopping-cart">ACCESSORY</option>
				</select>
				
				
				<button type="button" onclick="location.href='add'"
					style="margin-left: 35%;" class="tb">등록</button>
			</div>
			
		
		<c:forEach items="${list}" var="vo">
			<div class="row">
		
				<span class="col-lg-3 col-sm-12 tb "> 
				<img class="img-thumbnail" src="${pageContext.request.contextPath }/upload/${vo.dbName}">
				</span> 
			</div>
		</c:forEach>
	</div>

	</div>

	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

</body>
</html>