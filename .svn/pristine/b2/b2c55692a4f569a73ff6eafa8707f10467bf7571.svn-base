<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="format-detection"
	content="telephone=no, email=no, adress=no">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
 <link rel="shortcut icon" href="https://www.weidai.com.cn/favorite.ico" type="image/x-icon">
<meta http-equiv="expires" content="0">
<title>微贷网--注册</title>
<!-- 引入css样式 -->
<link
	href="${pageContext.request.contextPath }/statics/css/qtregister.css"
	type="text/css" rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/statics/css/bootstrap.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css"
	rel="stylesheet" />
</head>
<body>
	<div>
		<!-- 头部 -->
		<div id="header">
			<div class="h-logo">
				<a href="${pageContext.request.contextPath }/jsp/index.jsp"><img src="${pageContext.request.contextPath }/statics/images/loginlogo.jpg"></a> <em>|</em><a
					href="#">个人注册</a>
			</div>
		</div>
		<!-- <div id="div1"></div> -->
		<!-- <div id="div2"></div> -->
		<!-- <div id="div3"></div> -->
		<!-- <div id="div4"></div> -->
		<!-- 主体部分 -->
		<div id="content">
			<div class="c-con" style="height:535px;">
				<form action="${pageContext.request.contextPath }/user/Register.html"
					method="post" id="userForm">
					<div class="c-one">
						<input name="uPhone" id="uPhone" type="text"
							placeholder="请输入手机号码" required /><br /> <span id="div1"
							style="color: red; padding-left: 37px;"></span>
					</div>
					<div class="c-one">
						<input name="uPassword" id="uPassword" type="password"
							placeholder="请设置登录密码" required /><br> <span id="div3"
							style="color: red; padding-left: 37px;"></span>
					</div>
					<div class="c-two">
						<input name="picture" id="picture" type="text"
							placeholder="请输入图片验证码" style="float: left" required />
						<div class="c-two-tp" style="float: left">
							<button id="Promt" name="button" class="re-get noBut"
								style="width: 101px; height: 42px; border: 1px solid whitesmoke; background-color: transparent;">
								<em style="letter-spacing: 1em">5431</em>
							</button>
							<br />
							<p id="div2"
								style="color: red; position: relative; left: -207px;"></p>
						</div>
					</div>
					<div class="c-three">
						<input name="yzphone" type="text" id="yzphone"
							placeholder="请输入手机验证码" style="float: left" required="required" />
						<!-- <button class="btn">获取验证码</button> -->
						<input type="button" id="getCode" class="re-get noBut"
							value="获取验证码"
							style="height: 39px; width: 108px; background-color: transparent; font-size: 12px; border: 1px solid whitesmoke;" /><br>
						<!--存放Ajax返回的值  -->
						<input type="hidden" name="temp" class="temp" id="temp">
						<span id="div4" style="color: red; position: relative; left: -176px;"></span>
					</div>
					<div class="c-four">
						<label>推荐人手机号码(选填)：</label><br /> <input name="tjphone"
							type="text" placeholder="推荐人手机号码" />
					</div>
					<div class="c-five">
						<label> <input name="yaoqiu" type="checkbox" id="regText">我已阅读并同意《<a
							href="#">注册协议</a> 》《<a href="#">用户服务协议</a> 》
						</label>
					</div>
					<div class="c-six">
						<button type="submit" class="btn" id="regbtn" disabled>
							<strong>立 即 注 册</strong>
						</button>
					</div>
					<div class="c-seven">
						<div class="c-seven-login">
							<p>
								已有账号？ <a href="${pageContext.request.contextPath }/user/logindo.html">登录</a>
							</p>
						</div>
					</div>
				</form>
			</div>
		</div>

		<!-- 底部 -->
		<div id="footer">
			<div class="guanyu">
				<p>
					关于微贷<span> | </span> <a href="${pageContext.request.contextPath }/jsp/ditu.jsp" style="color:black;">联系我们</a><span> | </span> 人才招聘<span> | </span> 荣誉资质<span>
						| </span> 帮助中心
				</p>
			</div>
			<div class="beizhu">
				<p>Copyright ©2011-2018 微贷（杭州）金融信息服务有限公司
					版权所有|浙ICP备15029561号-4|ICP经营许可证编号：浙B2-20160682理财有风险 出借需谨慎</p>
			</div>
		</div>
	</div>
	<!--映射路径  -->
	<input type="hidden" id="path" class="path" name="path"
		value="${pageContext.request.contextPath }" />
	<!--上一步的路径  -->
	<input type="hidden" id="referer" name="referer"
		value="<%=request.getHeader("Referer")%>" />
</body>
<!-- 引入js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
<%-- <script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/bootstrap.js"></script> --%>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/Register.js"></script>
<script type="text/javascript">
	
</script>

</html>