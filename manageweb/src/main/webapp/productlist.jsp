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

	<!-- Bootstrap -->
	<link rel="stylesheet" type="text/css" href="css/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="css/themes/icon.css">

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

<div class="row  col-lg-12 top2 " >
	<img src="img/logo.png"/>
	&nbsp;&nbsp;你现在的位置是：<a href="productlist.html">商品页面</a>
</div>
<div class="row  col-lg-12  ">

	<form action="#" class="form-inline  navbar-left">
		<div class="form-group" style="color: white;">
			商品编号：
			<input name="pnum" class="form-control" type="text" />
		</div>


		<div class="form-group">
			&nbsp;
		</div>
		<div class="form-group">
			&nbsp;
		</div>
		<button type="button"  class="btn btn-success btn-sm navbar-btn"><img src="img/search.png"/>查询</button>
	</form>
	<div class="navbar-right">
		<a href="intoProduct"><button type="button"  class="btn btn-primary btn-sm navbar-btn"><img src="img/tianjia.png"/>添加商品</button></a>
	</div>

</div>
<div class="container-fluid">

	<div class="row  col-lg-12  top2">
		<div class="row text-center top3">
			<div class="col-md-1 ">
				商品编号
			</div>
			<div class="col-md-1">
				商品型号
			</div>
			<div class="col-md-2">
				功能
			</div>
			<div class="col-md-2">
				续航时间（小时）
			</div>
			<div class="col-md-2">
				尘盒容积（L）
			</div>
			<div class="col-md-2">
				产品净重(Kg)
			</div>
			<div class="col-md-2">
				操作
			</div>
		</div>
		<div class="sss">

		</div>


	</div>
</div>
<div class="col-lg-12 navbar-fixed-bottom" id="pp" style="background:#efefef;border:1px solid #ccc; margin-bottom: 0px;">

</div>

<div id="mymodal" class="modal fade"><!-- modal固定布局，上下左右都是0表示充满全屏，支持移动设备上使用触摸方式进行滚动。。-->
	<div class="modal-dialog"><!-- modal-dialog默认相对定位，自适应宽度，大于768px时宽度600，居中-->
		<div class="modal-content"><!-- modal-content模态框的边框、边距、背景色、阴影效果。-->
			<div class="modal-header massage">
				<button class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">是否删除</h4>
			</div>

			<div class="modal-footer">
				<button class="btn btn-primary yes">确认</button>
				<button class="btn btn-default" data-dismiss="modal">关闭</button>
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
        selectAll();

	});


	function  del(prid) {
        $('.modal').modal();

        $(".yes").click(function () {
            window.location.href="delproduct?prid="+prid;

        });

    }

    function al(count){
        $('#pp').pagination({
            total:count,
            pageSize:14 ,
            pageList: [1,4,7,10,14],
            displayMsg:'共 {total} 记录',
            onSelectPage:function(pageNumber, pageSize){
                $(this).pagination('loading');
                alert('pageNumber:'+pageNumber+',pageSize:'+pageSize);
                $(this).pagination('loaded');
                /*var mohu = $("[name = pnum]").val().trim();*/
                $.ajax({
                    type:'POST',
                    url:'SelectPage',
                    data:{'pagenum':pageNumber,'pagesize':pageSize},
                    async:true,
                    dataType:'json',
                    success:function(data){
                        alert(1);
                        var types = data.tlist;
                        $(".sss").empty();
                        $.each(data.plist,function(i,n){
                            var node = '<div class="row text-center top4">';
                            node += '<div class="col-md-1 prid">'+n.prid+'</div>';
                            node += '<div class="col-md-1 ">'+types[i]+'</div>';
                            node += '<div class="col-md-2 ">'+n.function+'</div>';
                            node += '<div class="col-md-2 ">'+n.endurance+'</div>';
                            node += '<div class="col-md-2 ">'+n.l+'</div>';
                            node += '<div class="col-md-2 ">'+n.kg+'</div>';
                            node += '<div class="col-md-2">';
                            node += '<a href="ModifiyPrduct?prid='+n.prid+'"><img src="img/xiugai.png"/></a>&nbsp;&nbsp;';
                            node += '<a href="javascript:void(0)" onclick="del('+n.prid+')"><img src="img/schu.png"/></a>';
                            node += '</div>';
                            node += '</div>';
                            node = $(node);
                            node = $(node);
                            $(".sss").append(node);

                        })

                    }

                });
            }
        });
    }
    function selectAll() {
        $.ajax({
            type:"post",
            url:"SelectPage",
            async:true,
            data:{'pagenum':0,'pagesize':14},
            dataType:'json',
            success:function (data) {
                alert(data.count)
				var types = data.tlist;
				$.each(data.plist,function(i,n){
                    var node = '<div class="row text-center top4">';
                    node += '<div class="col-md-1">'+n.prid+'</div>';
                    node += '<div class="col-md-1 ">'+types[i]+'</div>';
                    node += '<div class="col-md-2 ">'+n.function+'</div>';
                    node += '<div class="col-md-2 ">'+n.endurance+'</div>';
                    node += '<div class="col-md-2 ">'+n.l+'</div>';
                    node += '<div class="col-md-2 ">'+n.kg+'</div>';

                    node += '<div class="col-md-2">';
                    node += '<a href="ModifiyPrduct?prid='+n.prid+'"><img src="img/xiugai.png"/></a>&nbsp;&nbsp;';
                    node += '<a href="javascript:void(0)" onclick="del('+n.prid+')"><img src="img/schu.png"/></a>';
                    node += '</div>';
                    node += '</div>';
					node = $(node);
                    node = $(node);
                    $(".sss").append(node);

            })
                alert("end");
				al(data.count);
            }
        });
    }

</script>
