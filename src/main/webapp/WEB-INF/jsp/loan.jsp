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
                                    <a href="${pageContext.request.contextPath }/jsp/index.jsp">
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
                                        <li class="actived-a1 actived-x">
                                            我要借款
                                        </li>
                                    </a>
                                    <a href="">
                                        <li class="actived-a1" style="margin-top: 8px;padding-bottom: 10px;">
                                            信息披露
                                        </li>
                                    </a>
                                    <a href="">
                                        <li class="actived-a1" style="margin-top: 8px;padding-bottom: 10px;">
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
                        <div class="IndexBorrow-bannerBox-3-lSO">
                            <div class="IndexBorrow-banner-3QtxG">
                                <div class="layout">
                                    <div class="IndexBorrow-space-TEKD8"></div>
                                    <div class="clearfix IndexBorrow-bannerMain-ebilL" style="margin-top: 95px">
                                        <div class="IndexBorrow-leftBox-2KQdJ">
                                            <div class="IndexBorrow-leftImg-ghyHr"></div>
                                            <div class="IndexBorrow-leftContain-3RiXZ">
                                                <ul class="clearfix">
                                                    <li class="clearfix" style="float: left">
                                                        <i class="IndexBorrow-icon-2n3vq IndexBorrow-iconOne-1uGqE"></i>

                                                        <h3 style="color: white">门槛低</h3>
                                                        <span>月收入2000元即可申请</span>
                                                    </li>
                                                    <li class="clearfix" style="float: left">
                                                        <i class="IndexBorrow-icon-2n3vq IndexBorrow-iconTwo-2ZB_v"></i>

                                                        <h3 style="color: white">额度大</h3>
                                                        <span>最高借款额度达50万元</span>
                                                    </li>
                                                    <li class="clearfix" style="float: left">
                                                        <i class="IndexBorrow-icon-2n3vq IndexBorrow-iconThree-EOoX8"></i>

                                                        <h3 style="color: white">放款快</h3>
                                                        <span>2小时即可审核完成并放款</span>
                                                    </li>
                                                    <li class="clearfix" style="float: left">
                                                        <i class="IndexBorrow-icon-2n3vq IndexBorrow-iconFour-38HZt"></i>

                                                        <h3 style="color: white">费率低</h3>
                                                        <span>月综合费率低至0.55%</span>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="IndexBorrow-rightBox-14Jba">
                                            <div class="IndexBorrow-form-1b_7_">
                                                <div class="IndexBorrow-item-15vzA">
                                                    <i class="iconfont icon-yonghuming IndexBorrow-telIcon-1zlhx"></i>
                                                    <input type="text" value="" placeholder="请输入您的姓名">

                                                    <div class="IndexBorrow-tipBpx-1rDiB"></div>
                                                </div>
                                                <div class="IndexBorrow-item-15vzA">
                                                    <i class="iconfont icon-woyaojiekuan_dianhua1 IndexBorrow-telIcon-1zlhx"></i>
                                                    <input type="text" value="" placeholder="请输入您的电话">

                                                    <div class="IndexBorrow-tipBpx-1rDiB"></div>
                                                </div>
                                                <div class="IndexBorrow-item-15vzA">
                                                    <i class="iconfont icon-woyaojiekuan_yanzhengma IndexBorrow-telIcon-1zlhx"></i>
                                                    <input type="text" value="" placeholder="请输入验证码" class="IndexBorrow-codeInput-2pRjx">
                                                    <!--<span
                                                    class="IndexBorrow-codeSpan-x7b5X"></span>-->

                                                    <div class="IndexBorrow-tipBpx-1rDiB"></div>
                                                </div>
                                                <div class="IndexBorrow-loginBtn-3jukY"><a href="${pageContext.request.contextPath }/jsp/carloan.jsp">极速申请</a></div>
                                                <div class="IndexBorrow-formWord-3gDau">
                                                    <p>如有问题请电话咨询微贷客服</p>
                                                    <span class="DinFont">400-028-8888</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="IndexBorrow-numberBox-2CuLy">
                                        <div class="IndexBorrow-dataNum-9NHy6">
                                            <span class="DINPro">1,604,883</span>
                                            <!-- react-text: 105 -->
                                            人
                                            <!-- /react-text -->
                                        </div>
                                        <div class="IndexBorrow-dataCount-1y9gI">
                                            <span class="DINPro">188,357,875,970</span>
                                            <!-- react-text: 108 -->
                                            元
                                            <!-- /react-text -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="IndexBorrow-loadingWrap-mWEQQ" style="margin-top: 95px">
                                <div class="IndexBorrow-floorWrap-2fnKU">
                                    <div class="IndexBorrow-floorModule-3HSnF IndexBorrow-floorXjk-1nkCl">
                                        <div class="clearfix layout IndexBorrow-floorBox-1TUMu">
                                            <div class="IndexBorrow-leftBox-2KQdJ">
                                                <img src="${pageContext.request.contextPath }/statics/images/titleCar1x17BaK.png" alt="">
                                            </div>
                                            <div class="clearfix IndexBorrow-rightBox-14Jba">
                                                <div class="IndexBorrow-firstBox-2OIZN">
                                                    <a href="#" target="_blank">
                                                        <h2 style="color: white">车抵贷</h2>
                                                        <span style="color: white">有车就能贷 1-36期灵活贷款</span>

                                                        <p>
                                                            以“汽车抵(质)押借贷”为核心业务，抵（质）押为借款人自由车辆。其中抵押车辆需要在车管所办理抵押登记手续，并提供相关车辆证件资料。目前有GPS不押车和押车等多种服务模式可供选择。</p>

                                                        <div class="IndexBorrow-mybutton-2vPwg">
                                                            <button id="chedidai-a1" onclick="window.open('${pageContext.request.contextPath }/jsp/carloan.jsp')">
                                                                立即申请
                                                            </button>
                                                        </div>
                                                    </a>
                                                </div>
                                                <div class="IndexBorrow-firstBox-2OIZN IndexBorrow-secondBox-RSTAl" style="position: relative;top: -434px; right:-369px;">
                                                    <a href="#" target="_blank">
                                                        <h2 style="color: white">车主信用贷</h2>
                                                        <span style="color: white">期限12个月 车主专享 </span>

                                                        <p>短服务于有车一族的小额线上信贷产品，瞄准海量车主的信贷需求，以车主为标签统一入口，实现获客、申请、审核、还款等全流程线上化。</p>

                                                        <div class="IndexBorrow-mybutton-2vPwg">
                                                            <button>立即申请</button>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="IndexBorrow-floorWrap-2fnKU">
                                    <div class="IndexBorrow-floorModule-3HSnF IndexBorrow-floorBt-149g1">
                                        <div class="clearfix layout IndexBorrow-floorBox-1TUMu">
                                            <div class="IndexBorrow-leftBox-2KQdJ" style="position: relative;
                                            top: -200px">
                                               <img src="${pageContext.request.contextPath }/statics/images/titleCredit1x3IA6x.png" alt="">
                                            </div>
                                            <div class="clearfix IndexBorrow-rightBox-14Jba IndexBorrow-longBox-2BzuW" style="position: relative;top: -230px;right: 0px;">
                                                <a href="#" target="_blank">
                                                    <h2 style="color: white">多米贷</h2>
                                                    <span style="color: white">6/12个月 低息高额纯信用贷</span>

                                                    <p>低息高额，无抵押纯信用产品，只需3步即可完成申请：在线提交申请，专业风控体系进行审核，成功放款，7*24小时随时服务！</p>

                                                    <div class="IndexBorrow-mybutton-2vPwg">
                                                        <button>立即申请</button>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="IndexBorrow-floorWrap-2fnKU">
                                    <div class="IndexBorrow-floorModule-3HSnF IndexBorrow-floorCrowdfunding-1uTLI">
                                        <div class="clearfix layout IndexBorrow-floorBox-1TUMu" style="float: left;position: relative;top: -140px;left: 78px;">
                                            <div class="IndexBorrow-leftBox-2KQdJ" >
                                                <img src="${pageContext.request.contextPath }/statics/images/titleCredit1x3IA6x.png"  alt="">
                                            </div>
                                            <div class="clearfix IndexBorrow-rightBox-14Jba" style="float: left;">
                                                <ul class="clearfix">
                                                    <li>
                                                        <h2 style="color: white">微易融</h2>
                                                        <span style="color: white">7天-24个月 企事业公务员信用贷</span>

                                                        <p>面向公务员、事业单位、电信、电力、航空等行业正式编制员工为授信对象的纯信用无抵押借款业务。</p>
                                                    </li>
                                                    <li>
                                                        <h2 style="color: white">秒速贷</h2>
                                                        <span style="color: white">3/5/7天短期借款 随借随还</span>

                                                        <p>短期汽车质押贷款产品，拥有3、5、7天三种模式，按日计息更灵活。</p>
                                                    </li>
                                                    <li>
                                                        <h2 style="color: white">微出行</h2>
                                                        <span style="color: white">3天-36个月 新车借贷一站式解决方案</span>

                                                        <p>以新车消费为载体，针对用户渠道受限、库存积压，买车资金短缺等痛点，提供综合性服务项目。</p>
                                                    </li>
                                                    <li>
                                                        <h2 style="color: white">车分期</h2>
                                                        <span style="color: white">24/36个月 购车分期开走二手车</span>

                                                        <p>以二手车消费为载体，联合优质车商为用户提供购车的全套服务。</p>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="IndexBorrow-rongziBox-38nxP">
                            <div class="IndexBorrow-space50-3mRa1"></div>
                            <div class="layout">
                                <img src="${pageContext.request.contextPath }/statics/images/rongzi1x17EO6.png">
                            </div>
                            <div class="IndexBorrow-space50-3mRa1"></div>
                        </div>
                        <div class="IndexBorrow-zizhiBox-3iQLn">
                            <div class="IndexBorrow-space50-3mRa1"></div>
                            <div class="layout">
                                <img src="${pageContext.request.contextPath }/statics/images/zizhi1x3fAcS.png">
                            </div>
                            <div class="IndexBorrow-space50-3mRa1"></div>
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