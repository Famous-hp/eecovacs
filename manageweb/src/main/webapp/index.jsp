<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
	<link rel="stylesheet" type="text/css" href="css/nav.css">
    <link rel="stylesheet" type="text/css" href="fonts/iconfont.css">
</head>
<body style="overflow-x: hidden;">
		<div class="nav" style="position: fixed;">
	       
	          <div style="border-bottom:1px solid rgba(255,255,255,.1)"><img src="images/mini.png" ><a style="font: bold 16px/20px '微软雅黑';float: left;margin-top: 20px;">导航菜单</a></div>
	      
	        <ul>
	            <li class="nav-item">
	                <a href="javascript:;"><i class="my-icon nav-icon icon_3"></i><span>订单管理</span><i class="my-icon nav-more"></i></a>
	                <ul>
	                    <li><a href="selectOrder" target="ord"><span>订单列表</span></a></li>
	                    <li><a href="selectAllfast" target="ord"><span>快递公司管理</span></a></li>
	                    
	                </ul>
	            </li>
	            <li class="nav-item">
	                <a href="javascript:;"><i class="my-icon nav-icon icon_1"></i><span>商品管理</span><i class="my-icon nav-more"></i></a>
	                <ul>
	                    <li><a href="productlist.jsp" target="ord"><span>商品列表</span></a></li>
	                    <li><a href="selectAllSort" target="ord"><span>分类管理</span></a></li>
	                    <li><a href="selectAlltype" target="ord"><span>型号管理</span></a></li>
	                    <li><a href="intoProduct" target="ord"><span>添加商品</span></a></li>
	                    <li><a href="SelectUpGood" target="ord"><span>上架商品</span></a></li>
	                </ul>
	            </li>
	            <li class="nav-item">
	                <a href="javascript:;"><i class="my-icon nav-icon icon_2"></i><span>管理员中心</span><i class="my-icon nav-more"></i></a>
	                <ul>
	                    <li><a href="pwdUpdate.jsp" target="ord"><span>修改密码</span></a></li>
	                    <li><a href="exit.jsp"><span>退出登录</span></a></li>
	                </ul>
	            </li>
	        </ul>
	    </div>
	    <div  style="margin-left: 15%;">
        	<iframe src="1.jsp" name="ord" scrolling="auto"  style="width: 100%; border: 1px;margin-left: 15px;height: calc(100vh);"></iframe>
        </div>
	
	<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
	<script type="text/javascript" src="js/nav.js"></script>
</body>
</html>