<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<DOCTYPE html>
<html>
      <head>
      	<script type="text/javascript" async="" src="js/ecommerce.js"></script>
		<script type="text/javascript" async="" src="js/mv.js"></script>
		<script type="text/javascript" async="" src="js/mba.js"></script>
    <meta charset="utf-8">
    <title>科沃斯官网商城_扫地机器人_擦窗机器人_净化机器人_空气净化器-智生活享人生</title>
    <meta name="keywords" content="科沃斯,科沃斯机器人,科沃斯官网,科沃斯商城，科沃斯官网商城，扫地机器人,智能扫地机器人,家用扫地机,全自动扫地机,空气净化器，擦窗机器人,家用机器人">
    <meta name="description" content="科沃斯——让机器人服务全球家庭，科沃斯机器人官网商城提供地宝(扫地机器人，家用全自动智能扫地机)、窗宝(擦窗机器人)、沁宝(净化机器人)、亲宝(管家机器人)等家用智能机器人产品介绍，常见问题，用户服务，企业资讯等内容，欢迎致电科沃斯热线：400-886-8888了解更多信息。">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <meta name="baidu-site-verification" content="jTiV8KRQYO">
    <link rel="stylesheet" type="text/css" href="css/base-f573e481e2.css">
    <!--[if lte IE 9]>
    <script>window.location.href="https://mall.ecovacs.cn/upgrade-browser.html?fr="+encodeURIComponent(location.href);</script>
    <![endif]-->
    <script type="text/javascript" async="" src="js/bs.js"></script>
    <script async="" src="js/analytics.js"></script>
    <script src="#"></script>
    <script type="text/javascript" async="" src="js/mvl.js"></script>
    <script type="text/javascript" src="js/jquery.easyui.min.js"></script>

    <script>
        var SITE_URL = '#';
        var SHOP_URL = '#';
        var SHOP_ORDER_URL = '#';
        var SHOP_CART_URL = '#';
        var STATIC_URL = 'https://static.ecovacs.cn/p';
        var PRIVATE_STATIC_URL = 'https://pstatic.ecovacs.cn';
        var IMG_URL = 'https://static.ecovacs.cn';
        var API_URL = 'https://shop-api.ecovacs.cn/shopApi';
        var ACCOUNT_URL = 'https://account.ecovacs.cn';
        var DEVICE = 'pc';
    </script>
    <script>
    //360
    var _mvq = _mvq || [];
    _mvq.push(['$setAccount', 'm-213983-0']);

    _mvq.push(['$logConversion']);
    (function() {
        var mvl = document.createElement('script');
        mvl.type = 'text/javascript'; mvl.async = true;
        mvl.src = ('https:' == document.location.protocol ? 'js/mvl.js' ]);
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(mvl, s);
    })();


    //baidu
    var _hmt = _hmt || [];
    (function() {
      var hm = document.createElement("script");
      hm.src = "https://hm.baidu.com/hm.js?b106667a483b746a93ed7185568c98ec";
      var s = document.getElementsByTagName("script")[0];
      s.parentNode.insertBefore(hm, s);
    })();


    //ga
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-56698519-1', 'auto');
    ga('require','ecommerce');   //添加GA监测电商模块
    ga('send', 'pageview');

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-46363523-26']);
    _gaq.push(['_trackPageview']);
    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

</script>

