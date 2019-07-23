<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-
scale=1">
    <meta name="viewport"
          content="width=device-width, user-scalable=no,
initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"/>
    <title>Bootstrap 基本模板</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css"
          href="css/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css"
          href="css/themes/icon.css">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        body{
            padding:10px ;
            background-color: #494A5F;
            overflow-x: hidden;

        }
        .top1{
            border: 1px solid #3B3B1F;
            border-radius:10px ;
            color: white;
        }
        .top2{

            border: 1px solid #122B40;
            color: white;
        }
        .top3 div{
            height: 30px;
            font: bold 14px/30px "微软雅黑";
            background-color: #494A5F;
            border: 1px solid #E3E3E3;
        }
        .top4{
            border: 1px solid #E3E3E3;
            background-color: #494A5F;
            vertical-align: middle;
            font: bold 12px/30px "微软雅黑";
        }

    </style>


</head>
<body>

<div class="row col-lg-12 top2 ">
    <img src="img/logo.png"/>
    &nbsp;&nbsp;你现在的位置是：<a href="order.html">订单页面</a>
</div>
<div class="row  col-lg-12  ">

    <form action="#" class="form-inline  navbar-left">
        <div class="form-group" style="color: white;">
            商品名称：
            <input class="form-control" type="text" />
        </div>


        <div class="form-group">
            &nbsp;
        </div>
        <div class="form-group">
            &nbsp;
        </div>
        <button type="button"  class="btn btn-success btn-sm
navbar-btn"><img src="img/search.png"/>查询</button>
    </form>


</div>
<div class="container-fluid">

    <div class="row  col-lg-12  top2">
        <div class="row text-center top3">
            <div class="col-md-1 ">
                订单编号
            </div>
            <div class="col-md-2">
                商品名称
            </div>
            <div class="col-md-1">
                买家名称
            </div>
            <div class="col-md-1">
                购买数量
            </div>
            <div class="col-md-1">
                单价
            </div>
            <div class="col-md-1">
                合计
            </div>
            <div class="col-md-1">
                是否付款
            </div>
            <div class="col-md-1">
                是否发货
            </div>
            <div class="col-md-2">
                创建时间
            </div>
            <div class="col-md-1">
                操作
            </div>
        </div>


        <div class="row text-center top4">
            <c:forEach items="${olist}" var="o"
                       varStatus="ol">
                <div class="col-md-1 ">
                        ${o.oid}
                </div>
                <div class="col-md-2">
                        ${tlist.get(ol.index)}
                </div>
                <div class="col-md-1">
                        ${ulist.get(ol.index).name}
                </div>
                <div class="col-md-1">
                        ${o.num}
                </div>
                <div class="col-md-1">
                        ${o.subtotal}
                </div>
                <div class="col-md-1">
                        ${o.total}
                </div>
                <div class="col-md-1">
                    <c:if test="${o.isno == 0}">
                        已付款
                    </c:if>
                    <c:if test="${o.isno == 1}">
                        未付款
                    </c:if>
                </div>
                <div class="col-md-1  pay">
                    <c:if test="${o.send == 0}">
                        已付款
                    </c:if>
                    <c:if test="${o.send == 1}">
                        未付款
                    </c:if>
                </div>
                <div class="col-md-2">
                        ${timelist.get(ol.index)}
                </div>

                <div class="col-md-1 by1">
                    <a href="javascript:void(0)"
                       class="xscv"><img src="img/xiugai.png"/></a>&nbsp;&nbsp;

                </div>

                <div class="col-md-1 by2"
                     style="display: none;">
                    <a href="javascript:void(0)"
                       style="color: white" class="save">保存</a>&nbsp;&nbsp;
                </div>
            </c:forEach>


        </div>


    </div>
</div>
<div class="col-lg-12 navbar-fixed-bottom" id="pp"
     style="background:#efefef;border:1px solid #ccc; margin-bottom: 0px;">
</div>

<div id="mymodal" class="modal fade"><!-- modal固定布局，上下左右都是0
表示充满全屏，支持移动设备上使用触摸方式进行滚动。。-->
    <div class="modal-dialog"><!-- modal-dialog默认相对定位，自适
应宽度，大于768px时宽度600，居中-->
        <div class="modal-content"><!-- modal-content模态框的
边框、边距、背景色、阴影效果。-->
            <div class="modal-header">
                <button class="close" data-
                        dismiss="modal">&times;</button>
                <h4 class="modal-title">我是标题</h4>
            </div>
            <div class="media-body ">
                <p>  确认删除</p>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary">确认
                </button>
                <button class="btn btn-default" data-
                        dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>



</body>
</html>
<!-- 如果要使用Bootstrap的JS插件，必须引入jQuery -->
<script src="js/jquery-1.12.4.js"></script>
<!-- Bootstrap的JS插件-->
<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(function(){
        $('#pp').pagination({
            total:10,
            pageSize:1 ,
            pageList: [1,2,3,4,5],
            displayMsg:'共 {total} 记录' ,
            onRefresh:function(pageNumber, pageSize){
                $(this).pagination('loading');
                alert('pageNumber:'+pageNumber+',pageSize:'+pageSize);
                $(this).pagination('loaded');
            } ,
            onSelectPage:function(pageNumber, pageSize){
                $(this).pagination('loading');
                alert('pageNumber:'+pageNumber+',pageSize:'+pageSize);
                $(this).pagination('loaded');
            }
        });
        $('.xscv').click(function(){
            $(this).parent().prev().prev().html("");
            /*$('.pay').html("");*/
            var js = "<select name='aa' style='color:black'><option value='已发货'>已发货</option><option value='未发货'>未发货</option></select>";
            $(this).parent().prev().prev().append(js);
            $(this).parent().css("display","none");
            $(this).parent().next().show();

        });

        $('.save').click(function(){

            var ck = confirm("是否执行该操作！！！");
            if(ck){
                var ss=$("[name=aa]").val();
                var ys = $(this).parent().prev().prev().prev().prev().prev().prev().prev().prev().prev().prev().text();

                alert(ss);
                alert(ys);
                $(this).parent().prev().prev().prev().empty();
                $(this).parent().prev().prev().prev().html(ss);
                $(this).parent().css("display","none");
                $(this).parent().prev().show();
            }
        });


    })

</script>
