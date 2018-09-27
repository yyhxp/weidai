<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
	<script type="text/javascript">  
            var time = 4;  
            function returnUrlByTime() {    
                window.setTimeout('returnUrlByTime()', 1000);    
                time = time - 1;    
                if(time<=0){  
                    time = 0;  
             window.setTimeout("location.href='${pageContext.request.contextPath}/index/index.xhtml';", 0);   
                }  
                document.getElementById("layer").innerHTML = time;    
            }    
        </script>  
<body onload="returnUrlByTime()">  
 <div >  
<a href="javascript:void(0)" onclick="window.location.href='${pageContext.request.contextPath}/jsp/index.html' " ><font size="5px" >恭喜您注册成功，<b><span id="layer">3</span></b>秒后会自动跳转，如果没有跳转，请点这里......</font></a></div>
	
</html>
