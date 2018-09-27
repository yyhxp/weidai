<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'mydaohang.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div class="wdpc-header">
            <div class="wdpc-header-a1">
                <ul class="header-a1">
                       <c:if test="">
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
               				<c:if test="">
               				<li class="header-a2" style="margin-left: -95px;width: 37%">
               					<span class="header-ax">欢迎${user.uUsername.replaceAll("(\\d{3})\\d{4}(\\d{4})", "$1****$2")}来到微贷网!</span>
               					<a href="${pageContext.request.contextPath}/jsp/login.jsp">
               						<span class="header-ax">[退出]</span>
               					</a>
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
                            <i class="wxicon" style="position: absolute;top: 4px;left: -2px">

                            </i>
                            <span class="kf-font1">关注我们</span>
                        </a>
                    </li>
                </ul>
            </div>
    
    
    
  </body>
</html>
