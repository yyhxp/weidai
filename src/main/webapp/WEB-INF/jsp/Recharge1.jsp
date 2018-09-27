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
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.4/TweenMax.min.js"></script>
	
	<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	
	
<body>
<div class="pay">
	<!--主内容开始编辑-->
	<div class="tr_recharge">
		<div class="tr_rechtext">
			<p class="te_retit"><img src="${pageContext.request.contextPath }/statics/images/coin.png" alt="" />充值中心</p>
			<P></P>
		</div>
		
	    
    <form action="<%=request.getContextPath() %>/alipay/createOrder" method="post">
    	<input type="hidden" id="productId" name="productId" value="${p.id }" />
        <table>
        	<tr>
        		<td>
        			产品编号: ${p.id }
        		</td>
        	</tr>
        		<td>
        			产品名称: ${p.name }
        		</td>
        	<tr>
        	</tr>
        		<td>
        			产品价格: ${p.price }
        		</td>
        	<tr>
        	</tr>
        		<td>
        			购买个数： <input id="buyCounts" name="buyCounts"/>
        		</td>
        	</tr>
        	</tr>
        		<td>
        		
        			<input type="button" class="button button-glow button-rounded button-raised button-primary" value="确认支付" onclick="createOrder()" /> 
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

<script type="text/javascript">
	var hdnContextPath = $("#hdnContextPath").val();
	function createOrder() {
		$.ajax({
	    	url: hdnContextPath + "/alipay/createOrder",
	    	type: "POST",
	    	data: {"productId": $("#productId").val(), "buyCounts": $("#buyCounts").val()},
	    	dataType: "json",
	    	success: function(data) {
	            if(data.status == 200 && data.msg == "OK") {
	            	
	            	// 提交订单成功后, 进入购买页面
	            	window.location.href = hdnContextPath + "/alipay/goPay?orderId=" + data.data;
	            } else {
	            	alert(data.msg);
	            	console.log(JSON.stringify(data));
	            }
	    	}
	    });
	}

</script>

</body>
</html>