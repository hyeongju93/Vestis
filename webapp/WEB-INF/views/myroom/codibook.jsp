<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>codibook</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/codi_bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

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

.btn-hover {
	font-weight: normal;
	color: #333333;
	cursor: pointer;
	background-color: inherit;
	border-color: transparent;
}

.btn-hover-alt {
	font-weight: normal;
	color: #ffffff;
	cursor: pointer;
	background-color: inherit;
	border-color: transparent;
}

.prifile_photo {
	border-radius: 50%;
	width: 50px;
	height: 50px;
}

.comments-list .comment .avatar {
	border-radius: 50%;
	width: 50px;
	height: 50px;
}

.comments-list .comment .comment-heading {
	display: block;
	width: 100%;
}

.comments-list .comment .comment-heading .user {
	font-size: 14px;
	font-weight: bold;
	display: inline;
	margin-top: 0;
	margin-right: 10px;
}

.comments-list .comment .comment-heading .time {
	font-size: 12px;
	color: #aaa;
	margin-top: 0;
	display: inline;
}

.comments-list .comment .comment-body {
	margin-left: 60px;
}

.comments-list .comment>.comments-list {
	margin-left: 50px;
}

.input-group-addon a {
	color: #454545;
}

.comment {
	border-bottom: 1px dashed gray;
}

.btn-default, .btn-primary, .btn-success, .btn-info, .btn-warning,
	.btn-danger {
	-webkit-box-shadow: 0px 3px 0px rgba(0, 0, 0, 0.3);
	-moz-box-shadow: 0px 3px 0px rgba(0, 0, 0, 0.3);
	box-shadow: 0px 3px 0px rgba(0, 0, 0, 0.3);
}

.btn-default:active, .btn-primary:active, .btn-success:active, .btn-info:active,
	.btn-warning:active, .btn-danger:active {
	margin-top: 3px;
	margin-bottom: -3px;
}

#wearclothimg {
	position: absolute;
	max-width: 100%;
	max-height: 100%;
	width: auto;
	height: auto;
	margin: auto;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
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
					<p class="text-left nicname" style="margin-bottom: 0;">
						<img class="prifile_photo"
							src="http://bootdey.com/img/Content/user_1.jpg" alt="프로필사진"
							style="margin-right: 10px;">
					</p>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<div class="container-fluid bts">

						<div class="row" style="height: 71%">
							<div class="col-md-6">
								<label
									style="margin-left: 5%; margin-bottom: 3%; margin-top: 3%;">추천한
									코디</label> <img class="img-responsive showPic" src=""
									style="border: 1px solid #FFD7B9; border-radius: 1em;">
							</div>


							<div class="col-md-6 bts">
								<label style="margin-left: 5%; display: inline;">실제로 입은
									사진</label>
								<form id="sendimgfile" action="" method="post"
									enctype="multipart/form-data" style="display: inline;">
									<input type="file" id="fileopen" name="file" accept="image/*"
										style="display: none;">
									<button id="inputfilebtn" class="btn btn-default" type="button"
										style="margin-left: 17%; margin-bottom: 3%;">사진선택</button>
								</form>
								<button id="saveimgbtn" class="btn btn-default"
									style="margin-bottom: 3%;">저장</button>
								<div
									style="border: 1px solid #FFD7B9; border-radius: 1em; overflow: hidden; height: 91%; position: relative;">
									<img id="wearclothimg" class="img-responsive"
										src="${pageContext.request.contextPath}/assets/img/base_img.png"
										alt="">
								</div>
							</div>
						</div>

						<hr>
						<div class="row">
							<div class="input-group"
								style="padding-left: 2%; padding-right: 2%; margin-bottom: 2%;">
								<form action="">
								<input class="form-control" placeholder="Add a comment"
									type="text" style="width:96%;"> 
									<button class="input-group-addon" style="height:34px; width:4%; padding:0;"><span class="glyphicon glyphicon-edit"></span></button>
								</form>
							</div>
							<ul class="comments-list"
								style="padding-left: 3.2%; padding-right: 3.2%; list-style: none; width: 100%;">
								<li class="comment"><a class="pull-left" href="#"> <img
										class="avatar" src="http://bootdey.com/img/Content/user_1.jpg"
										alt="avatar">
								</a>
									<div class="comment-body">
										<div class="comment-heading">
											<h4 class="user">Gavino Free</h4>
											<h5 class="time">5 minutes ago</h5>
										</div>
										<p>Sure, oooooooooooooooohhhhhhhhhhhhhhhh</p>
									</div></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>


	<div class="container">
		<c:import url="/WEB-INF/views/includes/navigation.jsp"></c:import>

		<div class="top center">
			<fieldset class="list">
				<label for="allbtn" style="margin-left: 5%;"><input type="radio" id="allbtn" name="clothlistchoice" value="all" checked="checked">All</label> 
				<label for="mycodibtn" style="margin-left: 5%;"><input type="radio" id="mycodibtn" name="clothlistchoice" value="own">My Codi </label>
				<label for="othercodibtn" style="margin-left: 5%;"><input type="radio" id="othercodibtn" name="clothlistchoice" value="other">Other Codi </label>
				<label for="systembtn" style="margin-left: 5%;"><input type="radio" id="systembtn" name="clothlistchoice" value="system">System</label>
			</fieldset>
		</div>

		<!-- 여기서부터 건들기 -->
		<div
			style="overflow: auto; width: 87%; height: 37vw; padding: 2%; padding-bottom: 0; background-color: rgba(255, 255, 255, 0.9); border-radius: 1em; float: right;">
			<div class="bts row">
				<div class='list-group gallery' id="codibookItemList">
				</div>
				<!-- list-group / end -->
			</div>
			<!-- row / end -->
		</div>
	</div>

	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

