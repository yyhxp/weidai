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
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.4/TweenMax.min.js"></script>
	
	<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
</head>
<body>
<div class="pay">
	<!--主内容开始编辑-->
	<div class="tr_recharge">
		<div class="tr_rechtext">
			<p class="te_retit"><img src="${pageContext.request.contextPath }/statics/images/coin.png" alt="" />充值中心</p>
			<P></P>
		</div>
			<div class="tr_rechbox">
				<div class="tr_rechhead">
					<img src="${pageContext.request.contextPath }/statics/images/ys_head2.jpg" />
					<p>充值帐号：
						<a>${userName}</a>
					</p>
					<div class="tr_rechheadcion">
						<img src="${pageContext.request.contextPath }/statics/images/coin.png" alt="" />
						<span>当前余额：${userBalance }<span>  </span></span>
					</div>
				</div>
				<div class="tr_rechli am-form-group">
				 <input type="hidden" id="buyCounts" name="buyCounts" value="1"/>
					<ul class="ui-choose am-form-group" id="uc_01">
					 <c:forEach items="${pList }" var="p">
						<li>
							<label class="am-radio-inline">
							<%-- <form action="${pageContext.request.contextPath }/alipay/goConfirms" class="am-form" id="doc-vld-msg"> --%>
									<input type="radio" id="productId" value="${p.id }" name="docVlGender" required data-validation-message="请选择一项充值额度"> ${p.price }￥
								</label>
						</li>
						
						</c:forEach>
						<li>
							<label class="am-radio-inline">
									<input type="radio" name="docVlGender" data-validation-message="请选择一项充值额度"> 其他金额
								</label>
						</li>
					</ul>
					<!--<span>1微贷币=1元 10元起充</span>-->
				</div>
				<div class="tr_rechoth am-form-group">
					<span>其他金额：</span>
					<input type="number" min="500" max="10000000" value="500.00元" class="othbox" data-validation-message="充值金额范围：500元-1千万元" />
					<!--<p>充值金额范围：10-10000元</p>-->
				</div>
				<div class="tr_rechcho am-form-group">
					<span>充值方式：</span>
					<label class="am-radio">
							<input type="radio" name="radio1" value="" data-am-ucheck data-validation-message="请选择一种充值方式"><img src="${pageContext.request.contextPath }/statics/images/zfbpay.png">
					</label>
					<label class="am-radio" style="margin-right:30px;">
							
					</label>
				</div>
				<div class="tr_rechnum">
					<span>应付金额：</span>
					<p class="rechnum">0.00元</p>
				</div>
			</div>
			<div class="tr_paybox">
				<input id="zhifu1" type="button" class="button button-glow button-rounded button-raised button-primary" onclick="createOrder();" value="确认支付"/>
			<!-- 	</form> -->
				<span>温馨提示：遇到问题请拨打联系电话。</span>
			</div>
			<input type="hidden" id="hdnContextPath"   value="${pageContext.request.contextPath }"/>
		
	</div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/amazeui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/ui-choose.js"></script>
<script type="text/javascript">
	// 将所有.ui-choose实例化
	$('.ui-choose').ui_choose();
	// uc_01 ul 单选
	var uc_01 = $('#uc_01').data('ui-choose'); // 取回已实例化的对象
	uc_01.click = function(index, item) {
		console.log('click', index, item.text())
	}
	uc_01.change = function(index, item) {
		console.log('change', index, item.text())
	}
	$(function() {
		$('#uc_01 li:eq(3)').click(function() {
			$('.tr_rechoth').show();
			$('.tr_rechoth').find("input").attr('required', 'true')
			$('.rechnum').text('500.00元');
		})
		$('#uc_01 li:eq(0)').click(function() {
			$('.tr_rechoth').hide();
			$('.rechnum').text('5000.00元');
			$('.othbox').val('');
		})
		$('#uc_01 li:eq(1)').click(function() {
			$('.tr_rechoth').hide();
			$('.rechnum').text('100000.00元');
			$('.othbox').val('');
		})
		$('#uc_01 li:eq(2)').click(function() {
			$('.tr_rechoth').hide();
			$('.rechnum').text('1000000.00元');
			$('.othbox').val('');
		})
		$(document).ready(function() {
			$('.othbox').on('input propertychange', function() {
				var num = $(this).val();
				$('.rechnum').html(num + ".00元");
			});
		});
	})

	$(function() {
		$('#doc-vld-msg').validator({
			onValid: function(validity) {
				$(validity.field).closest('.am-form-group').find('.am-alert').hide();
			},
			onInValid: function(validity) {
				var $field = $(validity.field);
				var $group = $field.closest('.am-form-group');
				var $alert = $group.find('.am-alert');
				// 使用自定义的提示信息 或 插件内置的提示信息
				var msg = $field.data('validationMessage') || this.getValidationMessage(validity);

				if(!$alert.length) {
					$alert = $('<div class="am-alert am-alert-danger"></div>').hide().
					appendTo($group);
				}
				$alert.html(msg).show();
			}
		});
	});
</script>
<script type="text/javascript">
	var hdnContextPath = $("#hdnContextPath").val();
	
	function createOrder() {
	var productId=$('input:radio:checked').val();
		$.ajax({
	    	url: hdnContextPath+"/alipay/goConfirms",
	    	type:'get',
	    	dataType:'JSON',
	    	data: {"productId":productId },
	    	error:function(data){
			alert("数据加载失败，请稍后再试！");
				},
			success:function(data){
				window.location.href=hdnContextPath+"/alipay/suibian?productId="+data.id;
			},
	    	
	    	
	    });
	}

</script>


<div style="text-align:center;">

<div id="footer">
			<!-- 底部背景色 -->
			<!--映射路径  -->
			<input type="hidden" id="path" class="path" name="path"
				value="${pageContext.request.contextPath }" />
			<!--上一步的路径  -->
			<input type="hidden" id="referer" name="referer"
				value="<%=request.getHeader("Referer")%>" />
		</div>
</div>
</body>
</html>