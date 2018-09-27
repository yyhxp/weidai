<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>微贷网--充值</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/css/amazeui.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/buttons.css">
  <!-- 只有使用字体图标时才需要加载 Font-Awesome -->
  <link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<div class="pay">
	<!--主内容开始编辑-->
	<div class="tr_recharge">
		<div class="tr_rechtext">
			<p class="te_retit"><img src="${pageContext.request.contextPath }/statics/images/coin.png" alt="" />充值中心</p>
			<P></P>
		</div>
		
	    
      <form id="payForm" action="<%=request.getContextPath() %>/alipay/goAlipay" method="post">
    	<input type="hidden" name="orderId" value="${order.id }" />
        <table>
        	<tr>
        		<td>
        			订单编号: ${order.id }
        		</td>
        	</tr>
        		<td>
        			产品名称: ${p.name }
        		</td>
        	<tr>
        	</tr>
        		<td>
        			订单价格: ${order.orderAmount }
        		</td>
        	<tr>
        	</tr>
        		<td>
        			购买个数：${order.buyCounts }
        		</td>
        	</tr>
        	</tr>
        		<td>
        			<input type="submit" class="button button-glow button-rounded button-raised button-primary" value="确认支付">
        			
        		</td>
        	</tr>
        </table>
    </form>
    
        <input type="hidden" id="hdnContextPath" name="hdnContextPath" value="<%=request.getContextPath() %>"/>
	</div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/amazeui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/ui-choose.js"></script>

<div style="text-align:center;">


</body>
</html>