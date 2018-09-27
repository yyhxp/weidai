<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="format-detection"
	content="telephone=no, email=no, adress=no">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<link rel="shortcut icon" href="https://www.weidai.com.cn/favorite.ico" type="image/x-icon">
<title>微贷网--厦门银行资金存管</title>
<!-- 引入css样式 -->
<link
	href="${pageContext.request.contextPath }/statics/css/usercard.css"
	type="text/css" rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/statics/css/bootstrap.css"
	rel="stylesheet" />
<link
	href="/${pageContext.request.contextPath }/statics/css/bootstrap.min.css"
	rel="stylesheet" />
</head>
<body>
	<form action="${pageContext.request.contextPath }/nice/ok"
		method="post" id="userForm" class="userForm">
		<!-- logo图标 -->
		<div id="c-logo">
			<div class="c-logos">
				<img src="${pageContext.request.contextPath }/statics/images/logo-xm.png">
			</div>
		</div>
		<!-- 注册标题 -->
		<div id="c-blue">
			<div class="c-blues">
				<div class="c-blues-p">
					<p style="font-size: 24px; font-weight: 400; margin-left: 40px;">注
						册</p>
					<p style="margin-left: 18%; font-size: 16px; margin-top: 6px;">平台名称：微贷网</p>
					<p style="margin-left: 16%; font-size: 16px; margin-top: 6px;">平台公司名称：微贷（杭州）金融信息服务有限公司</p>
				</div>
			</div>
		</div>
		<!-- 填写信息区域 -->
		<div id="c-content">
			<div class="c-content-g">
				<p style="color: #406dbf; margin-top: 20px; font-size: 18px;">用户信息：</p>
				<div class="c-con-t">
					<div class="c-one">
						<p>
							<label>客户姓名</label> <span><input name="ubUsername"
								type="text" readonly="readonly" value="${name}" /></span>
						</p>
					</div>
					<div class="c-one" style="margin-top: 20px">
						<p>
							<label>证件类型</label> <span><input name="idcard" type="text"
								readonly="readonly" value="中华人民共和国身份证" /></span>
						</p>
					</div>
					<div class="c-one">
						<p>
							<label style="padding-left: 18px; margin-top: 20px">证件号</label> <span><input
								name="ubIdcardtemp" type="text" readonly="readonly"
								value="${idCard.replaceAll('(\\d{5})\\d{10}(\\d{3})','$1**********$2')}" /></span>
						</p>
						<input type="hidden" name="ubIdcard" class="idnumbers"
							id="idnumbers" value="${idCard}">
						<!-- <span
							style="color: red;" id="warninfo1" class="warninfo1"></span> -->
					</div>
					<div class="c-two">
						<label style="padding-left: 18px; margin-top: 20px">银行卡</label> <span
							style="float: none"><input name="ubBanknum" id="ubBanknum"
							class="ubBanknum" type="text" placeholder="请输入银行卡号" /></span>
						<p style="margin-top: 0px;">* 若银行卡为二类账户，将会影响提现，具体账户类型可咨询发卡行</p>
						</p>
						<span style="color: red; position: relative; left: 154px;"
							id="warninfo1" class="warninfo1"></span>
					</div>
					<div class="c-one" style="padding-top: 12px;">
						<p>
							<label>预留手机号</label> <span><input name="ubTelephone"
								id="ubTelephone" class="ubTelephone" type="text"
								placeholder="请输入预留手机号" /></span>
						</p>
						<span style="color: red; position: relative; left: 150px;"
							id="warninfo2" class="warninfo2"></span>
					</div>
					<div class="c-three">
						<p>
							<label style="padding-left: 18px; margin-top: 20px">验证码</label> <span><input
								name="identity" type="text" id="identity" class="identity" /></span> <input
								type="button" id="getCode" class="re-get noBut" value="获取验证码"
								
								style="height: 39px; width: 108px; background-color: transparent; font-size: 12px; border: 1px solid whitesmoke;" />
							<input type="hidden" class="temp1" id="temp1"><br> <span
								style="color: red; position: relative; left: 92px"
								id="warninfo3" class="warninfo3"></span>
						</p>
					</div>
					<!-- 设置交易密码 -->
					<p style="color: #406dbf; margin-top: 35px; font-size: 18px;">设置交易密码：</p>
					<div class="c-four">
						<p>
							<label style="padding-left: 18px; margin-top: 20px">创建密码</label>
							<span><input name="ubPassword" type="password"
								id="ubPassword" class="ubPassword" /></span>
						<p id="pass">* 6-18位数字、大小写字母和特殊字符组合，不支持空格</p>
						<span style="color: red; position: relative; left: 147px;"
							id="warninfo4" class="warninfo4"></span>
						</p>
					</div>
					<div class="c-four">
						<p>
							<label style="padding-left: 18px; margin-top: 10px">确认密码</label>
							<span><input name="ubPassword2" type="password"
								id="ubPassword2" class="ubPassword2" /></span> <br /> <span
								style="color: red; position: relative; left: 98px;"
								id="warninfo5" class="warninfo5"></span>
						</p>
					</div>
					<div class="c-five" style="margin-left: 156px; margin-top: 13px">
						<p>
							<span> <input name="xieyi" type="checkbox" id="regText" />
								阅读并接受《<a href="#">用户服务协议</a>》及《<a href="#">风险提示</a>》
							</span>
						</p>
					</div>
					<div class="c-six" style="">
						<!-- <button class="btn" id="regbtn" disabled>注 册</button> -->
						<button class="btn" id="regbtn" >注 册</button>
					</div>
					<div class="c-wenzi">
						<p>温馨提示：厦门银行不承担微贷网平台的投融资标的物及投融资人的审核责任，不对微贷网平台
							业务提供明示或默示的担保或连带责任，微贷网平台的交易风险由投融资人自行承担，与厦门银行无关。</p>
					</div>
				</div>
			</div>
		</div>
		<!-- 底部 -->
		<div id="footer">
			<!-- 底部背景色 -->
			<!--映射路径  -->
			<input type="hidden" id="path" class="path" name="path"
				value="${pageContext.request.contextPath }" />
			<!--上一步的路径  -->
			<input type="hidden" id="referer" name="referer"
				value="<%=request.getHeader("Referer")%>" />
		</div>
	</form>
</body>

<!-- 引入js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/bootstrap.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/usercard.js"></script>

</html>