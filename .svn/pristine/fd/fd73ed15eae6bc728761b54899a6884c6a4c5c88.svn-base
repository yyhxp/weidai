<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>支付宝支付支付密码界面</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/paymentPassword.css">
<style type="text/css">
    ul li {
        list-style-type: none;
    }
</style>
<body>
<div class="wrap">
		<div style="height: 60px;width: 330px;position: absolute;top: 50px">
			<p>应付金额：<span id="bidmoney">${bidmoney}</span>元</p>
			<a href="#" style="position: absolute;top:16px;left:230px;" id="pay">支付宝支付</a>
		</div>
    <div style="border: 3px solid blue;position:relative;top: -90px;" id="Q1">
        <ul>
            <li>
                <input type="radio" name="name1" value="1" id="t1" checked="checked">
                <span>账户余额</span>
                <span><i style="color: red; padding-left: 128px">${money}</i>元</span>
            </li>
        </ul>
    </div>
    <div style="border: 3px solid whitesmoke;position:relative;top: -70px;" id="Q2">
        <ul>
            <li>
                <input type="radio" name="name1" id="t2" value="2">
                <span>中国建设银行</span>
                <span style="position: relative;right: -105px;top: 10px;"></span>
            </li>
        </ul>
    </div>
    <div class="inputBoxContainer" id="inputBoxContainer" style="position: relative;top: -31px;">
        <input type="text" class="realInput"/>
        <div class="bogusInput">
            <input type="password" maxlength="6" disabled/>
            <input type="password" maxlength="6" disabled/>
            <input type="password" maxlength="6" disabled/>
            <input type="password" maxlength="6" disabled/>
            <input type="password" maxlength="6" disabled/>
            <input type="password" maxlength="6" disabled/>
        </div>
    </div>
    <p class="showValue" id="showValue" style="display: none" name="pwd"></p>
    <p style="text-align: center;position: absolute; top:340px;left:135px;color:red"  id="error"></p>
    <button type="submit" id="confirmButton" class="confirmButton" style="background-color: #007aff;position: relative;top: -21px;">立即支付</button>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/paymentPassword.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#t1").click(function () {
            $("#Q1").css("border", "3px solid blue");
            $("#Q2").css("border", "3px solid whitesmoke");
        });
        $("#t2").click(function () {
            $("#Q2").css("border", "3px solid blue");
            $("#Q1").css("border", "3px solid whitesmoke");
        });
    });
    
    $("#confirmButton").click(function(){
    	 var buytype = $('input:radio[name="name1"]:checked').val()
    	 var pwd=$("#showValue").text();
    	 var usermoney=${money}/* 用户余额 */
    	 var userpwd=${userpwd}/* 用户支付密码 */
    	 var password=${password}/* 银行卡密码 */
    	 var Ucmoney=${Ucmoney}/* 银行卡余额 */
    	 var dingdan=${bidmoney}/* 订单金额 */
    	 if(buytype==1){
    		 if(pwd!=userpwd){
    			 $("#error").html("密码错误！");
    		 }else{
    			 if(usermoney<dingdan){
    				 $("#error").html("余额不足！");
    			 }else{
    				 parent.window.location.href="${pageContext.request.contextPath }/bk/dobuy.html?buytype="+buytype+"&pwd="+pwd+"&bidId=${bidId}&bidmoney=${bidmoney}&bidmonth=${bidmonth}&lilv=${lilv}";
    				 var index = parent.layer.getFrameIndex(window.name);
    			     parent.layer.close(index);
    			 }
    		 }
    	 }
    	 if(buytype==2){
    		 if(pwd!=password){
    			 $("#error").html("密码错误！");
    		 }else{
    			 if(Ucmoney<dingdan){
    				 $("#error").html("余额不足！");
    			 }else{
    				 parent.window.location.href="${pageContext.request.contextPath }/bk/dobuy.html?buytype="+buytype+"&pwd="+pwd+"&bidId=${bidId}&bidmoney=${bidmoney}&bidmonth=${bidmonth}&lilv=${lilv}";
    				 var index = parent.layer.getFrameIndex(window.name);
    			     parent.layer.close(index);
    			 }
    		 }
    	 }
	})
	
	$("#pay").click(function(){
		
		parent.window.location.href="${pageContext.request.contextPath }/pay/alipay.html?bidId=${bidId}&bidmoney=${bidmoney}&bidmonth=${bidmonth}&lilv=${lilv}";
		 var index = parent.layer.getFrameIndex(window.name);
	     parent.layer.close(index);
	})
</script>
</body>
</html>