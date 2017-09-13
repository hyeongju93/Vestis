<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script 
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
<script 
	src="https://github.com/niklasvh/html2canvas/releases/download/v0.5.0-beta4/html2canvas.min.js"></script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.1/themes/base/jquery-ui.css" />

<title>Insert title here</title>

<style type="text/css">
html, body {
	font-size:medium;
	height:100%;
	overflow:hidden;
	font-family: "Open Sans", Helvetica, Arial, sans-serif;
}
.box {
	overflow:hidden;
	width: 200px;
	height: 200px;
	min-width: 30px;
	min-height: 30px;
	background-color: #FFFFFFFF;
}

.dragger {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 60px;
	height: 60px;
}

.left-box {
	background: #F5DEB3;
	float: left;
	width: 48%;
	height:750px;
	min-height:85%;
	padding:1%
}

.right-box {
	float: right;
	width: 48%;
	height:750px;
	min-height:85%;
	background-color: rgba(255, 255, 255, 0.9);
	border-radius: 1em;
}

#space {
	position: relative;
	padding-left: 10%;
	padding-right: 10%;
	height: 100%;
}

#row {
	padding-left: 10%;
}

div:focus {
    background-color: Aqua;
}
</style>
</head>
<body>
    
    <c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
    
	<div>
		<div id="row">
			<div class="col-md-12">
				<h10 class="text-left" style="font-size:small;">메인>MY Room>코디북>코디하기</h10>
			</div>
		</div>
		<div id="space">
			<div class="left-box" style="border-radius: 1em;">
				<button id="save" style="float:right;">저장하기</button>
				
			
			</div>
			<div class="right-box">
				<ul class="nav nav-pills" style="width:100%">
					<li class="active menu"><a href="#"> <span class="badge pull-right">42</span>전체</a></li>
					<li class="menu"><a href="#"> <span class="badge pull-right">16</span>상의
					</a></li>
					<li class="menu"><a href="#"> <span class="badge pull-right">16</span>하의
					</a></li>
					<li class="menu"><a href="#"> <span class="badge pull-right">16</span>신발
					</a></li>
					<li class="menu"><a href="#"> <span class="badge pull-right">16</span>외투
					</a></li>
					<li class="menu"><a href="#"> <span class="badge pull-right">16</span>악세사리
					</a></li>
				</ul>
				<div style="overflow:auto; width:100%; height:85.6%">
				<ul style="list-style:none; padding-left:0px;">
                    <li class="col-sm-3" style="padding-left:0px;">
                        <a class="thumbnail">
                            <img src="${pageContext.request.contextPath}/assets/img/coat.png" name="img" style="width:auto; height:17%">
                        </a>
                    </li>
                    <li class="col-sm-3" style="padding-left:0px;">
                        <a class="thumbnail">
                            <img src="${pageContext.request.contextPath}/assets/img/blank.png" name="img" style="width:auto; height:17%">
                        </a>
                    </li>
                    <li class="col-sm-3" style="padding-left:0px;">
                        <a class="thumbnail">
                            <img src="${pageContext.request.contextPath}/assets/img/cap.png" name="img" style="width:auto; height:17%">
                        </a>
                    </li>
                    <li class="col-sm-3" style="padding-left:0px;">
                        <a class="thumbnail">
                            <img src="${pageContext.request.contextPath}/assets/img/shoes.png" name="img" style="width:auto; height:17%">
                        </a>
                    </li>
                    <li class="col-sm-3" style="padding-left:0px;">
                        <a class="thumbnail">
                            <img src="${pageContext.request.contextPath}/assets/img/blank2.png" name="img" style="width:auto; height:17%">
                        </a>
                    </li>
                    <li class="col-sm-3" style="padding-left:0px;">
                        <a class="thumbnail">
                            <img src="${pageContext.request.contextPath}/assets/img/coat2.png" name="img" style="width:auto; height:17%">
                        </a>
                    </li>

                   
                </ul>
				</div>

			</div>
		</div>
	</div>
</body>

<!-- 메뉴에 대한 자바스크립트 -->
<script type="text/javascript">
	//메뉴를 클릭했을 때 그 메뉴가 강조
	$(".menu").click(function(){
		$(".menu").removeClass("active");
		var $this = $(this);
		console.log($this);
		$this.addClass("active");

	});
</script>

