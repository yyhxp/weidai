<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <title>微贷网--投标详情</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/info.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/bootstrap.css"/>
     <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/index-shunliu.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/top-info.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/statics/images/a8da50662c538d06a25218ee4546dc9c.ico">
    <link href="${pageContext.request.contextPath }/statics/css/shunliu-bottom.css" rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
</head>
<body>
<input id="PageContext" type="hidden" value="${pageContext.request.contextPath}" />
	<div class="floatBtn1">
            <ul>
                <a href="">
                    <li style="width: 40px">
                        <div class="floatBtn1-ax">
                            <i></i>
                            <span style="left: -1px;">意见</span>
                            <span style="top: 10px;left: -1px;">反馈</span>
                        </div>
                    </li>
                </a>
                <a href="javascript:;">
                    <li style="width: 40px">
                        <div class="floatBtn1-ax1">
                            <img src="" alt="">
                            <i style="position: relative;top: 0px"></i>
                            <span style="left: -2px;">手机</span>
                            <span style="top: 10px;left: -2px;">微贷</span>
                        </div>
                    </li>
                </a>
                <a href="javascript:;">
                    <li style="width: 40px">
                        <div class="floatBtn1-ax2">
                            <i></i>
                            <span style="left: 1px;">微信</span>
                            <span style="top: 10px;left: 1px;">订阅</span>
                        </div>
                    </li>
                </a>
                <a href="#">
                    <li style="width: 40px">
                        <div class="floatBtn1-ax3">
                            <i></i>
                            <span style="left: -2px;">在线</span>
                            <span style="top: 10px;left: -2px;">客服</span>
                        </div>
                    </li>
                </a>
                <a href="${pageContext.request.contextPath}/sys/calcultor.html">
                    <li style="width: 40px">
                        <div class="floatBtn1-ax4">
                            <i></i>
                            <span style="left: -2px;">利率</span>
                            <span style="top: 10px;left: -2px;">计算</span>
                        </div>
                    </li>
                </a>
                <a href="#">
                    <li style="width: 40px">
                        <div class="floatBtn1-ax5">
                            <i></i>
                            <span style="top: -10px;left: -1px;">返回</span>
                            <span style="top: 5px;left: -1px;">顶部</span>
                        </div>

                    </li>
                </a>
            </ul>
        </div>
  		 <!-- 我的兄弟叫顺溜之导航 -->
  		<%@ include file="mydaohang.jsp"  %>
  	
  	
  	
                <div class="wdpc-header-a2">
                    <a href="" class="weidaiwang">微贷网</a>
                    <ul class="actived">
                        <a href="${pageContext.request.contextPath }/test/index.html">
                            <li class="actived-a1 ">
                                首页
                            </li>
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/x-tou.jsp">
                            <li class="actived-a1 actived-x" style="padding-bottom: 10px; ">
                                我要出借
                            </li>
                        </a>
                        <a href="${pageContext.request.contextPath }/jsp/loan.html">
                            <li class="actived-a1" style="padding-bottom: 10px; ">
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
        </div>
        <div id="top">
            <div id="context">
                <div id="leftbox">
                    <h2 style="font-weight: 500">
                        <span id="bid_bProjectCode" style="font-size: 16px"></span><span id="tId" style="font-size: 14px;color: #9e9e9e;margin-left: 35px">借款编号：</span></span>
                        <div style="float: right;color: #9e9e9e;font-size: 14px;">债权转让及受让协议范本</div>
                    </h2>
                    <div style="width: 790px;height: 123px;margin: 0 auto;">
                            <ul style="padding-top: 30px">
                                <li style="width: 240px;height: 73px;float: left">
                                    <strong style="margin-right: 2px;font-weight: normal"><span style="font-size: 14px;font-size: 36px;" id="tTransferPrice"></span>元</strong>
                                    <p style="font-size: 14px;color: #9e9e9e;margin-top: 5px">转让价格</p>
                                </li>
                                  <li style="width: 300px;height: 73px;float: left">
                                    <strong style="color: #fc5830;margin-left: 2px;font-weight: normal"><span style="color: #fc5830;font-size: 36px;"  id="bRate"></span>%</strong>
                                    <p style="font-size: 14px;color: #9e9e9e;margin-top: 5px">预期利率</p>
                                </li>
                                <li style="float: left;margin-top: 25px">
                                    <div style="width: 190px;height: 5px;background-color: #eeeeee">
                                        <div id="jingdutiao" style="width: ${((bidinfo.bdSum - bidinfo.bdExitsum)/bidinfo.bdSum)*100}%;height: 5px;background-color: #05c3f9"></div>
                                    </div>
                                    <p id="jingduzhi" style="font-size: 14px;color: #9e9e9e;margin-top: 25px">进度： %</p>
                                </li>
                            </ul>
                    </div>
                    <div style="width: 790px;height: 107px;margin: 0 auto;line-height: 35px">
                        <ul>
                            <li style="font-size: 14px;float: left;width: 25%"><span style="font-size: 14px;color: #979797">债券本金：</span><span id="tCapital" style="font-size: 14px;">元</span></li>
                            <li style="font-size: 14px;float: left;margin-left: 100px;width: 20%"><span style="font-size: 14px;color: #979797">剩余期限：</span><span id="monthAndDay" style="font-size: 14px;">X个月X天</span></li>
                            <li style="font-size: 14px;float: left;margin-left: 100px;width: 25%"><span style="font-size: 14px;color: #979797">原标年化：</span><span id="bid_bRate" style="font-size: 14px;">xx.xx%</span></li>
                        </ul><br/>
                         <ul>
                            <li style="font-size: 14px;float: left;width:25%"><span style="font-size: 14px;color: #979797">还款方式：</span><span id="bid_bRepayment" style="font-size: 14px;">xxxx</span></li>
                            <li style="font-size: 14px;float: left;margin-left: 100px;width:20%"><span style="font-size: 14px;color: #979797">计息时间：</span><span style="font-size: 14px;">当天计息</span></li>
                            <li style="font-size: 14px;float: left;margin-left: 100px;width:25%"><span style="font-size: 14px;color: #979797">最近待收日期：</span><span id="bid_tRemittance" style="font-size: 14px;">yyyy-MM-dd</span></li>
                        </ul><br/>
                        <p style="font-size: 14px">
                            <span style="font-size: 14px;color: #979797">安全等级：</span>
                            <img src="${pageContext.request.contextPath }/statics/images/star1x.png"><img src="${pageContext.request.contextPath }/statics/images/star1x.png"><img src="${pageContext.request.contextPath }/statics/images/star1x.png"><img src="${pageContext.request.contextPath }/statics/images/star1x.png"><img src="${pageContext.request.contextPath }/statics/images/star1x.png">
                            本金、收益稳定(内部评级，仅供参考)	
                        </p>
                    </div>
                </div>
                <div id="rightbox">
                <input type="hidden" id="uId" value="${userSession.uId}">
                    <div style="width: 290px;height: 286px;margin: 0 auto;margin-top: 25px">
                        <p  style="font-size: 14px;color: #979797">剩余可承接债权：<span style="font-size: 24px;font-weight: normal" id="tReTraPrice"></span>元</p>
                        	<p style="font-size: 12px;margin-top: 55px;color: #9e9e9e">账户余额：<span id="uBalance" ><fmt:formatNumber type="number" value="${userSession.uBalance }" pattern="0.00" maxFractionDigits="2"/></span>元</p>
                       
                        <div class="input-group" style="width: 535px;height: 40px;">
                            <input id="t1" type="text" onkeyup="OnKey()"  class="form-control" style="height: 40px;width: 292px" placeholder="500起投"/>
                        </div>
                        <p style="color: red;font-size:12px;padding-top: 10px;line-height: 15px" id="error"></p>
                        <br/>
                        <span id="lExTotInterest"></span>
                        		<button id="form" class="btn btn-primary" style="width: 290px;height: 40px;" value="立即投标" onclick="biding()">立即投标</button>
                                            
                        <p style="font-size: 12px;color: #9e9e9e;text-align: center">温馨提示：市场有风险，出借需谨慎</p>
                        
