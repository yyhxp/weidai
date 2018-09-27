<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="format-detection" content="telephone=no, email=no, adress=no">
    <meta name="viewport" content="width=1202">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta name="keywords" content="">
    <meta name="description" content="平台描述">
    <!-- head end -->
    <style type="text/css">
	body, html{width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
	#allmap {height: 455px;width:855px;overflow: hidden;}
	#result {width:100%;font-size:12px;}
	dl,dt,dd,ul,li{
		margin:0;
		padding:0;
		list-style:none;
	}
	dt{
		font-size:14px;
		font-family:"微软雅黑";
		font-weight:bold;
		border-bottom:1px dotted #000;
		padding:5px 0 5px 5px;
		margin:5px 0;
	}
	dd{
		padding:5px 0 0 5px;
	}
	li{
		line-height:28px;
	}
	</style>
    	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=sZ9VuQKCjOy1A5ps7ynH5NqoZKAHSHTD"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.js"></script>
	<link rel="stylesheet" href="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.css" />
   
    <title>微贷网--借款</title>
    <link href="${pageContext.request.contextPath }/statics/css/index.css" rel="stylesheet">
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/statics/images/a8da50662c538d06a25218ee4546dc9c.ico">
    <link href="${pageContext.request.contextPath }/statics/css/commonBundle.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/statics/css/IndexBorrow.css" rel="stylesheet">
    <style type="text/css">
        @media screen and (max-width: 1260px) {
            html,
            body {
                width: 1280px;
                background-position: 50%;
            }
            body {
                overflow: auto;
            }
        }

        @media screen and (min-width: 1260px) {
            html,
            body {
                width: 100%;
                background-position: 50%;
            }
            body {
                overflow: auto;
            }
            .wdpc-header {
                width: 100%;
				color: black;
            }
        }

        .wdpc-header-div {
            width: 100%;
            height: 600px;
        }

        .swiper-button-prev {
            width: 60px;
            height: 60px;
            background: url('${pageContext.request.contextPath }/statics/images/背景(2).png');
        }

        .swiper-button-next {
            width: 60px;
            height: 60px;
            background: url('${pageContext.request.contextPath }/statics/images/背景(3).png');
        }

        .swiper-button-prev:hover {
            background-color: rgba(1, 1, 1, 0.5);
        }

        .swiper-button-next:hover {
            background-color: rgba(1, 1, 1, 0.5);
        }

        .gricon {
            background: url('${pageContext.request.contextPath }/statics/images/gr.png');
            width: 18px;
            height: 18px;
        }

        .wdpc-header:hover .gricon {
            background: url('${pageContext.request.contextPath }/statics/images/gr1.png');
            width: 18px;
            height: 18px;
        }

        .wxicon {
            background: url('${pageContext.request.contextPath }/statics/images/wx.png');
            width: 22px;
            height: 16px;
        }

        .wdpc-header:hover .wxicon {
            background: url('${pageContext.request.contextPath }/statics/images/wx1.png');
            width: 22px;
            height: 16px;
        }

        .kficon {
            background: url('${pageContext.request.contextPath }/statics/images/kf.png');
            width: 16px;
            height: 16px;
        }

        .wdpc-header:hover .kficon {
            background: url('${pageContext.request.contextPath }/statics/images/kf1.png');
        }

        .wdpc-header:hover .span-x {
            color: #8a8a8a;
        }

        .wdpc-header:hover .a-a {
            color: #8a8a8a;
        }

        .xwxw:hover .zhanghu {
            color: #22A7FF;
        }

        .xwxw:hover .gricon {
            background: url('${pageContext.request.contextPath }/statics/images/gr2.png');
        }
        .style-user-ax2 {
            width: 24%;
            margin-left: 1%;
            height: 100%;
            float: left;
            background: url('${pageContext.request.contextPath }/statics/images/app1x2iPig.jpg');
            background-size: 100% 100%;
        }

        .swiper-wrapper {
            width: 1280px;
        }
        .IndexBorrow-iconOne-1uGqE {
            background: url('${pageContext.request.contextPath }/statics/images/index.png');
        }
        .IndexBorrow-iconTwo-2ZB_v {
            background: url('${pageContext.request.contextPath }/statics/images/index1.png');
        }
        .IndexBorrow-iconThree-EOoX8 {
            background: url('${pageContext.request.contextPath }/statics/images/index2.png');
        }
        .IndexBorrow-iconFour-38HZt {
            background: url('${pageContext.request.contextPath }/statics/images/index3.png');
        }
    </style>
</head>

<body>
    <!-- header start -->
    <div class="layout-header">
        <div class="layout-main">
        </div>
    </div>
    <!-- header end -->

    <!-- 我的兄弟叫顺溜之透明层 -->
    <div class="touming">
        </div>
    <!-- 我的兄弟叫顺溜之固定顶部下拉框 -->
    <div class="layout-body">
        <div class="layout-main">
            <div id="app">
                <div data-reactroot="">
                    <div class="IndexBorrow-container-ypn5b">
                    
                       <!-- 我的兄弟叫顺溜之导航 -->
  						<%@ include file="mydaohang.jsp"  %>
  	
                            <div class="wdpc-header-a2">
                                <a href="" class="weidaiwang">微贷网</a>
                                <ul class="actived">
                                    <a href="${pageContext.request.contextPath }/test/index.html">
                                        <li class="actived-a1">
                                            首页
                                        </li>
                                    </a>
                                    <a href="${pageContext.request.contextPath }/jsp/x-tou.jsp">
                                        <li class="actived-a1" style="padding-bottom: 10px; ">
                                            我要出借
                                        </li>
                                    </a>
                                    <a href="${pageContext.request.contextPath }/jsp/loan.jsp">
                                        <li class="actived-a1 ">
                                            我要借款
                                        </li>
                                    </a>
                                    <a href="">
                                        <li class="actived-a1" style="margin-top: 8px;padding-bottom: 10px;">
                                            信息披露
                                        </li>
                                    </a>
                                    <a href="">
                                        <li class="actived-a1 actived-x" style="margin-top: 8px;padding-bottom: 10px;">
                                            关于微贷
                                        </li>
                                    </a>
                                </ul>
                                <div class="xwxw" style="width: 8%;margin-left: 10px;height:30px;float: left;position: relative;">
                                    <a href="${pageContext.request.contextPath }/jsp/myzhanghu.jsp">
                                        <i class="gricon" style="position: absolute;top: 10px;left: -4px;"></i>
                                        <span class="zhanghu">我的账户</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- 我的兄弟叫顺溜之我要出借 -->
                        <div class="wdpc-header-01">
                            <div class="wdpc-header-02">
                                <ul>
                                    <li class="wdpc-header-push">
                                        <a href="${pageContext.request.contextPath }/jsp/x-tou.jsp">X智投</a>
                                    </li>
                                    <li class="wdpc-header-push">
                                        <a href="${pageContext.request.contextPath }/jsp/zhitou.jsp">优选智投</a>
                                    </li>
                                    <li class="wdpc-header-push">
                                        <a href="${pageContext.request.contextPath }/jsp/sanbiao.jsp">散标列表</a>
                                    </li>
                                    <li class="wdpc-header-push">
                                        <a href="${pageContext.request.contextPath }/jsp/zhuanrang.jsp">转让专区</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- 我的兄弟叫顺溜之信息披露 -->
                        <div class="wdpc-header-01">
                            <div class="wdpc-header-02">
                                <ul>
                                    <li class="wdpc-header-push">
                                        <a href="">银行资金存管</a>
                                    </li>
                                    <li class="wdpc-header-push">
                                        <a href="">运营报告</a>
                                    </li>
                                    <li class="wdpc-header-push">
                                        <a href="">备案信息</a>
                                    </li>
                                    <li class="wdpc-header-push">
                                        <a href="">组织信息</a>
                                    </li>
                                    <li class="wdpc-header-push">
                                        <a href="">审核信息</a>
                                    </li>
                                    <li class="wdpc-header-push">
                                        <a href="">经营信息</a>
                                    </li>
                                    <li class="wdpc-header-push">
                                        <a href="">监管法规</a>
                                    </li>
                                    <li class="wdpc-header-push">
                                        <a href="${pageContext.request.contextPath }/jsp/ditu.jsp">联系我们</a>
                                    </li>
                                    <li class="wdpc-header-push">
                                        <a href="">法人签章</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- 我的兄弟叫顺溜之关于微贷 -->
                        <div class="wdpc-header-01">
                            <div class="wdpc-header-02">
                                <ul>
                                    <li class="wdpc-header-push">
                                        <a href="">微贷简介</a>
                                    </li>
                                    <li class="wdpc-header-push">
                                        <a href="">微贷风采</a>
                                    </li>
                                    <li class="wdpc-header-push">
                                        <a href="">企业内刊</a>
                                    </li>
                                    <li class="wdpc-header-push">
                                        <a href="">新闻公告</a>
                                    </li>
                                    <li class="wdpc-header-push">
                                        <a href="${pageContext.request.contextPath }/jsp/ditu.jsp">联系我们</a>
                                    </li>
                                    <li class="wdpc-header-push">
                                        <a href="">人才招聘</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                       <img  alt="" src="${pageContext.request.contextPath }/statics/images/lianxi1.png" width="1300px" height="120px">
                       <img  alt="" src="${pageContext.request.contextPath }/statics/images/lianxi.png" width="1300px" height="220px">
                       
                       <div style="padding-left: 50px">
                       <h5 style="font-size:16px;color:#212121;font-weight: bolder;padding-top: 40px">人工服务:</h5>
                       <p style="font-size: 14px;line-height: 25px;color: #66625e;">咨询电话：400-028-8888</p>
                       <p style="font-size: 14px;line-height: 25px;color: #66625e;">投诉电话：400-028-8888</p>
                       <p style="font-size: 14px;line-height: 25px;color: #66625e;">举报联系电话：400-028-8888</p>
                       </div>
                        <div style="padding-left: 50px">
                       <h5 style="font-size:16px;color:#212121;font-weight: bolder;padding-top: 40px">商务合作：</h5>
                       <p style="font-size: 14px;line-height: 25px;color: #66625e;">如果您有意向与我们合作，请将合作意向文档发送至以下相应业务联系人邮箱，我司工作人员会尽快与您联系；</p>
                       <h6 style="font-size: 15px;font-weight: bolder;color: #66625e">线下资产端业务合作联系人</h6>
                       <p style="font-size: 14px;line-height: 25px;color: #66625e;">卓小姐邮箱：zhuohongfen@wdai.com</p>
                       <h6 style="font-size: 15px;font-weight: bolder;color: #66625e">线上理财端合作联系人</h6>
                       <p style="font-size: 14px;line-height: 25px;color: #66625e;">张先生邮箱：zhangyijie@wdai.com</p>
                       <p style="font-size: 14px;line-height: 25px;color: #66625e;">孙先生邮箱：sunzejie@wdai.com</p>
                       </div>
                       
                        <div style="padding-left: 50px">
                       <h5 style="font-size:16px;color:#212121;font-weight: bolder;padding-top: 40px">微贷人才招聘：	</h5>
                       <p style="font-size: 14px;line-height: 25px;color: #66625e;">hr@wdai.com</p>
                       </div>
                        <div style="padding-left: 50px">
                       <h5 style="font-size:16px;color:#212121;font-weight: bolder;padding-top: 40px">微贷网（总部）</h5>
                       <p style="font-size: 14px;line-height: 25px;color: #66625e;">公司地址： 浙江财富金融中心25，41，42，50层（杭州市江干区解放东路33号）</p>
                       <p style="font-size: 14px;line-height: 25px;color: #66625e;">联系电话：0571-56979228 邮编：310000</p>
                       </div>
                        <div style="padding-left: 50px;padding-bottom: 50px">
                       <h5 style="font-size:16px;color:#212121;font-weight: bolder;padding-top: 40px;">公司地图：</h5><br>
                       
                       <!-- 动态地图 -->
                      <%--  <img alt="" src="${pageContext.request.contextPath }/statics/images/ditu.png"  width="855px" height="455px"> --%>
					    <div id="allmap" width="855px" height="455px">	
						</div>
						<div id="result">
							<input type="button" value="重新定位" onclick="searchInfoWindow.open(marker);"/>
						</div>
						<script type="text/javascript">
	// 百度地图API功能
    var map = new BMap.Map('allmap');
    var poi = new BMap.Point(120.2168650000,30.2482130000);
    map.centerAndZoom(poi, 16);
    map.enableScrollWheelZoom();

    var content = '<div style="margin:0;line-height:20px;padding:2px;">' +
                    '<img src="../statics/localimg/ditu.jpg" alt="" style="float:right;zoom:1;overflow:hidden;width:100px;height:100px;margin-left:3px;"/>' +
                    '地址：浙江财富金融中心25，41，42，50层（杭州市江干区解放东路33号）<br/>电话：0571-56979228 <br/>' +
                  '</div>';

    //创建检索信息窗口对象
    var searchInfoWindow = null;
	searchInfoWindow = new BMapLib.SearchInfoWindow(map, content, {
			title  : "百度大厦",      //标题
			width  : 290,             //宽度
			height : 105,              //高度
			panel  : "panel",         //检索结果面板
			enableAutoPan : true,     //自动平移
			searchTypes   :[
				BMAPLIB_TAB_SEARCH,   //周边检索
				BMAPLIB_TAB_TO_HERE,  //到这里去
				BMAPLIB_TAB_FROM_HERE //从这里出发
			]
		});
    var marker = new BMap.Marker(poi); //创建marker对象
    marker.enableDragging(); //marker可拖拽
    marker.addEventListener("click", function(e){
	    searchInfoWindow.open(marker);
    })
    map.addOverlay(marker); //在地图中添加marker
	//样式1
	var searchInfoWindow1 = new BMapLib.SearchInfoWindow(map, "信息框1内容", {
		title: "信息框1", //标题
		panel : "panel", //检索结果面板
		enableAutoPan : true, //自动平移
		searchTypes :[
			BMAPLIB_TAB_FROM_HERE, //从这里出发
			BMAPLIB_TAB_SEARCH   //周边检索
		]
	});
	function openInfoWindow1() {
		searchInfoWindow1.open(new BMap.Point(120.2168650000,30.2482130000));
	}
</script>
                       </div>
                       
                        <!-- 我的兄弟叫顺溜之底部 -->
        <div class="footer">
                <div class="footer-a1">
                    <div class="footer-a2">
                        <div class="footer-left">
                            <dl>
                                <dt>关于微贷</dt>
                                <dd>
                                    <a href="">团队介绍</a>
                                </dd>
                                <dd>
                                    <a href="${pageContext.request.contextPath }/jsp/ditu.jsp">联系我们</a>
                                </dd>
                                <dd>
                                    <a href="">人才招聘</a>
                                </dd>
                            </dl>
                        </div>
                        <div class="footer-left">
                            <dl>
                                <dt>安全保障</dt>
                                <dd>
                                    <a href="">实体经营</a>
                                </dd>
                                <dd>
                                    <a href="">阿里云金融</a>
                                </dd>
                                <dd>
                                    <a href="">黑名单披露</a>
                                </dd>
                            </dl>
                        </div>
                        <div class="footer-left">
                            <dl>
                                <dt>我要出借</dt>
                                <dd>
                                    <a href="">常见问题</a>
                                </dd>
                                <dd>
                                    <a href="">收费标准</a>
                                </dd>
                                <dd>
                                    <a href="">平台协议</a>
                                </dd>
                            </dl>
                        </div>
                        <div class="footer-left">
                            <dl>
                                <dt>客服专线</dt>
                                <dd>
                                    <strong>400-028-8888</strong>
                                </dd>
                                <dd>
                                    <em>(客服服务时间:9:00-21:00)</em>
                                </dd>
                            </dl>
                        </div>
                        <div class="footer-right">
                            <dl>
                                <dt>关注我们</dt>
                                <dd>
                                    <span></span>
                                    <p>微贷网官方订阅号</p>
                                </dd>
                            </dl>
                        </div>
                    </div>
                    <div class="footer-a3">
                        <p>Copyright ©2011-2018 微贷(杭州)金融信息服务有限公司 版权所有</p>
                        <p>
                            <em>
                                <img src="${pageContext.request.contextPath }/statics/images/背景(17).png" alt="">
                            </em> 浙公网安备33010402000327号 浙ICP备15029561号-4 ICP经营许可证编号：浙B2-20160682 市场有风险 出借需谨慎
                        </p>
                        <p style="margin-top: 8px">
                            <a href="">
                                <img src="${pageContext.request.contextPath }/statics/images/foot11x1VRUH.png" alt="">
                            </a>
                            <a href="">
                                <img src="${pageContext.request.contextPath }/statics/images/foot21x3u1FZ.png" alt="">
                            </a>
                            <a href="">
                                <img src="${pageContext.request.contextPath }/statics/images/背景(18).png" alt="">
                            </a>
                            <a href="">
                                <img src="${pageContext.request.contextPath }/statics/images/foot41x2I6q4.png" alt="">
                            </a>
                        </p>
                    </div>
                </div>
            </div>
                         <!-- 我的兄弟叫顺溜之返回顶部 -->
        <div class="floatBtn">
                <ul>
                    <a href="">
                        <li style="width: 32px;">
                            <div class="floatBtn-ax">
                                <i></i>
                                <span style="left: -1px;">意见</span>
                                <span style="top: 10px;left: -1px;">反馈</span>
                            </div>
                        </li>
                    </a>
                    <a href="javascript:;">
                        <li style="width: 32px;">
                            <div class="floatBtn-ax1">
                                <img src="" alt="">
                                <i style="position: relative;top: 0px"></i>
                                <span style="left: -2px;">手机</span>
                                <span style="top: 10px;left: -2px;">微贷</span>
                            </div>
                        </li>
                    </a>
                    <a href="javascript:;">
                        <li style="width: 32px;">
                            <div class="floatBtn-ax2">
                                <i></i>
                                <span style="left: 1px;">微信</span>
                                <span style="top: 10px;left: 1px;">订阅</span>
                            </div>
                        </li>
                    </a>
                    <a href="#">
                        <li style="width: 32px;">
                            <div class="floatBtn-ax3">
                                <i></i>
                                <span style="left: -2px;">在线</span>
                                <span style="top: 10px;left: -2px;">客服</span>
                            </div>
                        </li>
                    </a>
                    <a href="calcultor.jsp">
                        <li style="width: 32px;">
                            <div class="floatBtn-ax4">
                                <i></i>
                                <span style="left: -2px;">利率</span>
                                <span style="top: 10px;left: -2px;">计算</span>
                            </div>
                        </li>
                    </a>
                    <a href="#">
                        <li id="fhdb" style="width: 32px;">
                            <div class="floatBtn-ax5">
                                <i></i>
                                <span style="top: -10px;left: -1px;">返回</span>
                                <span style="top: 5px;left: -1px;">顶部</span>
                            </div>
    
                        </li>
                    </a>
                </ul>
            </div>
                    </div>
                    <div class="x-Modal">
                        <div class="x-Modal-mask"></div>
                        <div class="x-Modal-wrapper x-Modal-ani-center">
                            <div class="x-Modal-container">
                                <div class="wdpc-website-cont">
                                    <div class="wdpc-website-cont-wordInfo"></div>
                                    <div class="wdpc-website-cont-buttons">
                                        <button class="">确定</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- footer start -->
    <div class="layout-footer">
        <div class="layout-main">
        </div>
    </div>


    <div id="waf_nc_block" style="display: none;">
        <div class="waf-nc-mask"></div>
        <div id="WAF_NC_WRAPPER" class="waf-nc-wrapper">
            <img class="waf-nc-icon" src="${pageContext.request.contextPath }/statics/images/TB1_3FrKVXXXXbdXXXXXXXXXXXX-129-128.png" alt="" height="20" width="20">

            <p class="waf-nc-title">安全验证</p>

            <div class="waf-nc-splitter"></div>
            <p class="waf-nc-description">请完成以下验证后继续操作：</p>

            <div id="nocaptcha"></div>
        </div>
    </div>
    <div style="position: static; width: 0px; height: 0px; border: none; padding: 0px; margin: 0px;">
        <div id="trans-tooltip">
            <div id="tip-left-top"></div>
            <div id="tip-top"></div>
            <div id="tip-right-top"></div>
            <div id="tip-right"></div>
            <div id="tip-right-bottom"></div>
            <div id="tip-bottom"></div>
            <div id="tip-left-bottom"></div>
            <div id="tip-left"></div>
            <div id="trans-content"></div>
        </div>
        <div id="tip-arrow-bottom"></div>
        <div id="tip-arrow-top"></div>
    </div>
    
    <script src="${pageContext.request.contextPath }/statics/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath }/statics/js/loan.js"></script>
</body>

</html>