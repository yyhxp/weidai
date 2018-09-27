var pageContext = $("#PageContext").val();
var month;//剩余期限
var tTransferPrice;//转让价格
var tCapital;//债权本金
var bid_bRate;//原标年化
var bid_bRepayment;//还款方式
var tId;//转让标Id
var lExTotInterest=0;//到期收益
$(function () {
	var tmpArr, QueryString;
	var URL = document.location.toString(); // 获取带参URL
	if (URL.lastIndexOf("?") != -1) {
		QueryString = URL.substring(URL.lastIndexOf("?") + 1, URL.length);
		tmpArr = QueryString.split("=");// 分离参数
	}

	$.ajax({
		url:pageContext+'/user/getTransferDetail',
		type:'GET',
		data:{'tId':tmpArr[1]},
		dataType:'JSON',
		error:function(data){
			alert("数据加载失败，请稍后再试！");
		},
		success:function(data){
			
			$("#bid_bProjectCode").html(data.bid.bProjectCode);
			tId=data.tId;
			$("#tId").html('借款编号： '+data.tId);
			tTransferPrice=data.tTransferPrice;
			$('#tTransferPrice').html(data.tTransferPrice.toFixed(2));
			$('#bRate').html(data.bRate.toFixed(2));
			$('#jingdutiao').css("width",((data.tCapital- data.tReTraPrice)/data.tCapital)*100+"%");
			$('#jingduzhi').html("进度："+(((data.tCapital- data.tReTraPrice)/data.tCapital)*100).toFixed(2)+"%");
			tCapital = data.tCapital;
			$('#tCapital').html(data.tCapital+"元");
			if(data.bRemainDay==0){
				month=data.bRemainMonth;
				}else{
					month=data.bRemainMonth+1;
				}
			$('#monthAndDay').html(data.bRemainMonth+"个月"+data.bRemainDay+"天");
			bid_bRate=data.bid.bRate/100;
			$('#bid_bRate').html(data.bid.bRate.toFixed(2)+"%")
			bid_bRepayment=data.bid.bRepayment;
			$('#bid_bRepayment').html(data.bid.bRepayment);
			$('#bid_tRemittance').html(data.tRemittance);
			$('#tReTraPrice').html(data.tReTraPrice);
		}

	})
	
	
	
	
});

function OnKey() {
	/*实际支付=（转让价格-债权本金)/债券本金*购买债权金额+购买债权额度*/
	var tReTraPrice =parseFloat($("#tReTraPrice").html());
	var uBalance = parseFloat($("#uBalance").html());
	var money = parseFloat($("#t1").val());//购买债权额
	var lendMoney = parseFloat((tTransferPrice-tCapital)/tCapital*money+money);//实际支付
	
	/*月还息到期还本：到期收益=原标年化*购买债权金额/12*剩余期限(月，向上取整)
	等额本息： 每月还款金额=[债权本金*月利率*(1+月利率)^剩余期限]/[(1+月利率)^剩余期限-1]
	        每月利息=债权本金*月利率
	        每月本金=每月还款金额-每月利息*/
	lExTotInterest=0;
	var str='';
		if(money==null || money<500 ||money==""){
			$("#lExTotInterest").html("");
			$("#error").html("输入金额不能小于500。请重新输入");
		}else if(500>=(tReTraPrice-money)&&(tReTraPrice-money)!=0&&money<tReTraPrice){
			$("#lExTotInterest").html("");
			$("#error").html("(剩余可出借金额-输入金额)必须大于等于500，或等于0");
		}else if(parseInt(uBalance)< money ){
			$("#lExTotInterest").html("");
			$("#error").html("出借金额不能大于"+uBalance+"元。请重新输入");
		}else if(money>tReTraPrice){
			$("#lExTotInterest").html("");
			$("#error").html("超过剩余可承接债权");
		}else if(money>0){
			if(bid_bRepayment=="月还息到期还本"){
				lExTotInterest=bid_bRate*money/12*month;
			}else{
				var capital=money;
				var repaymentOfMonth = (money*bid_bRate/12*Math.pow(1+bid_bRate/12, month))/(Math.pow(1+bid_bRate/12, month)-1);
				for(var i=1;i<=month;i++){
					lExTotInterest += capital*bid_bRate/12;
					capital = capital-(repaymentOfMonth-capital*bid_bRate/12);
				}
			}
			$("#error").html("");
			str += "<span style=\"color: #a5a5a5;font-size: 12px\">实际支付<input id=\"t2\" type=\"text\" value=\""+lendMoney.toFixed(2)+"\" readonly=\"readonly\" style=\"border:none;font-size:12px;width: 32px;color:#f24343\"/>元</span>"+
			"<span style=\"color: #a5a5a5;font-size: 12px\">到期收益<input id=\"t2\" type=\"text\" value=\""+lExTotInterest.toFixed(2)+"\" readonly=\"readonly\" style=\"border:none;font-size:12px;width: 32px;color:#f24343\"/>元</span>";
			$("#lExTotInterest").html(str);
			return true;
		}
	return false;
}

function biding(){
	if(OnKey()){
		var money=parseFloat($("#t1").val());
		var lendMoney=parseFloat((tTransferPrice-tCapital)/tCapital*money+parseFloat(money)).toFixed(2);
		var uId=$("#uId").val();
		/*alert("money"+money+" lendMoney"+lendMoney+" uId"+uId+" tId"+tId+" lExTotInterest"+lExTotInterest);*/
		$.ajax({
			url:pageContext+"/user/buyTBid.json",
			data:{'money':money,
				'lendMoney':lendMoney,
				'uId':uId,
				'tId':tId,
				'lExTotInterest':parseFloat(lExTotInterest)},
			dataType:'JSON',
			type:'GET',
			error:function(data){
				alert("数据加载失败，请稍后再试！");
			},
			success:function(data){
				if(data=="success"){
					window.location.reload();
					alert("交易已完成！");
				}else if(data=="same"){
					window.location.reload();
					alert("不可以购买自己的转让标的，请重新选择！");
				}else{
					window.location.reload();
					alert("交易失败,请稍后再试！");
				}
			}
		});
	}else{
		alert("请输入正确的投标金额！");
	}
}



