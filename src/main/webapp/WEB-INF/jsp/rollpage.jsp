
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Rollpage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">

//提交表单，传递参数
  function page_nav(frm,num){
      frm.pageIndex.value=num;
      frm.submit(); 
  }
  //提交表单，进行表单验证，如果里面的值是数字，并且是在页码范围以内
  function jump_to(frm,pageno){
  var regexp=/^[1-9]\d*$/;  

      //只能是数字
  //拿到隐藏域中提交过来的总页数
  var   totalPage=document.getElementById("totalPage").value;
  //alert(totalPage);
     if(!regexp.test(pageno)){
     alert("请输入正确的数字！");
     return false;  
     }else if((pageno-totalPage)>0){   
     alert("总页数为"+totalPage+"请输入正确的页数");
     return false;
     } else{
     page_nav(frm,pageno);
     }    
  }



</script>


  </head>
  
  <body>
   
 <div class="page-bar">
			<ul class="page-num-ul clearfix">
				<li>共${param. totalCount }条记录&nbsp;&nbsp; ${param.pageIndex}/${param.totalPage}页</li>
		
				<c:if test="${param.pageIndex>1 }">
				<!-- 表单提交，两种方式：1、？加参数的方式，
				2、表单提交方式：建立javascript脚本，并在跳转页引用，参数放提交的表单名及跳转的页面 -->
			
				<a href="javaScript:page_nav(document.forms[0],1)">首页</a>
				<a href="javaScript:page_nav(document.forms[0],${param.pageIndex-1})">上一页</a>
						
				</c:if>
				
				<c:if test="${param.pageIndex<param.totalPage }">		
								
				<a href="javaScript:page_nav(document.forms[0],${param.pageIndex+1})">下一页</a>
				<a href="javaScript:page_nav(document.forms[0],${param.totalPage})">最后一页</a>
				</c:if>		
				&nbsp;&nbsp;			
			</ul>
		 <span class="page-go-form"><label>跳转至</label>
	     <input type="text" name="inputPage" id="inputPage" class="page-key" />页
	     <button type="button" class="page-btn" onClick='jump_to(document.forms[0],document.getElementById("inputPage").value)'>GO</button>
		</span>
		</div> 

		
  </body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
</script>
</head>
<body>
 		<div class="page-bar">
			<ul class="page-num-ul clearfix">
				<li>共${param.totalCount }条记录&nbsp;&nbsp; ${param.currentPageNo }/${param.totalPageCount }页</li>
				<c:if test="${param.currentPageNo > 1}">
					<a href="javascript:page_nav(document.forms[0],1);">首页</a>
					<a href="javascript:page_nav(document.forms[0],${param.currentPageNo-1});">上一页</a>
				</c:if>
				<c:if test="${param.currentPageNo < param.totalPageCount }">
					<a href="javascript:page_nav(document.forms[0],${param.currentPageNo+1 });">下一页</a>
					<a href="javascript:page_nav(document.forms[0],${param.totalPageCount });">最后一页</a>
				</c:if>
				&nbsp;&nbsp;
			</ul>
		 <span class="page-go-form"><label>跳转至</label>
	     <input type="text" name="inputPage" id="inputPage" class="page-key" />页
	     <button type="button" class="page-btn" onClick='jump_to(document.forms[0],document.getElementById("inputPage").value)'>GO</button>
		</span>
		</div> 
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/rollpage.js"></script>
</html>
