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
<link rel="shortcut icon" href="https://www.weidai.com.cn/favorite.ico" type="image/x-icon">
<meta http-equiv="expires" content="0">
<title>微贷网--开通厦门银行资金存管</title>
<!-- 引入css样式 -->
<link
	href="${pageContext.request.contextPath }/statics/css/userinfo.css"
	type="text/css" rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/statics/css/bootstrap.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css"
	rel="stylesheet" />
</head>
<body style="background-color: rgb(246, 246, 246);">
	<div>
		<!-- 头部 -->
		<div id="header">
			<div class="h-logo">
				<img
					src="${pageContext.request.contextPath }/statics/images/loginlogo.jpg"><em>|</em><a
					href="#">开通厦门银行资金存管</a>
			</div>
		</div>

		<!-- 主体部分 -->
		<div id="content">
			<div id="c-con">
				<form action="${pageContext.request.contextPath }/jsp/usercard.jsp"
					method="post" id="userForm" class="userForm">
					<div class="input-group"
						style="width: 290px; height: 45px; margin-top: 35px;"
						style="margin-left: 38%">
						<label>姓 名：</label> <input type="text" class="form-control"
							style="height: 45px;" placeholder="输入姓名" name="name"
							required="required">
					</div>
					<br>
					<div class="input-group" style="width: 290px; height: 45px;">
						<label>身份证：</label> <input type="text" class="form-control"
							style="height: 45px;" required="required" placeholder="输入身份证"
							name="idcard" id="idcard" class="idcard">
							<input type="hidden" class="temp3" id="temp3">
					</div>
					<span id="warninfo" class="warninfo" style="color: red;"></span> <br>
					<div class="c-three">
						<button class="btn btn-primary" type="submit" class="Openup"
							id="Openup">立即开通</button>
					</div>
					<!--映射路径  -->
					<input type="hidden" id="path" name="path"
						value="${pageContext.request.contextPath }" />
					<!--上一步的路径  -->
					<input type="hidden" id="referer" name="referer"
						value="<%=request.getHeader("Referer")%>" />
				</form>
			</div>
		</div>

		<!-- 底部 -->
		<div id="footer">
			<div class="guanyu">
				<p>
					关于微贷<span> | </span> <a href="${pageContext.request.contextPath }/jsp/ditu.jsp" style="color:black;" >联系我们</a><span> | </span> 人才招聘<span> | </span> 荣誉资质<span>
						| </span> 帮助中心
				</p>
			</div>
			<div class="beizhu">
				<p>Copyright ©2011-2018 微贷（杭州）金融信息服务有限公司
					版权所有|浙ICP备15029561号-4|ICP经营许可证编号：浙B2-20160682理财有风险 出借需谨慎</p>
			</div>
		</div>
	</div>
</body>

<!-- 引入js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/bootstrap.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/userinfo.js">
	
</script>

</html>