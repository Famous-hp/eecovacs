<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
	</head>
	<body>
		<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>表单</title>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <link rel="stylesheet" href="css/bootstrap.min.css"/>
	<style type="text/css">
		body{
			background-color: #494A5F;
			color: white;
		}
		body>div{
			margin: 15px;
		}
	</style>
	</head>
	
<body >   
    
</body>  

</html>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script type="text/javascript">
	var con;
	con=confirm("是否退出"); //在页面上弹出对话框
	if(con==true){
		window.location.href="Exit";
	}else{
		window.location.href="index.jsp";
	}
</script>