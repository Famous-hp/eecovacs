<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <meta name="viewport"
	          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
		<link href="css/style.css" rel="stylesheet">
	    <link href="css/style-responsive.css" rel="stylesheet">
	    <link rel="stylesheet" type="text/css" href="css/themes/default/easyui.css">
		<link rel="stylesheet" type="text/css" href="css/themes/icon.css">
		<title>登录</title>
		<style type="text/css">
			p{
				font: bold 25px/60px "微软雅黑";
				color: white;
			}
			#kuang{
				margin-top: 150px;
				background-color: #8A8C93;
				border-radius: 15px;
				height: 280px;
			}
			#title{
				height: 60px;
				border-bottom: solid 1px white;
			}
			form{
				margin-top: 40px;
			}
		</style>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-md-push-4 text-center" id="kuang">
					<div class="row" id="title">
						<p>后台登录</p>
					</div>
					<div class="row">
						<form action="LoginTel" method="post">
							<div class="row form-group">
								<div class="col-md-8 col-md-push-2 input-group">
									<span class="input-group-addon">
										<span class="glyphicon glyphicon-user"></span>
									</span>
									<input class="form-control" value="123456" type="text" name="tel" placeholder="请输入账号" />
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-8 col-md-push-2 input-group">
									<span class="input-group-addon">
										<span class="glyphicon glyphicon-pencil"></span>
									</span>
									<input class="form-control" value="123456" type="password" name="pwd" placeholder="请输入密码" />
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-8 col-md-push-2 input-group">
									<input class="btn btn-success form-control" type="submit" value="登录"/>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
