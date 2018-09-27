<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<script src="<%=request.getContextPath() %>/static/js/jquery.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/buttons.css">
  <!-- 只有使用字体图标时才需要加载 Font-Awesome -->
  <link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.4/TweenMax.min.js"></script>
	
	<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<html>

    <head>
        
    </head>
    
    <body>
        <h1 style="color: green;">购买成功</h1>
        <table>
        	<tr>
        		<td>
        			订单编号: ${out_trade_no }
        		</td>
        	</tr>
        		<td>
        			支付宝交易号: ${trade_no }
        		</td>
        	<tr>
        	</tr>
        		<td>
        			实付金额: ${total_amount }
        		</td>
        	<tr>
        	</tr>
        		<td>
        			购买产品：${productName }
        		</td>
        	</tr>
        	<tr>
        		<td>
        		<a class="button button-glow button-rounded button-raised button-primary" href="<%=request.getContextPath() %>/nice/back">返回首页 </a>
        		</td>
        	</tr>
        </table>
        <input type="hidden" id="hdnContextPath"   value="${pageContext.request.contextPath }"/>
    </body>
    
    <script type="text/javascript">
	$(function(){
	var hdnContextPath = $("#hdnContextPath").val();
  	$.ajax({
  	  type:"POST",
  	  url:hanContextPath+"/alipay/alipayController",
  	  dataType:"json",
  	  data:{"productName":productName},
  	  
  	  success : function(data) {
    	
   	 },
   	 
    })
    
    })
    </script>
    
</html>


