<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="zh-cn">
<meta charset="UTF-8">
<link rel="shortcut icon" href="https://www.weidai.com.cn/favorite.ico" type="image/x-icon">
<title>微贷网--忘记密码</title>
<style>
.layout {
	width: 1202px;
	height: auto;
	margin: 0 auto;
}

.password-container {
	/* border: 1px solid #E3E3E3;*/
	min-height: 500px;
	margin-top: 30px;
	padding: 71px 85px;
	position: relative;
}

.step-tips {
	text-align: center;
}

.height18 {
	width: 100%;
	height: 18px;
}

.reset-password {
	border-collapse: collapse;
	margin: 45px auto;
}

.input-out input {
	width: 245px;
	height: 28px;
	padding: 5px 5px;
	line-height: 28px;
	border-radius: 2px;
	vertical-align: middle;
	margin-right: 10px;
	border: 1px solid #e3e3e3;
}

.pro-message {
	vertical-align: middle;
	line-height: 15px;
	font-size: 12px;
	color: #fd5830;
}

.erron1s {
	position: absolute;
	top: 223px;
	left: 825px;
}

.input-relative {
	position: relative;
}

.pro-message {
	display: inline-block;
	vertical-align: middle;
	line-height: 15px;
	font-size: 12px;
	color: #fd5830;
}

#creditId {
	position: absolute;
	top: 42px;
	left: 5px;
}

.imgPut {
	position: relative;
}

#imgCodeId {
	position: absolute;
	top: 42px;
	left: 10px;
}

.input-out input.code {
	width: 150px;
}

.input-out input {
	/* width: 245px;
             height: 28px;*/
	width: 257px;
	height: 40px;
	padding: 5px 5px;
	line-height: 28px;
	border-radius: 2px;
	vertical-align: middle;
	margin-right: 10px;
	border: 1px solid #e3e3e3;
	font-size: 14px;
}

.input-out button.noBut {
	border: 1px solid #ccc;
	color: #ccc;
	cursor: default;
}

.input-out button {
	vertical-align: middle;
	overflow: visible;
	background: #fff;
	border: 1px solid #3db1fa;
	color: #00bbfd;
	font-size: 12px;
	padding: 5px 5px;
	line-height: 18px;
	cursor: pointer;
	outline: none;
}

.submit {
	display: inline-block;
	width: 256px;
	height: 40px;
	text-align: center;
	line-height: 40px;
	background: #3db1fa;
	color: #fff;
	font-size: 16px;
	border-radius: 2px;
}

#reset-password tbody tr {
	margin-top: 25px;
	display: block; /**/
}

#Promt {
	width: 75px;
	height: 40px;
	color: black;
	letter-spacing: 0.5em;
	font-family: Arial9;
	font-size: 15px;
}

/*tbody tr{
            display:block; /!*将tr设置为块体元素*!/
            margin:2px 0; /!*设置tr间距为2px*!/
        }*/
</style>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css">
<script type="application/javascript" src="${pageContext.request.contextPath }/statics/js/jquery2.0.0.min.js"></script>
<script type="application/javascript" src="${pageContext.request.contextPath }/statics/js/bootstrap.min.js"></script>
</head>
<body>
<%-- 	<iframe src="${pageContext.request.contextPath }/header.html"
		width="100%"></iframe> --%>
	<!--<div class="layout" style="background-color: #FFFFFF">-->
	<div id="div"></div>
	<div id="div4"></div>
	<div class="password-container">
		<!--进度条-->
		<div class="step-tips">
			<img
				src="${pageContext.request.contextPath }/statics/images/statues11.jpg"
				alt="" width="1015px" height="59.5px">
		</div>
		<div class="height18"></div>
		<div class="password-box">
			<form action="${pageContext.request.contextPath }/user/modify2.html" method="GET" id="userForm" class="userForm">
				<table id="reset-password" style="margin: auto" class="controlltr">
					<tbody>
						<!--手机号码-->
						<tr>
							<th>手机号码:</th>
							<td>
								<div class="input-out" style="margin-left: 66px;">
									<input type="text" name="phoneNum" id="phoneNum" maxlength="11"
										required="required" style="width: 257px; height: 40px;" /> <span
										class="pro-message erron1s"
										style="display: block; color: red;" id="hint1"></span>
										<input type="hidden" name="temp1" class="temp1" id="temp1">
								</div>
							</td>
						</tr>
						<!--证件号码-->
						<tr>
							<th>证件号码 <i class="glyphicon glyphicon-question-sign"></i>
							</th>
							<td>
								<div class="input-out input-relative" style="margin-left: 55px;"
									style="width: 257px;height: 40px;">
									<input type="text" name="name" id="credit"
										placeholder="*仅供已完成实名认证的用户填写" required="required" /> <span
										class="pro-message" style="display: block;" id="creditId"></span>
								</div>
							</td>

						</tr>
						<!--图像验证码-->
						<tr>
							<th>图形验证码</th>
							<td>
								<div class="input-out imgPut" style="margin-left: 58px;"
									style="width: 257px;height: 40px;">
									<input type="text" name="name" value="" id="imgCode" required="required" />
									<!--图片验证码 这里用数字验证码替换-->
									<!--  <img src="">-->
									<!--数字验证码-->
									<!-- <p id="random"><em>5431</em></p>-->
									<button id="Promt" name="button" class="re-get noBut" style="background: url('${pageContext.request.contextPath }/statics/images/yzm.jfif') no-repeat;">
										<em>5431</em>
									</button>
									<span class="pro-message" style="display: block;" id="P2"></span>
								</div>
							</td>
						</tr>
						<!--手机验证码-->
						<tr>
							<th>验证码</th>
							<td>
								<div class="input-out" style="margin-left: 89px;">
									<input type="text" name="name" value="" maxlength="6"
										class="code" id="code" style="width: 257px; height: 40px;"
										required="required" />
										<input type="button" id="getCode" class="re-get noBut"
							value="请获取验证码"
							style="height: 39px; width: 108px; background-color: transparent; font-size: 12px; border: 1px solid silver;" />
							<input type="hidden" name="temp2" class="temp2" id="temp2">
							<span class="pro-message" style="display: block;" id="warn"></span>
								</div>
							</td>
						</tr>
						<!--确定按钮-->
						<tr style="margin-left: 130px">
							<th></th>
							<td><button type="submit" class="btn btn-info" id="submit" style="width: 270px;height: 45px;">确定</button></td>
						</tr>
					</tbody>
					<!--映射路径  -->
					<input type="hidden" id="path" name="path"
						value="${pageContext.request.contextPath }" />
					<!--上一步的路径  -->
					<input type="hidden" id="referer" name="referer"
						value="<%=request.getHeader("Referer")%>" />
				</table>
			</form>
		</div>
	</div>
	<!--高度小于354出现滚动条-->
<%-- 	<iframe src="${pageContext.request.contextPath }/bottom.html"
		width="100%" height="354px"></iframe> --%>
	<!--</div>-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/statics/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/statics/js/modifypwd1.js"></script>
</body>
</html>