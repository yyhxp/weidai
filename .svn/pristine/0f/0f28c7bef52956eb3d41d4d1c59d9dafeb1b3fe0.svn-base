<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
    <meta charset="UTF-8">
    <title>微贷网--X-智投</title>
    <link href="${pageContext.request.contextPath }/statics/css/bootstrap.css" type="text/css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath }/statics/css/x_tou.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/shunliu-header.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/statics/images/a8da50662c538d06a25218ee4546dc9c.ico">
</head>
<body>
    <div id="menu" style="background-color: white;">
        <div id="bgimg">
            <div>
                <div class="wdpc-header">
                    <div class="wdpc-header-a1">
                        <ul class="header-a1">
               				<c:if test="${user.uUsername==null}">
               				 <li class="header-a2" style="margin-left: 40px">
               						<a href="${pageContext.request.contextPath}/jsp/login.jsp">
                                   	 <span class="header-ax">请登录</span>
                               	</a>
                                <span class="a-a">-</span>
                                <a href="${pageContext.request.contextPath}/jsp/register.jsp">
                                    <span class="header-ax">注册</span>
                                </a>
                                </li>
               				</c:if>
               				<c:if test="${user.uUsername!=null}">
               				 <li class="header-a2" style="margin-left: -95px;width: 37%">
               					<span class="header-ax">欢迎${user.uUsername.replaceAll("(\\d{3})\\d{4}(\\d{4})", "$1****$2")}来到微贷网!</span>
               					<a href="${pageContext.request.contextPath}/jsp/login.jsp">[退出]</a>
               					 </li>
               				</c:if>
                            <span class="span-x">|</span>
                            <li class="header-a3">
                                <a href="">
                                    <span class="header-ax">会员俱乐部</span>
                                </a>
                            </li>
                            <span class="span-x">|</span>
                            <li class="header-a4">
                                <a href="">
                                    <span class="header-ax">微贷社区</span>
                                </a>
                            </li>
                            <span class="span-x">|</span>
                            <li class="header-a4">
                                <a href="">
                                    <span class="header-ax">帮助中心</span>
                                </a>
                            </li>
                            <span class="span-x">|</span>
                            <li class="header-a4">
                                <a href="">
                                    <span class="header-ax">新手指导</span>
                                </a>
                            </li>
                            <span class="span-x">|</span>
                            <li class="header-a5" style="position: relative;">
                                <a href="">
                                    <i class="kficon" style="position: absolute;top: 4px;">
                                    </i>
                                    <span class="kf-font">在线客服</span>
                                </a>
                            </li>
                            <span class="span-x">|</span>
                            <li class="header-a5" style="position: relative;">
                                <a href="">
                                    <i class="wxicon" style="position: absolute;top: 4px;left: -2px;">
                                    </i>
                                    <span class="kf-font1">关注我们</span>
                                </a>
                            </li>
                        </ul>
                    </div>


                    <div class="wdpc-header-a2">
                        <a href="${pageContext.request.contextPath }/test/index.html" class="weidaiwang">微贷网</a>
                        <ul class="actived">
                            <a href="${pageContext.request.contextPath}/test/index.html">
                                <li class="actived-a1 actived-x">
                                    首页
                                </li>
                            </a>
                            <a href="${pageContext.request.contextPath }/bid/sanbiao.html">
                                <li class="actived-a1" style="padding-bottom: 10px; ">
                                    我要出借
                                </li>
                            </a>
                            <a href="${pageContext.request.contextPath }/jsp/loan.jsp">
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
                                <a href="${pageContext.request.contextPath }/bid/xBid.html">X智投</a>
                            </li>
                            <li class="wdpc-header-push">
                                <a href="${pageContext.request.contextPath }/bid/zhitou.html">优选智投</a>
                            </li>
                            <li class="wdpc-header-push">
                                <a href="${pageContext.request.contextPath }/bid/sanbiao.html">散标列表</a>
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

            <!---->
            <div id="x-tou">
                <h1 style="margin-left: 30px;margin-top: 0"><img src="${pageContext.request.contextPath }/statics/images/titles1x8q9ya.png"></h1><br/>
                    <div id="calculation">
                        <p style="float: left">当前剩余可出借金额：<span id="money" style="font-size:14px">${xtou.bdExitsum}</span>元</p>
                        <div id="proportion"  style="float: left">
                            <div  id="bilv" style="width:${((xtou.bdSum - xtou.bdExitsum)/xtou.bdSum)*100}%"></div>
                        </div>
                        <i style="margin-left: 73px"><fmt:formatNumber value="${((xtou.bdSum - xtou.bdExitsum)/xtou.bdSum)*100}" pattern="##" minFractionDigits="0" ></fmt:formatNumber>%</i><br/>
                        <a href="#" style="text-decoration: none;font-size: 12px;margin-left: -232px;color:#038cf6;font-weight:700">常见问题</a><br/><br/>
                        <c:if test="${user.uUsername==null }">
                        	<p style="font-size: 12px">账户余额：<a href="login.jsp" style="color: blue;font-size: 12px;">登录</a>&nbsp;后可见</p>
                        </c:if>
                        <c:if test="${user.uUsername!=null }">
                        	<p style="font-size: 12px">账户余额：<span style="font-size: 12px;">${user.uBalance}</span>&nbsp;元</p>
                        </c:if>
                        <div class="input-group" style="width: 535px;height: 40px;">
                            <input id="t1" type="text" onkeyup="OnKey()"  class="form-control" style="height: 40px" placeholder="1000元起投1000元递增"/>
                        </div>
                        <p style="color: red;font-size:12px;padding-top: 10px;line-height: 15px" id="error"></p>
                        <p style="line-height: 28px;float: left">选择服务期限:</p>
                        <ul style="line-height: 10px">
                            <li class="month months" style="background-color: #0e89f5;color:white;margin-left: 75px;text-align: center;">3个月</li>
                            <li class="month" style="text-align: center;">6个月</li>
                            <li class="month" style="text-align: center;">12个月</li>
                        </ul><br/><br/>
                        <div style="line-height: 30px">
                            预期利润：<span id="lilv" style="color: #f87a1d;font-size: 16px;margin-left: 100px">7.30%</span><br/>
                            服务借出本金(元)：<input id="t2" type="text" value="0.00" readonly="readonly" style="border: none;font-size: 16px;margin-left: 50px"/><br/>
                            预期利息(元)：<input id="t3" type="text" value="0.00" readonly="readonly" style="border: none;font-size: 16px;margin-left: 79px"/>
                        </div><br/>
                        	<c:if test="${user.uStatus==0}">
                        		<input id="btnone" type="submit" class="btn btn-primary" style="width: 290px;height: 40px;margin-left: 120px" value="授权服务"/>
                        	</c:if>
                        	<c:if test="${user.uStatus==1}">
                        		<input id="btntwo" type="submit" class="btn btn-primary" style="width: 290px;height: 40px;margin-left: 120px" value="立即投标"/>
                        	</c:if>
                        <p style="font-size: 12px;margin-left: 175px;line-height: 25px">温馨提示：市场有风险，出借需谨慎</p>
                    </div>
            </div>
        </div>
        <div class="table">
            <ul class="nav nav-tabs">
                <li style="margin-right: 50px;border-bottom:2px solid #038cf6;color:#0078ff"><a href="#tab1" data-toggle="tab">服务介绍</a></li>
                <li style="margin-left: 50px"><a href="#tab2" data-toggle="tab">匹配标的</a></li>
            </ul>
        </div>
        <div style="height: 50px"></div>
        <div class="tab-content">
            <div class="tab-pane active" id="tab1" style="text-align: center">
                <img src="${pageContext.request.contextPath }/statics/images/itro1x3erb2.png"><hr style="border-bottom: 1px solid #5578e7"/>
                <div style="height: 50px"></div>
                <img src="${pageContext.request.contextPath }/statics/images/servers1x3FuOA.png">
                <div style="height: 50px"></div>
                <div id="zonglan">
                    <div style="height: 50px"></div>
                    <img src="${pageContext.request.contextPath }/statics/images/indexs.png">
                    <ul style="position: relative;top: -105px">
                        <li style="margin-left:90px">
                            <h2>自动投</h2>
                            <p>系统自动匹配优质标的，省时省力</p>
                        </li>
                        <li>
                            <h2>起息快</h2>
                            <p>授权后一个自然日计息</p>
                        </li>
                        <li>
                            <h2>利息高</h2>
                            <p>本息自动循环出借，轻松拿利息</p>
                        </li>
                        <li>
                            <h2>超省心</h2>
                            <p>退出后还本付息，为您省心</p>
                        </li>
                        <li>
                            <h2>更安全</h2>
                            <p>匹配标的安全等级全部为5星级</p>
                        </li>
                    </ul>
                </div>
                <div style="height: 50px"></div>
                <img src="${pageContext.request.contextPath }/statics/images/history1x2uxEr.png">
                <div style="height: 50px"></div>
            </div>
            <div class="tab-pane" id="tab2">
                <div id="top">
                    ＊以下标的为本期X智投即将匹配的标的，实际出借后可在我的账户-出借记录-X智投详情页面查询实际投标情况
                </div>
                <table style="margin: 0 auto">
                    <tr style="background-color: #fbfbfb" >
                        <td style="width: 379px;height: 60px;text-align: left;padding-left: 3%;font-weight: bold;font-size: 16px">标名称</td>
                        <td style="width: 261px;height: 60px;text-align: left;padding-left: 3%;font-weight: bold;font-size: 16px">借款人</td>
                        <td style="width: 262px;height: 60px;text-align: right;padding-right:3%;font-weight: bold;font-size: 16px">借款期限</td>
                        <td style="width: 288px;height: 60px;text-align: right;padding-right:3%;font-weight: bold;font-size: 16px">借款金额(元)</td>
                    </tr>
                    <tr style="border-bottom: 1px solid #f6f6f6">
                        <td style="width: 379px;height: 60px;text-align: left;padding-left: 3%;font-size: 14px">选靓车本田雅阁-156011-01</td>
                        <td style="width: 261px;height: 60px;text-align: left;padding-left: 3%;font-size: 14px">张**</td>
                        <td style="width: 262px;height: 60px;text-align: right;padding-right:3%;font-size: 14px">36天</td>
                        <td style="width: 288px;height: 60px;text-align: right;padding-right:3%;font-size: 14px">19,149.39</td>
                    </tr>
                    <tr>
                        <td style="width: 379px;height: 60px;text-align: left;padding-left: 3%;font-size: 14px">大众朗逸抵押</td>
                        <td style="width: 261px;height: 60px;text-align: left;padding-left: 3%;font-size: 14px">汪**</td>
                        <td style="width: 262px;height: 60px;text-align: right;padding-right:3%;font-size: 14px">25,000.00	</td>
                        <td style="width: 288px;height: 60px;text-align: right;padding-right:3%;font-size: 14px">25,000.00</td>
                    </tr>
                    <tr>
                        <td style="width: 379px;height: 60px;text-align: left;padding-left: 3%;font-size: 14px">奔驰GLK 300 4MATIC抵押</td>
                        <td style="width: 261px;height: 60px;text-align: left;padding-left: 3%;font-size: 14px">林**</td>
                        <td style="width: 262px;height: 60px;text-align: right;padding-right:3%;font-size: 14px">36天</td>
                        <td style="width: 288px;height: 60px;text-align: right;padding-right:3%;font-size: 14px">77,514.88</td>
                    </tr>
                </table>
            </div>
        </div>

        <iframe src="${pageContext.request.contextPath }/jsp/shunliu-bottom.jsp" width="100%" height="385px"></iframe>

    </div>
    <script src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/layer/layer.js"></script>
    <script type="text/javascript" language="javascript">
        function OnKey() {
        	var t1 = document.getElementById("t1").value;
            document.getElementById("t2").value= t1;
            var money = document.getElementById("money").innerText;
            var obj = document.getElementById('lilv').innerText;
            if(obj=="7.30%"){
                document.getElementById("t3").value = (document.getElementById("t1").value*0.072/12*3).toFixed(2);
            }
            if(obj=="8.00%"){
                document.getElementById("t3").value = (document.getElementById("t1").value*0.08/12*6).toFixed(2);
            }
            if(obj=="9.20%"){
                document.getElementById("t3").value = (document.getElementById("t1").value*0.092/12*12).toFixed(2);
            }
            
			if(t1<1000){
				$("#error").html("输入金额不能小于1000。请重新输入");
			}else if((t1%1000)!=0){
				$("#error").html("出借金额必须为1000的整数倍。请重新输入");
			}else if(parseInt(money)< t1 ){
				$("#error").html("出借金额不能大于"+money+"元。请重新输入");
			}else{
				$("#error").html("");
			}
        }
        $(".month").click(function () {
            $(this).css({"background-color":"#0e89f5","color":"white"});
            $(this).addClass("months");
            $(".month").not(this).css({"background-color":"white","color":"#0e89f5"});
            $(".month").not(this).removeClass("months");
            var count=$(this).index();
            if(count==0){
                var obj = document.getElementById('lilv');
                obj.innerText = "7.30%";
            }
            if(count==1){
                var obj = document.getElementById('lilv');
                obj.innerText = "8.00%"
            }
            if(count==2){
                var obj = document.getElementById('lilv');
                obj.innerText = "9.20%"
            }
        })
        $(".table .nav li").click(function () {
            $(this).css({"border-bottom":"2px solid #038cf6","color":"#0078ff"});
            $(".table .nav li").not(this).css({"border-bottom":"none","color":"#171717"});
             var num =$(this).index();
            $(".tab-content #tab"+(num+1)).addClass("active");
            $(".tab-content .tab-pane").not(".tab-content #tab"+(num+1)).removeClass("active");
        })
        $("#btntwo").on('click',function(){
            var t1 = document.getElementById("t1").value;
            var ss=$(".months").text();
            var num=parseInt(ss);
            var lilv=$("#lilv").text();
            var li=parseFloat(lilv);
            layer.open({
                type: 2,
                title : '支付',
                area: ['358px', '520px'],//宽高
                skin: 'layui-layer-rim', //加上边框
                content: ['${pageContext.request.contextPath}/bk/paymentPassword.html?money=${user.uBalance}&bidId=${xtou.bdId}&bidmoney='+t1+'&bidmonth='+num+'&lilv='+li, 'no']
            });
        })
        $("#btnone").on('click',function(){
        layer.open({
            type: 2,
            title : '存管信息提示',
            area: ['485px', '343px'],//宽高
            skin: 'layui-layer-rim', //加上边框
            content: ['${pageContext.request.contextPath }/bk/demos.html', 'no']
        });
    });
    </script>

    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/shunliu-header.js"></script>

</body>
</html>