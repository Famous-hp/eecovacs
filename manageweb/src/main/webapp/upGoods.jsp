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
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="lang/zh-cn/zh-cn.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/clndr.css"/>
	<style type="text/css">
		body{
			padding:10px ;
			background-color: #494A5F;
			color: white;
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
		
	</style>
    

</head>
<body>
	
<div class="container-fluid ">
	<div class="row col-lg-12 top2 ">
		<img src="img/logo.png"/>
		&nbsp;&nbsp;你现在的位置是：<a href="upGoods.html">商品上架页面</a>
	</div>
	<div class="row top1">
		<form action="#" method="post" enctype="multipart/form-data"  class="form-horizontal ">
	        
	        <div class="form-group">
	            <span class="col-sm-2 text-right"> 标题：</span>
	            <div class="col-sm-3">
	                <input class="form-control" name="title" type="text" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')"/>
	            </div>
	            
	        </div>
        
	        <div class="form-group">
	            <span class="col-sm-2 text-right"> 价格：</span>
	            <div class="col-sm-3">   	
	                <input class="form-control" name="price" type="text" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')"/>
	            </div>
	        </div>
        	
        	<div class="form-group">
	            <span class="col-sm-2 text-right">商品编号：</span>
	            <div class="col-sm-3">
	               <!-- <input class="form-control" name="old" type="text" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')"/>-->
	               <select name="pnum" style="color: black;" class="form-control">
					   <c:forEach items="${plist}" var="p">
						   <option value="${p}">${p}</option>
					   </c:forEach>

	               </select>
	            </div>
	            <span></span>
	        </div>

			<div class="form-group">
				<span class="col-sm-2 text-right">商品分类：</span>
				<div class="col-sm-3">
					<!-- <input class="form-control" name="old" type="text" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')"/>-->
					<select name="type" style="color: black;" class="form-control">
						<c:forEach items="${tlist}" var="t">
							<option value="${t.sortId}">${t.sortName}</option>
						</c:forEach>
					</select>
				</div>
				<span></span>
			</div>

        	
        	<div class="form-group">
	            <span class="col-sm-2 text-right"> 上架数量：</span>
	            <div class="col-sm-3">
	                <input class="form-control" name="num" type="text" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')"/>
	            </div>
	            <div class="tips" style="display: none;color: red;padding: 10px 0px 0px 95px;">库存量不足，请重新输入！！！</div>
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

            <div class="col-md-offset-2 col-sm-1 saves" >
				<input class=" form-control btn-primary " type="button" id="submit" value="&nbsp&nbsp&nbsp保存" style="margin-bottom: 33px;"/>
            </div>
            <div class="col-sm-1">
              <input class=" form-control btn-primary " type="reset" value="&nbsp&nbsp&nbsp重置"/>     
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
<script type="text/javascript" src="js/UpGoodimg.js"></script>

