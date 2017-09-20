<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>codibook</title>
<!-- Latest compiled and minified JavaScript -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript"
	src="https://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
	

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/codi_bootstrap.css">

<!-- Custom styles for this template -->
<link
	href="${pageContext.request.contextPath}/assets/css/business-casual.css"
	rel="stylesheet">

<style>
.sub-menu {
	width: 120px;
	height: 800px;
	float: left;
}

.list {
	color: white;
	padding-top: 1%;
	padding-bottom: 1%;
}

.bts .list-group {
	display: block;
	margin-top: 0;
}

.gallery {
	display: inline-block;
	margin-top: 20px;
	width: 100%;
}

</style>

</head>
<body>
	<!-- Modal -->

	<div class="modal bs-example-modal-lg" id="modal" tabindex="-1"
		role="dialog" aria-labelledby="gridSystemModalLabel"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					코디해준 사람의 닉네임과 프사
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close" aria-hidden="true">&times;
					</button>
				</div>
				<div class="modal-body">
					<div class="container-fluid bts">

						<div class="row">
							<div class="col-md-6">
								<label style="margin-left:5%;">추천한 코디</label>
								<img class="img-responsive showPic" src="" style="border:1px solid #FFD7B9; border-radius: 1em;">
							</div>


							<div class="col-md-6">
								<label style="margin-left:5%;">실제로 입은 사진</label>
								<img class="img-responsive" src="" style="border:1px solid #FFD7B9; border-radius: 1em; height:100%; background: #FFFEEE;">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div
		class="tagline-upper text-center text-heading text-shadow text-white mt-5 d-none d-lg-block">
		<span style="color: white">VESTIS</span>
	</div>

	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>


	<div class="container">
		<div class="sub-menu bg-faded none ">
			<div style="text-align: center">
				<img src="${pageContext.request.contextPath }/assets/img/f.jpg"
					class="image-circle top" />

				<p>jisoo</p>
				<p>point:100</p>
				<p>옷장</p>


			</div>

			<div style="text-align: center">

				<p>
					<a href="${pageContext.request.contextPath }/myroom/codibook">코디북</a>
				</p>
				<p>
					<a href="${pageContext.request.contextPath }/myroom/codi">코디하기</a>
				</p>

			</div>
		</div>

		<div class="top center">
			<fieldset class="list">
				<input type="radio" style="margin-left: 5%;" value="HTML"
					checked="checked">All <input type="radio"
					style="margin-left: 5%;" value="HTML">My Codi <input
					type="radio" style="margin-left: 5%;" value="HTML">Other
				Codi <input type="radio" style="margin-left: 5%;" value="male">System
			</fieldset>
		</div>

		<!-- 여기서부터 건들기 -->
		<div class="bts row">
			<div class='list-group gallery'>
				<div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
					<a class="thumbnail" href="#"
						data-image="${pageContext.request.contextPath}/assets/img/test.png"
						data-toggle="modal" data-target="#modal" data-keyboard="true" data-backdrop="false">
						<img class="img-responsive getSrc" alt=""
						src="${pageContext.request.contextPath}/assets/img/test.png" />
						<div class='text-left'>
							<small class='text-muted'>Image Title</small>
						</div> <!-- text-right / end -->
					</a>
				</div>
				<!-- col-6 / end -->
				<!-- col-6 / end -->
				<div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
					<a class="thumbnail" href="#" data-toggle="modal"
						data-target="#modal"> <img class="img-responsive getSrc"
						alt=""
						src="${pageContext.request.contextPath}/assets/img/test.png" />
						<div class="text-left">
							<small class='text-muted'>Image Title</small>
						</div> <!-- text-right / end -->
					</a>
				</div>
				<!-- col-6 / end -->
				<!-- col-6 / end -->
				<div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
					<div class="thumbnail" href="#modal" name="test"
						data-toggle="modal">
						<img class="img-responsive getSrc" alt=""
							src="${pageContext.request.contextPath}/assets/img/test.png" />
						<div class="text-left">
							<small class='text-muted'>Image Title</small>
						</div>
						<!-- text-right / end -->
					</div>
				</div>
				<!-- col-6 / end -->
			</div>
			<!-- list-group / end -->
		</div>
		<!-- row / end -->
	</div>



</body>

<script type="text/javascript">
	$(document).ready(function() {
		console.log("ready!");
		$('.getSrc').click(function() {
			console.log("hello");
			var src = $(this).attr('src');

			$('.showPic').attr('src', src);
		});
	});
</script>

</html>