</body>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<!-- 코디북 리스트 뿌리기 -->
<script type="text/javascript">
	$(document).ready(function() {
		es_fetchBook("all");
		console.log("ready!");
		
		
		$('#modal').on('show.bs.modal', function (event) {
			  console.log('모달모달');
			  var info = $(event.relatedTarget.dataset); // Button that triggered the modal
			  console.log(info);
			  var img = info[0].image; // Extract info from data-* attributes
			  console.log(img);
			  var wearimg = info[0].wearimage; // Extract info from data-* attributes
			  var profile = info[0].profile;
			  console.log(profile);
			  var nicname = info[0].nicname;
			  console.log(nicname);
			  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
			  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.

			  
			  var str = ""
			  str += "<img class=\"prifile_photo\" src=\"\" alt=\"프로필사진\" style=\"margin-right: 10px;\">";
			  str += nicname;
			  
			  $('.showPic').attr('src', img);
			  $('#wearclothimg').attr('src', wearimg);
			  $('.nicname').html(str);
			  $('.prifile_photo').attr('src', profile);
			  


			});
	});

	function es_fetchBook(purpose) {
		var num = ${userNo};
		var authNo = ${authUser.no};
		console.log(purpose+num);
		$.ajax({
					url : "${pageContext.request.contextPath }/myroom/codibookList",
					dataType : "json",
					type : "post",
					data : {"purpose":purpose, "num":num, "no":authNo},
					success : function(codibookList) {
						console.log("성공");
						for (var i = 0; i < codibookList.length; i++) {
							console.log(codibookList.length);
							es_render(codibookList[i]);
							
						}
						$('.likebtn').click(function() {
							var $this = $(this);
							if ($this.hasClass('likebtn')){
								console.log("종아요 버튼");

								var authNo = ${authUser.no};
								console.log($($this).val());
								likebtnClick($this.val(), authNo);
								var c = $this.data('count');
								if (!c)
									c = 0;
								c++;
								$this.data('count', c);							
								$('#' + this.id + '-bs').html(c);
								$($this).addClass("btn-primary");
								$this.removeClass("likebtn");
							}
						});
						
						$('.chsbtn').click(function() {
							var $this = $(this);
							if ($this.hasClass('chsbtn')){
								choosebtnClick($this.val());
								$($this).addClass("btn-success");
								$this.removeClass("chsbtn")
							}

						});
						
						/* $('.getSrc').click(function() {
							console.log("hello");
							var src = $(this).attr('src');
							
							//프로필 사진과 닉네임을 가져와야한다
							//db를 통해서 할것이므로 눌렀을 때 코디번호를 모달창에 전해야한다.
							$('.showPic').attr('src', src);
						}); */	
						
						

					},
					error : function(XHR, status, error) { //실패했을때 에러메세지 찍어달라는것, 통신상의 에러라던지 그런것들
						console.error(status + " : " + error);
					}
				});
	}
	
	function es_render(CodibookVo) {
		var userNo = ${userNo};
		var authNo = ${authUser.no};
		
		var str = "";
		str += "<div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>";
		str += "<div class=\"thumbnail\">";
		str += "	<div id=\"openModal"+CodibookVo.no+"\"";
		str += "	 	data-image=\"${pageContext.request.contextPath}/upload/"+CodibookVo.codi+"\" ";
		str += "	 	data-wearimage=\"${pageContext.request.contextPath}/upload/"+CodibookVo.wear+"\" ";
		str += "	 	data-profile=\"${pageContext.request.contextPath}/upload/"+CodibookVo.profile+"\" ";
		str += "	 	data-nicname=\""+CodibookVo.otherNicname+"\" ";
		str += "		data-toggle=\"modal\" data-target=\'#modal\' data-keyboard=\"true\"";
		str += "		data-backdrop=\"false\">";
		str += "		<img class=\"img-responsive getSrc\" alt=\"\"";
		str += "			src=${pageContext.request.contextPath}/upload/"+CodibookVo.codi+" style=\"cursor:pointer\"/>";
		str += "	</div> ";
		str += "	<div class=\"row\">";
		str += "	<div class=\"col-md-8\">";
		str += "		<p class=\"text-left\" style=\"margin: 2%;\">";
		str += "			<img class=\"prifile_photo\" src=${pageContext.request.contextPath}/upload/"+CodibookVo.profile+" alt=\"프로필사진\" style=\"margin-right:10px;\">"
				+ CodibookVo.otherNicname + "</p>";
		str += " 	</div>";
		str += " 	<div class=\"col-md-4\" style=\"padding-top:2%; padding-left:auto;\">";
		if (userNo == authNo) {
		//if(true){
			if (CodibookVo.choose != 0) {
				str += "<button class=\"btn btn-sm btn-hover btn-default btn-success\" value="+CodibookVo.no+" style=\"float:right;\">";
				str += "<span class=\"glyphicon glyphicon-check\"></span>";
				str += "</button>";
			} else {
				str += "<button class=\"btn btn-sm btn-hover btn-default chsbtn\" value="+CodibookVo.no+" style=\"float:right;\">";
				str += "<span class=\"glyphicon glyphicon-check\" ></span>";
				str += "</button>";
			}
			
		}
		if(CodibookVo.likeflag != 0){
			str += "		<button class=\"btn btn-sm btn-hover btn-primary\"";
			str += "			style=\"display: inline; float:right; margin-top:5%\" data="+CodibookVo.likes+" value="+CodibookVo.no+" id=\"like"
					+ CodibookVo.no + "\">";
			str += "			<span class=\"glyphicon glyphicon-thumbs-up\"><div id=\"like"+CodibookVo.no+"-bs\" style=\"display: inline; margin-left: 2px;\">"
					+ CodibookVo.likes + "</div></span>";
			str += "		</button>";
		} else {
			str += "		<button class=\"btn btn-sm btn-default btn-hover likebtn\"";
			str += "			style=\"display: inline; float:right; margin-top:5%\" data="+CodibookVo.likes+" value="+CodibookVo.no+"	 id=\"like"
					+ CodibookVo.no + "\">";
			str += "			<span class=\"glyphicon glyphicon-thumbs-up\"><div id=\"like"+CodibookVo.no+"-bs\" style=\"display: inline; margin-left: 2px;\">"
					+ CodibookVo.likes + "</div></span>";
			str += "		</button>";
		}
		str += "	</div>";
		str += "	</div>";
		str += "</div>";

		str += "</div>";

		$("#codibookItemList").append(str);
	}
		
	function choosebtnClick(no) {
		$.ajax({
			url : "${pageContext.request.contextPath }/myroom/chooseClick",
			type : "post",
			dataType : "json",
			data : {"no":no},
			success :function() {
				console.log("채택 성공");
			},
			error : function(XHR, status, error) { //실패했을때 에러메세지 찍어달라는것, 통신상의 에러라던지 그런것들
				console.error(status + " : " + error);
			}
		});
	}
	function likebtnClick(voNo, authNo) {
		console.log(voNo+authNo);
		$.ajax({
			url : "${pageContext.request.contextPath }/myroom/likeClick",
			type : "post",
			dataType : "json",
			data : {"voNo":voNo, "authNo":authNo},
			success :function() {
				console.log("좋아요 성공");
			},
			error : function(XHR, status, error) { //실패했을때 에러메세지 찍어달라는것, 통신상의 에러라던지 그런것들
				console.error(status + " : " + error);
			}
		});
	}