<!--官网个人中心统计代码-->
<style>
	/*.kws-ad-close{
		z-index: 9999;
		position: absolute;
		top: 0;right: 0;width: 19px;
		height: 19px;font-size: 20px;
		background: rgba(0,0,0,.2) none repeat scroll 0 0!important;
		filter: alpha(opacity=20);
		background: #000;
		text-align: center;
		line-height: 19px;
		cursor: pointer;
		}
		.kws-ad-close:hover{
			background:rgba(0, 0, 0, 0.3) none repeat scroll 0 0 !important;
			filter:Alpha(opacity=30);
			 background:#000;
			 }
			 .kws-ad-close>span{
			 	position: relative;
			 	display: block;
			 	color: #fff;
			 	}
			 	.kws-ad-modal{
			 		z-index: 99999;
			 		position: fixed !important;
			 		opacity: 0.5;
			 		background:#000;
			 		top:0;
			 		left:0;
			 		right:0;
			 		bottom:0;
			 		width:100%
			 		}
			 		.kws-ad-layer{
			 			z-index: 999999 !important;
			 			position: absolute;
			 			overflow: hidden;
			 			}
			 			.kws-ad-layer-closeBtn{
			 				width: 80px;
			 				height:80px;
			 				overflow:hidden;
			 				position:absolute;
			 				right:-2px;
			 				top: -2px;
			 				cursor: pointer;
			 				}
			 				.kws-ad-overscreen{
			 					position:absolute;
			 					width:4000px;
			 					left:50%;
			 					margin-left:-2000px;
			 					top:0;
			 					text-align:center;
			 					}*/
			 					.bounce {
-webkit-animation: bounceAnimate 2s ease infinite;
-moz-animation: bounceAnimate 2s ease infinite;
-o-animation: bounceAnimate 2s ease infinite;
-ms-animation: bounceAnimate 2s ease infinite;
animation: bounceAnimate 2s ease infinite;
float:right;
}
.bounce img{width:65px !important;}
@-webkit-keyframes bounceAnimate{
0%,50%,100%{-webkit-transform:translate(0px,0px);}
25%,75%{-webkit-transform:translate(0px,-7px);}
}
@-moz-keyframes bounceAnimate{
0%,50%,100%{-moz-transform:translate(0px,0px);}
25%,75%{-moz-transform:translate(0px,-7px);}
}
@-o-keyframes bounceAnimate{
0%,50%,100%{-o-transform:translate(0px,0px);}
25%,75%{-o-transform:translate(0px,-7px);}
}
@-ms-keyframes bounceAnimate{
0%,50%,100%{-ms-transform:translate(0px,0px);}
25%,75%{-ms-transform:translate(0px,-7px);}
}
@keyframes bounceAnimate{
0%,50%,100%{transform:translate(0px,0px);}
25%,75%{transform:translate(0px,-7px);}
}
.service-dialog{background:url(img/20160725143242_84921.png) no-repeat left top;width:178px;height:268px;}
.ke-say{color:#253746 !important;margin-bottom: 20px !important;}
.dialog-info p{color:#253746 !important;}
.dialog-info img{width:129px !important;height:28px !important;}
.dialog-info{margin-bottom: 32px !important;}
.service-dialog{width: 201px !important;height: 292px !important;background-color:transparent !important;padding-left: 25px !important;right: 13px !important; padding-top: 20px !important;}
.float-service{ height:230px; }
#back_to_top{
    margin-right: 8px;
}
</style>
<script type="text/javascript" async="async" charset="utf-8" src="js/guest.js"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/lang.js"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/manage.js"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/mott.js"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/connection.js"></script>
      </head>
	<body>
		<div id="nTalk_post_hiddenElement" style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>
		<div id="top_notice" class="mod_top_notice">
			<div class="container">
			  <p class="text-content"></p>
			   <a class="close" href="javascript:void(0)" title="关闭"><span>关闭</span></a>
		</div>
		   </div>
		<div style="display: none">
    <script type="text/javascript">
    	var cnzz_protocol = (("https:" == document.location.protocol) ? "https://" : "http://");
    	document.write(unescape("%3Cspan id='cnzz_stat_icon_1277477046'%3E%3C/span%3E%3Cscript
    	src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1277477046' 
    	type='text/javascript'%3E%3C/script%3E"));
    </script>
      <span id="cnzz_stat_icon_1277477046">
    	 <a >站长统计</a>
      </span>
      <script src="js/stat.js" type="text/javascript"></script>
      <script src="js/web.js" charset="utf-8" type="text/javascript"></script>
</div>

<!-- 公共 - 顶部工具条 -->

    <div class="site-topbar">
    	<div class="container">
    		<div class="nav">
    			<a >科沃斯官网</a>
    			  <span class="sep">|</span>
    			    <a class="addFavorite" href="javascript:void(0)">收藏我们</a>
    		</div>
    		<div class="user">
    			<a ga="login/click/username" class="u-nickname">E14359223</a>，
    			  <span class="sign-status">签到领积分</span>
    			  <a >退出</a>
    			  <span class="sep">|</span>
    			  <a rel="nofollow" ga="login/click/myorder">我的订单</a>
    			  <a class="cart" ga="login/mouseover/shopCart" >
    			  	<i class="icon-v2 icon-cart"></i>购物车</a>
    		</div>
    		   <div class="top-ad">
    		   	<div class="kws-adv text" style="width: 100%; height: 30px; overflow: hidden;">
    		   		<div class="item" data-adkey="101001" data-adid="1499" style="width: 100%; line-height: 30px;">
    		   			<a target="_blank">新用户注册，领取200元优惠券礼包&gt;</a>
    		   		</div>
    		   	</div>
    		   </div>
    	</div>
    </div>

<!-- 公共 - 顶部菜单 -->
<div class="site-header">
    <div class="container">
        <div class="logo">
            <a >
            	<img src="img/logo_dark.png">
            </a>
        </div>
        <div class="search">
            <form action="/search.html" method="get" autocomplete="off">
                <input type="text" class="words" name="words">
                <button type="submit">
                	<i class="icon icon-search"></i>
                </button>
                <div class="hotwords"></div>
            </form>
            <div class="hotwords2">
            	<div class="kws-adv richtext" style="width: 411px; height: 25px; overflow: hidden;">
            		<div class="item" data-adkey="100002" data-adid="1890">
            			<span style="white-space:normal;color:#E53333;">
            				<a target="_blank">
            					<span style="color:#E53333;">T5 Max- 重磅新品 深度清洁</span>
            				</a>
            			</span>
            				<span style="white-space:normal;">
            					<a target="_blank">&nbsp;</a> &nbsp;
            				</span>
            				<a target="_blank" style="white-space:normal;">DJ35-热卖爆款 能看慧思考</a>
            				<span style="white-space:normal;">&nbsp;&nbsp;</span>
            		</div>
            	</div>
            </div>
        </div>
    </div>
</div>

<!-- 公共 - 菜单 -->
<div class="site-nav">
    <div class="container">
        <ul class="head-nav">
            <li class="all">
                <span>全部商品</span>
                <div class="side-nav">
                    <ul>
                        <li>
                           <div class="goods-cate">
                              <a target="_blank" class="goods-cate-title" >扫地机器人-地宝</a>
                                <div class="goods-cate-rec">
                                   <a target="_blank" >T5 Max</a>
                                   <a target="_blank" >N3 Fun</a>
                                   <a target="_blank" >DJ35</a>
                                   <a target="_blank" >N5 Fun</a>
                                   <a target="_blank" >DG70</a>
                                 </div>
                                    </div>
                              <div class="goods-subcate">
                                   <div class="goods-subcate-block tags">
                                      <div class="subcate-title">帮你选机</div>
                                         <div class="subcate-items">
                                           <a target="_blank" >2019重磅新品</a>
                                           <a target="_blank" >热销爆款</a>
                                           <a target="_blank" >高性价比</a>
                                           <a target="_blank" >扫拖一体</a>
                                           <a target="_blank" >APP智控</a>
                                           <a target="_blank" >规划扫拖</a>
                                           <a target="_blank" >毛发清扫</a>
                                           <a target="_blank" >视觉导航升级</a>
                                      </div>
                                        </div>
                                        <div class="goods-subcate-block hot">
                                            <div class="subcate-title">热门型号</div>
                                               <div class="subcate-items">
                                                   <a target="_blank" >
                                                   	<img src="img/index_img_15579708839277.png">T5 Max</a>
                                                   <a target="_blank" >
                                                   	<img src="img/index_img_15585909622735.png">N3 Fun</a>
                                                   <a target="_blank" >
                                                   	<img src="img/index_img_15274699613887.png">DJ35</a>
                                                   <a target="_blank" >
                                                   	<img src="img/index_img_15597874135921.png">N5 Fun</a>
                                                   <a target="_blank" >
                                                   	<img src="img/index_img_15548808092694.png">DG70</a>
                                                </div>
                                        </div>
                                    </div>
                                </li>
                                     <li>
                                         <div class="goods-cate">
                                            <a target="_blank" class="goods-cate-title" >擦窗机器人-窗宝</a>
                                              <div class="goods-cate-rec">
                                                  <a target="_blank" >W880</a>
                                                  <a target="_blank" >W836</a>
                                                  <a target="_blank" >W950</a>
                                              </div>
                                    </div>
                                    <div class="goods-subcate">
                                        <div class="goods-subcate-block tags">
                                            <div class="subcate-title">帮你选机</div>
                                               <div class="subcate-items">
                                                  <a target="_blank" >年度新品</a>
                                                  <a target="_blank" >热销爆款</a>
                                                  <a target="_blank" >好评推荐</a>
                                                  <a target="_blank" >高层必备</a>
                                                  <a target="_blank" >规划擦窗</a>
                                                  <a target="_blank" >可擦门墙</a>
                                               </div>
                                        </div>
                      <div class="goods-subcate-block hot">
                          <div class="subcate-title">热门型号</div>
                             <div class="subcate-items">
                                 <a target="_blank" >
                                 	<img src="img/index_img_15590106326985.png">W880
                                 </a>
                                 <a target="_blank" >
                                 	<img src="img/index_img_15274702794177.png">W836
                                 </a>
                                 <a target="_blank" >
                                 	<img src="img/index_img_15274703074736.png">W950
                                 </a>
                               </div>
                                        </div>
                                    </div>
                                </li>
                                   <li>
                                    <div class="goods-cate">
                                       <a target="_blank" class="goods-cate-title" >净化机器人-沁宝</a>
                                         <div class="goods-cate-rec">
                                           <a target="_blank" >A660</a>
                                           <a target="_blank" >AA30</a>
                                         </div>
                                    </div>
                                    <div class="goods-subcate">
                                        <div class="goods-subcate-block tags">
                                            <div class="subcate-title">帮你选机</div>
                                              <div class="subcate-items">
                                                <a target="_blank" >智能除霾</a>
                                                <a target="_blank" >人气推荐</a>
                                                <a target="_blank" >移动净化</a>
                                                <a target="_blank" >规划净化</a>
                                                <a target="_blank" >APP智控</a>
                                                <a target="_blank" >有效除甲醛</a>
                                               </div>
                                        </div>
                                        <div class="goods-subcate-block hot">
                                            <div class="subcate-title">热门型号</div>
                                            <div class="subcate-items">
                                                <a target="_blank" >
                                                	<img src="img/index_img_15319947377128.png">A660
                                                </a>
                                                <a target="_blank" >
                                                	<img src="img/index_img_15274704372611.png">AA30
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                      <li>
                                    <div class="goods-cate">
                                        <a target="_blank" class="goods-cate-title" >管家机器人-悠尼</a>
                                        <div class="goods-cate-rec">
                                        <a target="_blank" >UNIBOT</a>
                                        <a target="_blank" >净化模块</a>
                                     </div>
                                    </div>
                                    <div class="goods-subcate">
                                        <div class="goods-subcate-block tags">
                                            <div class="subcate-title">帮你选机</div>
                                            <div class="subcate-items">
                                               <a target="_blank" >智能管家</a>
                                               <a target="_blank" >实时监控</a>
                                               <a target="_blank" >规划清扫</a>
                                               <a target="_blank" >净化空气</a>
                                               <a target="_blank" >家庭安防</a>
                                               <a target="_blank" >家电遥控</a>
                                            </div>
                                        </div>
                                        <div class="goods-subcate-block hot">
                                            <div class="subcate-title">热门型号</div>
                                            <div class="subcate-items">
                                             <a target="_blank" >
                                             	<img src="img/index_img_15274706385243.png">UNIBOT</a>
                                             <a target="_blank" >
                                             	<img src="img/index_img_15274706488566.png">净化模块</a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                    <li>
                                    <div class="goods-cate">
                                        <a target="_blank" class="goods-cate-title" >配件专区</a>
                                        <div class="goods-cate-rec">
                                                       <a target="_blank" >边刷</a>
                                                       <a target="_blank" >抹布</a>
                                                       <a target="_blank" >滚刷</a>
                                                       <a target="_blank" >滤材</a>
                                          </div>
                                    </div>
                                    <div class="goods-subcate">
                                        <div class="goods-subcate-block tags">
                                            <div class="subcate-title">帮你选机</div>
                                            <div class="subcate-items">
                                                <a target="_blank" >地宝配件</a>
                                                <a target="_blank" >窗宝配件</a>
                                                <a target="_blank" >沁宝配件</a>
                                                <a target="_blank" >管家配件</a>
                                            </div>
                                        </div>
                                        <div class="goods-subcate-block hot">
                                            <div class="subcate-title">热门型号</div>
                                            <div class="subcate-items">
                                               <a target="_blank" >
                                               	<img src="img/index_img_15274720014479.png">边刷</a>
                                               <a target="_blank" >
                                               	<img src="img/index_img_15274720096325.png">抹布</a>
                                               <a target="_blank" >
                                               	<img src="img/index_img_15274720242948.png">滚刷</a>
                                               <a target="_blank" >
                                               	<img src="img/index_img_15274720162213-1.png">滤材</a>
                                             </div>
                                        </div>
                                    </div>
                                </li>
                        </ul>
                </div>
            </li>
    
        <li>
            <a style="">商城首页</a>
        </li>
        <li>
            <a target="_blank" style="color: #ee0a3b;">618返场</a>
        </li>
        <li>
            <a target="_blank" style="">热卖推荐</a>
        </li>
        <li>
            <a target="_blank"  style="">AIVI新品</a>
        </li>
        <li>
            <a target="_blank" style="">全网配件</a>
       </li>
            
    </ul>
    </div>
</div>
<script type="text/javascript" src="js/min.js"></script>
<script type="text/javascript" src="js/base.js"></script>
<link rel="stylesheet" href="css/home-eb43deeb2c.css">

    <!-- 首页 - 轮播图 -->
    <div class="slider">
        <div id="sliders" class="owl-carousel owl-theme" style="opacity: 1; display: block;">
                            <div class="owl-wrapper-outer">
                            	<div class="owl-wrapper" style="width: 10792px; left: 0px; display: block; transition: all 1000ms ease 0s; transform: translate3d(0px, 0px, 0px);">
                            		<div class="owl-item" style="width: 1349px;">
                            			<a target="_blank"  style="background-image:url('img/index_img_15613704245340.jpg')"></a>
                            		</div>
                            		<div class="owl-item" style="width: 1349px;">
                            			<a target="_blank"  style="background-image:url('img/index_img_15613704359435.jpg')"></a>
                            		</div>
                            		<div class="owl-item" style="width: 1349px;">
                            			<a target="_blank"  style="background-image:url('img/index_img_15610226618689.jpg')"></a>
                            		</div>
                            		<div class="owl-item" style="width: 1349px;">
                            			<a target="_blank" style="background-image:url('img/index_img_15610226702384.jpg')"></a>
                            		</div>
                            	</div>
                            </div>
              <div class="owl-controls clickable">
              	<div class="owl-pagination" style="left: 622.5px;">
              	<div class="owl-page active">
              		<span class=""></span>
              	</div>
              	<div class="owl-page">
              		<span class=""></span>
              	</div>
              	<div class="owl-page">
              		<span class=""></span>
              	</div>
              	<div class="owl-page">
              		<span class=""></span>
              	</div>
              </div>
              </div>
        </div>
    </div>

<div class="mall-main cls">
    <!-- 商城首页 - 快速导航 -->
<div class="fast-nav">
  <div class="col-1eft">
   <a target="_blank">
   	<i class="iconfont icon-jifen"></i>积分商城</a>
   <a target="_blank" >
   	<i class="iconfont icon-baoyou1"></i>满99元包邮</a>
   <a target="_blank" >
   	<i class="iconfont icon-zhengpinbaozheng"></i>正品验证</a>
   <a target="_blank" >
   	<i class="iconfont icon-baoxiu"></i>全国联保</a>
   <a target="_blank" >
   	<i class="iconfont icon-tuihuanhuo"></i>无理由退换货</a>
   <a target="_blank" >
   	<i class="iconfont icon-iconfont icon-huanxin"></i>以旧换新</a>
  </div>
    <div class="col-right">
      <a target="_blank" >
      	<img src="img/index_img_15614257532116.jpg"></a>
      <a target="_blank" >
      	<img src="img/index_img_15613704619688.jpg"></a>
      <a target="_blank">
      	<img src="img/index_img_15610262382912.jpg"></a>
     </div>
</div>
    <!-- 商城首页 - 猜你喜欢 -->
    <div class="g-block f-fond" data-callback="loadUserRecommend" style="display: block;">
        <div class="g-block-title">
            <div class="text">猜你喜欢</div>
        </div>
        <div class="g-block-mn">
            <ul class="goods-list">
                <c:forEach items="${piclist}" var="p" varStatus="pl">
                    <li>
                        <div class="item">
                            <a class="image" target="_blank">
                                <img src="${p.src}">
                            </a>
                            <a class="title" target="_blank">${slist.get(pl.index).sortName}${type.get(pl.index)}</a>
                            <p class="desc">全局规划 高效擦窗</p>
                            <p class="price">${glist.get(pl.index).price}</p>
                        </div>
                    </li>
                </c:forEach>
                <%--<li>
                        <div class="item">
                    <a class="image" target="_blank">
                        <img src="http://localhost/img/6khGe.jpg">
                    </a>
                        <a class="title" target="_blank">窗宝W950</a>
                        <p class="desc">全局规划 高效擦窗</p>
                        <p class="price">2699</p>
                </div>
                </li>--%>
               <%-- <li>
                    <div class="item">
                        <a class="image" target="_blank">
                            <img src="img/index_img_15549768592592.png">
                        </a>
                        <a class="title" target="_blank">地宝DN55</a>
                        <p class="desc">激光雷达建图 全局规划</p>
                        <p class="price">2399</p>
                    </div>
                </li>
                <li>
                    <div class="item">
                        <a class="image" target="_blank">
                            <img src="img/index_img_15549768567977.png">
                        </a>
                        <a class="title" target="_blank">地宝DJ35</a>
                        <p class="desc">视觉导航 高效拖扫</p>
                        <p class="price">1699</p>
                    </div>
                </li>
                <li>
                    <div class="item">
                        <a class="image" target="_blank">
                            <img src="img/goods_image_15347274097214.png">
                        </a>
                        <a class="title" target="_blank">窗宝W836</a>
                        <p class="desc">全芯配置 净在眼前</p>
                        <p class="price">1899</p>
                    </div>
                </li>
                <li>
                    <div class="item">
                        <a class="image" target="_blank">
                            <img src="img/goods_image_15580800799216.png">
                        </a>
                        <a class="title" target="_blank">地宝T5 Max</a>
                        <p class="desc">重磅新品 9大革新升级</p>
                        <p class="price">2899</p>
                    </div>
                </li>--%>
            </ul>
        </div>
    </div>
</div>

<script type="text/javascript" src="js/ecovacs.js"></script>
<!-- 公共 - 底部 -->
<div class="site-footer">
    <div class="container">
        <div class="footer-service">
            <ul>
                <li>
                    <i class="iconfont icon-pinzhibaozheng"></i>
                    <b>官方品质保证</b>
                </li>
                <li>
                    <i class="iconfont icon-tianwuliyou"></i>
                    <b>7天无理由退货</b>
                </li>
                <li>
                    <i class="iconfont icon-baoyou"></i>
                    <b>全场满99包邮</b>
                </li>
                <li>
                    <i class="iconfont icon-wangdianguanli"></i>
                    <b>售后网点 全国覆盖</b>
                </li>
            </ul>
        </div>
        <div class="footer-links">
            <div class="f-main-info">
                <dl>
                    <dt>购物相关</dt>
                    <dd>
                    	<a target="_blank" >购物指南</a>
                    </dd>
                    <dd>
                    	<a target="_blank" >支付方式</a>
                    </dd>
                    <dd>
                    	<a target="_blank" >配送方式</a>
                    </dd>
                </dl>
                <dl>
                    <dt>售后支持</dt>
                    <dd>
                    	<a target="_blank" >售后服务政策</a>
                    </dd>
                    <dd>
                    	<a target="_blank" >退换货政策</a>
                    </dd>
                    <dd>
                    	<a target="_blank" >常见问题</a>
                    </dd>
                </dl>
                <dl>
                    <dt>关注我们</dt>
                    <dd>
                    	<a target="_blank" >新浪微博</a>
                    </dd>
                    <dd>
                    	<a target="_blank" >会员制度</a>
                    </dd>
                    <dd>
                    	<a target="_blank" >加入我们</a>
                    </dd>
                </dl>
                <dl>
                    <dt>关于我们</dt>
                    <dd>
                    	<a target="_blank" >关于科沃斯</a>
                    </dd>
                    <dd>
                    	<a target="_blank" >社会责任</a>
                    </dd>
                    <dd>
                    	<a target="_blank" >联系我们</a>
                    </dd>
                </dl>
                <div class="f-qrcode">
                    <img src="img/footer_qrcode.png">
                </div>
                <div class="f-contact">
                    <p class="tel">400-886-8888</p>
                    <p class="service-time">周一至周日 9:00-20:00</p>
                    <p class="contact-btn">
                        <button type="button" class="u-btn openChatBox"><i></i>在线客服</button>
                    </p>
                </div>
            </div>
            <div class="f-copyright">
                <p>
                    Copyright ©2014-2019 科沃斯机器人版权所有 
                    <a target="_blank" >苏ICP备14049145号-1</a>&nbsp;&nbsp;ICP证：苏B1-20140152
                    <span class="szgs-stat">
                    	<span id="szgs_stat_icon_45401">
                    		<a href="#;type=1" target="_blank">
                    			<img src></a></span></span>
                </p>
            </div>
        </div>
    </div>
</div>

<!-- 客服B -->
<div class="float-service" id="float_service">
<div id="online_service" class="online-service">
<div class="bounce">
<img src="img/20190107160544_21803.png" alt="" style="float: right;">
<div class="service-dialog" style="position:relative;top:-49px;display:none">
<div class="dialog-inner">
<div class="ke-say">小科正在为您服务！</div>
<div class="dialog-info">
<p>售前咨询</p>
<p class="text-gray">周一至周日8:30-24:00</p>
<a href="javascript:void(0)" class="openChatBox">
	<img src="img/20160725143242_24629.jpg" alt=""></a>
</div>
<div class="dialog-info">
<p>售后咨询</p>
<p class="text-gray">周一至周日9:00-21:00</p>
<a href="javascript:void(0)" data-group="kf_9290_1469524243051" class="openChatBox">
	<img src="img/20160725143242_24629.jpg" alt=""></a>
</div>
</div>
</div>
</div>
</div>
<span id="back_to_top" class="back-to-top" style="opacity: 1; display: none;"></span>
</div>
<!-- 客服E -->
<!--<script>
    setTimeout(function () {$.getScript('https://www.beian.suzhou.gov.cn/sendMark?siteid=45401&type=1')}, 5000)
</script>-->

</body>
</body>

</html>
