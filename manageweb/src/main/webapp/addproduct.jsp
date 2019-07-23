<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head lang="en">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="viewport"
		  content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
	<title>Bootstrap 基本模板</title>
	<script type="text/javascript" charset="utf-8" src="ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="ueditor.all.min.js"> </script>
	<script type="text/javascript" charset="utf-8" src="lang/zh-cn/zh-cn.js"></script>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/clndr.css"/>
	<style type="text/css">
		body{
			padding:10px ;
			background-color: #494A5F;
			overflow-x: hidden;

		}
		.top1{
			border: 1px solid #B8D757;
			margin: 20px;
			margin-top: 38px;

		}



		.top2{
			margin: auto;
			border: 1px solid #3B3B1F;
			border-radius:10px ;
			background-color: #66677C;
			height: 35px;
			padding-top: 5px;
			color: white;
		}
		.top2>a{
			color: greenyellow;
		}


		.form-horizontal{
			margin-top: 30px;
			height: 100%;
		}
		span{
			margin-top: 10px;
		}
		input{
			text-align: left;
		}
		.as{
			color: red;
			transform: scale(2) rotate(30deg);
		}
		.txx:after{
			content: '.';
			display: block;
			clear: both;
		}
		.upimg input {
			position: absolute;
			width: 100px;
			height: 100px;
			opacity: 0;

		}

		#showui {
			display: flex;
			justify-content: flex-start;
		}

		#showui li {
			width: 150px;
			height: 150px;
			position: relative;
			overflow: hidden;
			display: inline-block;
			margin-right: 5px;
		}

		#showui li img.showimg {
			position: absolute;
			text-align: center;
			top: 50%;
			left: 50%;
			transform: translate(-50%, -50%);
			z-index: 6;
		}

		.showdiv {
			position: absolute;
			z-index: 9;
			bottom: 0;
			width: calc(100% - 20px);
			padding: 10px;
			display: flex;
			justify-content: space-around;
			background: rgba(0, 0, 0, .6);
		}

		.showdiv img {
			width: 20px;
			height: 20px;
			cursor: pointer;
		}

		#showui li:first-child img.left {
			opacity: .6;
			cursor: no-drop;
		}

		#showui li:last-child img.right {
			opacity: .6;
			cursor: no-drop;
		}

		.oneright {
			opacity: .6;
			cursor: no-drop !important;
		}


	</style>


</head>
<body>

<div class="container-fluid ">
	<div class="row col-lg-12 top2 ">
		<img src="img/logo.png"/>
		&nbsp;&nbsp;你现在的位置是：<a href="addproduct.html">商品新增页面</a>
	</div>
	<div class="row top1">
		<form action="#" method="post" enctype="multipart/form-data"  class="form-horizontal ">
			<div style="color: white;">
				<div class="form-group" >
					<span class="col-sm-2 text-right"> 功能：</span>
					<div class="col-sm-2">
						<input class="form-control" name="function" type="text" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')"/>
					</div>

					<span class="col-sm-1 text-right"> 续航时间（小时）：</span>
					<div class="col-sm-2">
						<input class="form-control" name="time" type="text" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')"/>
					</div>

					<span class="col-sm-1 text-right"> 型号：</span>
					<div class="col-sm-2">
						<select name="type" style="color: black;" class="form-control">
							<c:forEach items="${tlist}" var="t">
								<option value="${t.typeId}">${t.typeName}</option>
							</c:forEach>

							<option>1123456</option>
							<option>1123456</option>
						</select>
					</div>

				</div>


				<div class="form-group" style="margin-top: 10px;">
					<span class="col-sm-2 text-right"> 充电电池：</span>
					<div class="col-sm-2">
						<select name="cell" style="color: black;" class="form-control">
							<c:forEach items="${clist}" var="c">
								<option value="${c.cellId}">${c.cellName}</option>
							</c:forEach>
						</select>
					</div>

					<span class="col-sm-1 text-right"> 电池容量(mAh)：</span>
					<div class="col-sm-2">
						<input class="form-control" name="mah" type="text" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')"/>
					</div>

					<span class="col-sm-1 text-right"> 额定功率（W）：</span>
					<div class="col-sm-2">
						<input class="form-control" name="ww" type="text" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')"/>
					</div>

				</div>

				<div class="form-group" style="margin-top: 10px;">
					<span class="col-sm-2 text-right"> 额定电压（V）：</span>
					<div class="col-sm-2">
						<input class="form-control" name="vv" type="text" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')"/>
					</div>

					<span class="col-sm-1 text-right"> 充电时间 （小时）：</span>
					<div class="col-sm-2">
						<input class="form-control" name="hh" type="text" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')"/>
					</div>

					<span class="col-sm-1 text-right"> 定时功能：</span>
					<div class="col-sm-2">
						<select name="overtime" style="color: black;" class="form-control">
							<option value="1">有</option>
							<option value="0">无</option>
						</select>
					</div>

				</div>


				<div class="form-group" style="margin-top: 10px;">
					<span class="col-sm-2 text-right"> 噪音 分贝：</span>
					<div class="col-sm-2">
						<input class="form-control" name="sound" type="text" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')"/>
					</div>

					<span class="col-sm-1 text-right"> 边刷：</span>
					<div class="col-sm-2">
						<select name="brush" style="color: black;" class="form-control">
							<option value="1">有</option>
							<option value="0">无</option>
						</select>
					</div>

					<span class="col-sm-1 text-right"> 尘盒容积（L）：</span>
					<div class="col-sm-2">
						<input class="form-control" name="ll" type="text" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')"/>
					</div>

				</div>

				<div class="form-group" style="margin-top: 10px;">
					<span class="col-sm-2 text-right"> 产品净重(Kg)：</span>
					<div class="col-sm-2">
						<input class="form-control" name="kg" type="text" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')"/>
					</div>
				</div>

				<div class="form-group">
					<span class="col-sm-2 text-right" style="font: bold 18px/20px '微软雅黑';">商品描述:</span>
					<div class="col-sm-2">
						<textarea name="destory" style="width: 100%;color: #000000;"></textarea>
					</div>

				</div>

				<div id="wrapper" class="form-group">
					<span class="col-sm-2 text-right"> 商品图片：</span>&nbsp;&nbsp;&nbsp;&nbsp;
					<div class="col-sm-8">

						<div>
							<div id="showimg">
								<ul id="showui">
								</ul>
								<div id="showinput">
								</div>
							</div>
							<input type="file" id="upgteimg" value="浏览图片"  multiple="multiple" />
						</div>
					</div>

				</div>


			</div>
			<div class="col-md-offset-5 col-sm-1 saves" >
				<input class=" form-control btn-primary " type="button" id="submit" value="&nbsp;确认" style="margin-bottom: 33px;"/>
			</div>
			<div class="col-sm-1">
				<input class=" form-control btn-primary " type="reset" value="&nbsp;重置"/>
			</div>

	</form>
</div>

</div>


</body>
</html>
<!-- 如果要使用Bootstrap的JS插件，必须引入jQuery -->
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<!-- Bootstrap的JS插件-->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/updateimg.js" ></script>