</script>

<script type="text/javascript">
	$("[name=clothlistchoice]").on('click', function() {
		console.log("분류 클릭");
		var listType = $(this).val();
		console.log(listType);
		$("#codibookItemList").empty();
		es_fetchBook(listType);
	});
</script>

<script type="text/javascript">
	//이벤트 발생시 첨부파일 열기버튼이 눌리도록
	function eventOccur(evEle, evType) {
		if (evEle.fireEvent) {
			evEle.fireEvent('on' + evType);
		} else {
			//MouseEvents가 포인트 그냥 Events는 안됨~ ??
			var mouseEvent = document.createEvent('MouseEvents');
			/* API문서 initEvent(type,bubbles,cancelable) */
			mouseEvent.initEvent(evType, true, false);
			var transCheck = evEle.dispatchEvent(mouseEvent);
			if (!transCheck) {
				//만약 이벤트에 실패했다면
				console.log("클릭 이벤트 발생 실패!");
			}
		}
	}

	$("#inputfilebtn").on("click", function() {
		//e.preventDefault();    
		//eventOccur(document.getElementById('orgFile'),'click');
		console.log("click");
		//eventOccur($("#fileopen"), 'click');
		$("#fileopen").click();
	});

	$('#fileopen').on('change', function() {
		var ext = $(this).val().split('.').pop().toLowerCase(); //확장자

		//배열에 추출한 확장자가 존재하는지 체크
		if ($.inArray(ext, [ 'gif', 'png', 'jpg', 'jpeg' ]) == -1) {
			resetFormElement($(this)); //폼 초기화
			window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
		} else {
			file = $('#fileopen').prop("files")[0];
			blobURL = window.URL.createObjectURL(file);
			$('#wearclothimg').attr('src', blobURL);
			//$('#wearclothimg').slideDown(); //업로드한 이미지 미리보기 
			//$(this).slideUp(); //파일 양식 감춤
		}
	});

	$("#saveimgbtn").on("click", function() {
		var form = $('#sendimgfile')[0];
		var formData = new FormData(form);
		formData.append("wearImg", $("#fileopen")[0].files[0]);

		$.ajax({
			url : "${pageContext.request.contextPath}/myroom/codibookSave",
			type : "POST",
			processData : false,
			contentType : false,
			data : formData,
			success : function(result) {
				alert("저장됐습니다.");
			},

			error : function(XHR, status, error) {
				console.log("실패");
			}
		});
	});
</script>

</html>