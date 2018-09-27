<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="shortcut icon" href="https://www.weidai.com.cn/favorite.ico" type="image/x-icon">
    <title>微贷网--用户中心</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css">
    <style type="text/css">
        #content {
            font-size: 15px;
            text-align: center;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            /* line-height: 16px;*/
            display: block;
            padding-top: 50px;
            font-weight: 200;
        }
        #content2{
            display: block;
           /* padding-top: 80px;*/
            text-align: center;
            margin-top: 40px;
            margin-left: 80px;
          /*  font-size: 13px;*/

        }
    </style>
</head>

<body>
<div class="container" style="border: 3px solid whitesmoke; width: 480px; height:300px;">
    <span><img src="${pageContext.request.contextPath }/statics/images/deposiLogo.jpg" style="margin-top: 48px;margin-left: 112px;"></span><br/>
    <span id="content">微贷网联合厦门银行,开通银行资金存管账户,保证你的资金安全!</span><br/>
    <span>
     <button type="button" class="btn btn-info"id="content2" style="width: 300px;">立即开通</button>
    </span>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$("#content2").click(function(){
		 parent.window.location.href="${pageContext.request.contextPath }/jsp/userinfo.jsp";
		 var index = parent.layer.getFrameIndex(window.name);
	     parent.layer.close(index);
	})
</script>
</body>
</html>  