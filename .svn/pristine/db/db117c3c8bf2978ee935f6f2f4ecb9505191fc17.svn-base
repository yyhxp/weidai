<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="format-detection" content="telephone=no, email=no, adress=no">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <link rel="shortcut icon" href="https://www.weidai.com.cn/favorite.ico" type="image/x-icon">
    <title>微贷网--登录</title>
    <!-- 引入css样式 -->
    <link href="${pageContext.request.contextPath }/statics/css/qtlogin.css" type="text/css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath }/statics/css/bootstrap.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
    <div>
        <div id="header">
            <div class="h-logo">
               <a href="${pageContext.request.contextPath }/jsp/index.html"><img src="${pageContext.request.contextPath }/statics/images/loginlogo.jpg"></a> <em>|</em><a href="login.jsp">登录</a>
            </div>
        </div>

        <div id="content">
            <div class="h-con">
                <div class="h-con-title">
                    <div class="login-title"><strong>微贷会员登录</strong></div>
                </div>
                <div style="position:relative;top:31px;left:148px;color: red;">${error}</div>
                <div class="h-con-content">
                    <form   modelAttribute="user"action="${pageContext.request.contextPath }/user/logindo1.html" method="post">
                        <!-- class="bs-example bs-example-form" role="form" -->
                        <div class="input-group"  style="width: 290px;height: 45px;margin-top: 35px;">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                            <input type="text" class="form-control" required="required" style="height: 45px;" id="uName" name="uName" placeholder="输入手机号/用户名" >
                        </div>
                        <br>
                        <div class="input-group"  style="width: 290px;height: 45px;">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                            <input type="password" class="form-control" style="height: 45px;" id="uPassword" name="uPassword" placeholder="请输入您的密码" required="required">
                        </div>
                        <br>
                        <div class="tijiao">
                       <ul id="formtip"></ul> 
                                <button type="submit" class="btn btn-default"  style="width: 290px;height: 45px;" id="loginBth">
                                    登  录
                                </button>
                        </div>
                    </form> 
                    <div class="liji">
                        <div class="wangji">
                            <p>
                                <a href="${pageContext.request.contextPath }/user/modify.html">忘记密码</a>
                                <a href="${pageContext.request.contextPath }/user/Registers" style="margin-left: 10px">立即注册</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="footer">
            <div class="guanyu">
                <p>
                    关于微贷<span> | </span>
      <a href="${pageContext.request.contextPath }/jsp/ditu.jsp" style="color:black;" >联系我们</a>  <span> | </span>
                    人才招聘<span> | </span>
                    荣誉资质<span> | </span>
                    帮助中心
                </p>
            </div>
            <div class="beizhu">
                <p>
                    Copyright ©2011-2018 微贷（杭州）金融信息服务有限公司 版权所有|浙ICP备15029561号-4|ICP经营许可证编号：浙B2-20160682理财有风险 出借需谨慎
                </p>
            </div>
        </div>
    </div>
</body>

    <!-- 引入js -->
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/bootstrap.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/login.js></script> 
</html>