<!-- 옷 이미지에 대한 자바스크립트 -->
<script type="text/javascript">
	//옷 이미지 드래그
	$.fn.dragTouch = function() {

		var offset = null;
		var start = function(e) {
			var orig = e.originalEvent;
			var pos = $(".box").position();
			offset = {
				x : orig.changedTouches[0].pageX - pos.left,
				y : orig.changedTouches[0].pageY - pos.top
			};
		};
		var move = function(e) {
			e.preventDefault();
			var orig = e.originalEvent;
			$(".box").css({
				top : orig.changedTouches[0].pageY - offset.y,
				left : orig.changedTouches[0].pageX - offset.x
			});
		};
		this.bind("touchstart", start);
		this.bind("touchmove", move);
	};
	
	//옷 이미지 사이즈 조절
	$.fn.resizeTouch = function() {
		var offset = null;
		var start = function(e) {
			var orig = e.originalEvent;
			var pos = $(this).position();
			offset = {
				x : orig.changedTouches[0].pageX - pos.left,
				y : orig.changedTouches[0].pageY - pos.top
			};
		};
		var resize = function(e) {
			e.preventDefault();
			var orig = e.originalEvent;
			$(".box").css({
				height : orig.changedTouches[0].pageY - offset.y,
				width : orig.changedTouches[0].pageX - offset.x
			});
			$(".dragger").css({
				height : $(".box").height(),
				width : $(".box").width()
			});
		};
		this.bind("touchstart", start);
		this.bind("touchmove", resize);
	};

	//메뉴에서 옷을 클릭했을 때 왼쪽 공간에 옷이 추가되도록 함
	var count = 0;
	$("[name=img]")
			.click(
					function choose() {
						var layer = event.srcElement;

						var img = layer.src
						
						//tabindex : 옷 이미지를 클릭했을 때 하늘색 테두리가 나오도록 하기 위함
						//select(count) : 옷 이미지를 클릭했을 때 옷이 맨 앞으로 나오도록 zIndex를 설정하도록 함
						//remove(count) : 옷을 더블클릭하면 옷 이미지가 사라지도록 하는 메소드
						var tag = "<div id=\"cloth"+count+"\" tabindex=\"-1\" onclick=\"select("+count+")\" class=\"box\" ><img src="
								+ img
								+ " name=\"cloth\" ondblclick=\"remove("
								+ count
								+ ")\" class=\"dragger\" id=\"img\" style=\"width: 100%; height: 100%; cursor:pointer\" /></div>";

						count++;

						console.log(tag);
						
						//왼쪽 공간에 이미지 추가
						$(".left-box").append(tag);

						
						console.log(img);
						
						//드래그와 이미지 조절이 되도록 함
						// jQuery UI implementation for mouse drag/resize   
						$(".box").draggable();
						$(".box").resizable();
						// implementation for touch drag/resize 
						$(".dragger").dragTouch();

						$(".ui-resizable-se").resizeTouch();

					});

	//더블클릭했을 경우 이미지를 삭제해주는 메소드
	function remove(no) {
		console.log("double click");
		/* event.srcElement : 이벤트가 발생한 개체를 반환/설정 
		event : document 에서 발생하는 이벤트 자체를 가르킨다

		srcElement : 이벤트가 발생된 document 내의 객체이다.*/
		var layer = event.srcElement;
		console.log(layer);
		console.log(no);
		$("#cloth" + no).remove()
	};

	
	//이미지를 클릭했을 때 zIndex값을 1씩 증가시켜서 맨 앞으로 나오게 하는 메소드
	var index = 1;
	function select(no) {
		$("#cloth"+no).css("zIndex", index);
		index++;
		
		$(".box").css("background", "transparent");
		
		$("#cloth"+no).focus();
		console.log("click"+ index);
	};
</script>

<!-- 왼쪽 공간에 넣은 이미지를 저장하기 위한 자바스크립트 -->
<script type="text/javascript">
//이미지 생성
function makeShareImage() {
	element = $(".left-box");
	console.log("make image")
	html2canvas(element, {
		onrendered : function(canvas) {
			getCanvas = canvas;
			upload();
		}
	});
}

//이미지 업로드
function upload() {
	console.log("upload");
	alert(typeof getCanvas.toDataURL("image/png"));

	var imageData = getCanvas.toDataURL("image/png");
	window.open(imageData);
	var formData = new FormData();
	formData.append('file', imageData);
}

$("#save").click(function() {
	/* console.log("button click");
	makeShareImage(); */
	
	//이미지 만들기
	 html2canvas($(".left-box"), {
        onrendered: function(canvas) {
            // canvas is the final rendered <canvas> element
            //이미지 형태 지정
            var myImage = canvas.toDataURL("image/png");
            console.log(myImage);
            //새 창으로 저장한 이미지 띄우는 것 삭제할 예정
            var iframe = "<iframe width='100%' height='100%' src='" + myImage + "'></iframe>"
            var x = window.open();
            x.document.open();
            x.document.write(iframe);
            x.document.close();
        }
    }); 
    
});

</script>
</html>