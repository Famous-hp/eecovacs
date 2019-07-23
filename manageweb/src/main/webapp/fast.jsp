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
        .all_fast>span{
            margin-left: 10px;
        }

    </style>


</head>
<body>

<div class="container-fluid ">
    <div class="row col-lg-12 top2 ">
        <img src="img/logo.png"/>
        &nbsp;&nbsp;你现在的位置是：<a href="fast.html">快递页面</a>
    </div>
    <div class="row top1">

        <form action="addfast" class="form-horizontal ">

            <div class="form-group">
                <span class="col-sm-2 text-right">已有快递公司：</span>
                <div class="col-sm-3 all_fast">
                    <c:forEach items="${fastlist}" var="f">
                        <span name="${f.fastId}">${f.name}</span>
                    </c:forEach>
                </div>
            </div>

            <div class="form-group">
                <span class="col-sm-2 text-right">添加快递公司：</span>
                <div class="col-sm-3">
                    <input class="form-control " name="new_fast" type="text" required="required" onkeyup="this.value=this.value.replace(/\s+/g,'')"/>
                </div>
            </div>


            <div class="col-md-offset-2 col-sm-1 saves" >
                <input name="save" class=" form-control btn-primary " type="submit" value="&nbsp&nbsp&nbsp保存"/>
            </div>
            <div class="col-sm-1">
                <input class=" form-control btn-primary " name="del" type="reset" value="&nbsp&nbsp&nbsp删除"/>
            </div>

        </form>
    </form>
</div>


</div>

<div id="mymodal" class="modal fade" style="color: black;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">请选择需要删除的快递公司</h4>
            </div>
            <div class="media-body">
                <select style="margin:5px;margin-left: 20px;width: 50%;font:normal 16px/18px '微软雅黑';" name="ff">
                    <c:forEach items="${fastlist}" var="f">
                        <option value="${f.fastId}">${f.name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="modal-footer" >
                <button class="btn btn-default ok" >确认</button>
                <button class="btn btn-primary quit">取消</button>
            </div>
        </div>
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
        $("[name='new_fast']").blur(function(){
            var name = $("[name='new_fast']").val().trim();
            if(name == ""){
                $(".saves>input").attr("disabled","disabled");
            }else{
                $(".saves>input").removeAttr("disabled");

            }
        });

        $("[name=save]").click(function(){
            var ck = confirm("是否确定添加！！！");
            if(ck == false){
               return false;
            }
        });

        $("[name='del']").click(function(){
            $('.modal').modal();
        });

        $(".ok").click(function(){
            var fid = $('[name=ff]').val();
           window.location.href = "delfast?fid="+fid;
        });

        $(".quit").click(function(){
            $('.modal').modal('hide');

        });
    })



</script>