<<<<<<< .mine
=======
                      
                        <p style="font-size: 12px;color: #9e9e9e;text-align: center">温馨提示：市场有风险，出借需谨慎</p>
>>>>>>> .r64
                    </div>
                </div>
            </div>
        </div>
        <div style="width: 1902px;height: 57px;box-shadow: 0 2px 2px 0 #f7f7f7;">
            <ul id="myTab" class="nav nav-tabs" style="margin-left:360px;border: 0px">
                <li class="active" style="border-bottom: 3px solid #36adf7;">
                    <a href="#xiangmu" data-toggle="tab" style="color: black;font-size: 16px;margin-top: 8px">项目详情</a>
                </li>
                <li style="margin-left: 100px">
                    <a href="#anquan" data-toggle="tab" style="color: black;font-size: 16px;margin-top: 8px">安全审核</a>
                </li>
                <li style="margin-left: 100px">
                    <a href="#jilu" data-toggle="tab" style="color: black;font-size: 16px;margin-top: 8px">出借记录</a>
                </li>
            </ul>
        </div>
        <div style="width: 1202px;height: auto;margin: 0 auto;margin-bottom: 50px">
            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade in active" id="xiangmu">
                  <div id="first">
                      <h6 style="font-size: 16px;font-weight: normal;margin-bottom: 30px">转让说明</h6>
                        <p style="font-size: 14px;line-height: 25px">债权转让，是指投资人因个人原因急需资金，在微贷网投资的借款项目转让给其他用户。债权转让能提高投资者资金的流动性，当你需要流动资金时，可以通过出售你名下拥有的。符合相应条件的债权给其他投资人，从而完成债权转让，获得流动资金</p>
                        <img src="${pageContext.request.contextPath }/statics/localimg/zrdetail.png" width="100%">
                  </div>
                    <div id="third">
                        <h6 style="font-size: 16px;font-weight: normal;margin-bottom: 30px">债权转让规则</h6>
                        <ul>
                            <li>
                                <h5>1.有效投资1天后方可进行债权转让。</h5>
                            </li>
                            <li>
                                <h5>2.承接标可以进行多次转让。</h5>
                            </li>
                            <li>
                                <h5>3.当前标转让期间回款，转让自动失效。</h5>
                            </li>
                            <li>
                                <h5>4.债权转让标有效期是24小时，24小时后转让没成交则自动失效。</h5>
                            </li>
                        
                        </ul>
                    </div>
                    <div style="height: 1202px;height: 79px;margin-top: 80px">
                        <p style="margin-bottom: 30px">风险提示</p>

                        <p style="font-size: 14px">市场有风险，出借需谨慎。请您在出借前，仔细阅读<a href="#" style="font-size: 14px;color: #36adf7">《出借风险说明和禁止性行为》</a> 。</p>
                    </div>
                </div>
                <div class="tab-pane fade" id="anquan" style="margin-bottom: 50px">
                        <p style="margin-top: 60px;margin-bottom: 50px">资金安全保障<span style="font-size: 14px">（微贷网只提供稳健可靠的项目出借）</span></p>
                        <img src="${pageContext.request.contextPath }/statics/images/tu2.png">
                        <ul>
                            <li style="margin-bottom: 30px">
                                <h3 style="font-size: 16px">严格的风控流程</h3>
                                <p style="font-size: 14px;color: #9e9e9e;">微贷网细化贷前调查、贷中审查、贷后管理、逾期处理等四个风控流程，把风险控制渗入每一个环节中。通过详尽的贷前审查、审慎的贷中核查、完善的贷后管理以及妥当的逾期处理，把风
                                    险控制在合理的范围内，坚持追求所有标的均真实、有效，可追溯、可审查。</p>
                            </li>
                            <li>
                                <h3 style="font-size: 16px">出借人监督委员会监督</h3>
                                <p style="font-size: 14px;color: #9e9e9e;">微贷网出借人监督委员会，是由出借人自发成立的组织，投监会成员可以随时随地到微贷网任意一家正式营业的营业部查询觉得有疑问标的的所有原始资料。若出借人对微贷网所发标的存疑，
                                    均可委托投监会查标，微贷网督导监察部配合线上查标对接分部所有事宜</p>
                            </li>
                        </ul>
                </div>
                <div class="tab-pane fade" id="jilu">
                    <table style="width: 1202px;height: auto;margin-top: 60px">
                        <tr style="background-color: #f3f3f3;font-size: 14px">
                            <td style="width: 300px;height: 46px">序号</td>
                            <td style="width: 300px;height: 46px">投标人</td>
                            <td style="width: 300px;height: 46px">出借金额(元)</td>
                            <td style="width: 300px;height: 46px">投标时间</td>
                        </tr>
                        <tr>
                            <td style="width: 300px;height: 70px" class="tr">1</td>
                            <td style="width: 300px;height: 70px">176****2607</td>
                            <td style="width: 300px;height: 70px">10000.00</td>
                            <td style="width: 300px;height: 70px">2018-06-14</td>
                        </tr>
                        <tr>
                            <td style="width: 300px;height: 70px" class="tr">2</td>
                            <td style="width: 300px;height: 70px">176****2607</td>
                            <td style="width: 300px;height: 70px">10000.00</td>
                            <td style="width: 300px;height: 70px">2018-06-14</td>
                        </tr>
                    </table>
                </div>
            </div>
    </div>
        <div class="footer">
            <div class="footer-a1">
                <div class="footer-a2">
                    <div class="footer-left">
                        <dl>
                            <dt>关于微贷</dt>
                            <dd><a href="">团队介绍</a></dd>
                            <dd><a href="${pageContext.request.contextPath }/jsp/ditu.jsp">联系我们</a></dd>
                            <dd><a href="">人才招聘</a></dd>
                        </dl>
                    </div>
                    <div class="footer-left">
                        <dl>
                            <dt>安全保障</dt>
                            <dd><a href="">实体经营</a></dd>
                            <dd><a href="">阿里云金融</a></dd>
                            <dd><a href="">黑名单披露</a></dd>
                        </dl>
                    </div>
                    <div class="footer-left">
                        <dl>
                            <dt>我要出借</dt>
                            <dd><a href="">常见问题</a></dd>
                            <dd><a href="">收费标准</a></dd>
                            <dd><a href="">平台协议</a></dd>
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
    </div>
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/shunliu-header.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/layer/layer.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/bootstrap.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath }/statics/localjs/zhuanrangDetail.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#myTab li:eq(0) a').tab('show');
            $("#myTab li").click(function () {
                $(this).css({"border-bottom":"3px solid #36adf7"});
                $("#myTab li").not(this).css("border-bottom","none")
            })
        });
/*         $("#form").on('click',function(){
            var t1 = document.getElementById("t1").value;
            var month=document.getElementById("month").innerText;
            var lilv=document.getElementById("bdlilv").innerText;
            var num=$("#bdid").text();
          	var money=50000.00;
            layer.open({
                type: 2,
                title : '支付',
                area: ['358px', '520px'],//宽高
                skin: 'layui-layer-rim', //加上边框
                content: ['${pageContext.request.contextPath}/bk/paymentPassword.html?money=${user.uBalance}&bidId='+num+'&bidmoney='+t1+'&bidmonth='+month+'&lilv='+lilv, 'no']
            });
        }) */
        
    </script>
</body>
</html>