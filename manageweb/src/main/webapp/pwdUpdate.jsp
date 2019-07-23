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
			height: 500px;
			border: 1px solid #B8D757;
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
		
	</style>
    

</head>
<body>
	
<div class="container-fluid ">
	<div class="row  col-lg-12 top2 ">
		<img src="img/logo.png"/>
		&nbsp;&nbsp;你现在的位置是：<a href="pwdUpdate.html">密码修改页面</a>
	</div>
	<div class="row top1">
		<form action="#" method="post" class="form-horizontal ">
	        <div class="form-group">
	            <span class="col-sm-2 text-right">旧密码：</span>
	            <div class="col-sm-3">
	                <input class="form-control " name="old" type="text" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')"/>
	            	<input class="oldpwd" hidden  value="${sessionScope.users.pwd}">
				</div>
				<div class="tips1" style="display: none;color: red;padding: 10px 0px 0px 95px;">密码不正确!!!</div>
	        </div>
	        <div class="form-group">
	            <span class="col-sm-2 text-right"> 新密码：</span>
	            <div class="col-sm-3">
	                <input class="form-control" name="pwd" type="text" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')"/>
	            </div>
	            <span></span>
	        </div>
        
	        <div class="form-group">
	            <span class="col-sm-2 text-right"> 确认新密码：</span>
	            <div class="col-sm-3">   	
	                <input class="form-control" name="repwd" type="text" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')"/>
	            </div>
	            <div class="tips" style="display: none;color: red;padding: 10px 0px 0px 95px;">两次密码输入不一致!!!</div>
	        </div>
        
            <div class="col-md-offset-2 col-sm-1 saves" >
                <input class=" form-control btn-primary " type="submit" value="&nbsp&nbsp&nbsp保存"/>                
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
<script type="text/javascript">
    $(function(){
        $("[name = old]").blur(function(){
            var pwd = $(this).val();
			var oldpwd = $(".oldpwd").val();
			alert(oldpwd);


            if(pwd != oldpwd){
                $(".tips1").show();
                $(".saves>input").attr("disabled","disabled");

            }else{
                $(".tips1").hide();
                $(".saves>input").removeAttr("disabled");
                twopwd();
            }
        });

    })

    function twopwd(){
        $("[name='repwd']").blur(function(){
            var pwd = $("[name='pwd']").val();

            var repwd = $(this).val();
            if(repwd != pwd){
                $(".tips").show();
                $(".saves>input").attr("disabled","disabled");
            }else{
                $(".tips").hide();
                $(".saves>input").removeAttr("disabled");
            }
        });
    }
	
</script>
