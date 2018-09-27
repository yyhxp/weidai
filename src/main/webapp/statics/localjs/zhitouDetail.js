
	var pageContext = $("#PageContext").val();
	
	var tmpArr, QueryString;
	var URL = document.location.toString(); // 获取带参URL
	
	if (URL.lastIndexOf("?") != -1) {
		//subString(start（截取开始下标位置），stop（截取结束下标位置的前一位））
		QueryString = URL.substring(URL.lastIndexOf("?") + 1, URL.length);
		tmpArr = QueryString.split("=");// 分离参数		
	}
		
$(function () {

	
	$.ajax({
		url:pageContext+'/bid/getzhitouDetail.json',
		type:'GET',
		data:{'bId':tmpArr[1]},
		dataType:'JSON',
		error:function(data){
			alert("数据加载失败，请稍后再试！")
		},
		success:function(data){
			if(data=="nodata"){
				alert("无合适的优选智能标！")
			}
			/*$("#bid_bProjectCode").html(data.bProjectCode);*/
			$("#tId").html('借款编号：优选智投 '+data.bProjectCode);
			$('#bRate').html(data.bRate.toFixed(2));
			$('#bTimelimit').html(data.bTimelimit);	
		
			$('#jingdutiao').css("width",((data.bProjectTotolMoney - data.bCanBeCastMoney)/data.bProjectTotolMoney)*100+"%");		
			$('#jingduzhi').html("进度："+(((data.bProjectTotolMoney - data.bCanBeCastMoney)/data.bProjectTotolMoney)*100).toFixed(2)+"%");
			
			$('#bProjectTotolMoney').html(data.bProjectTotolMoney);
			$('#bCreateDate').html('发布时间：'+data.bCreateDate);
			$('#bRepayment').html('还款方式：'+data.bRepayment);
			$('#bBearingDate').html('起息时间:募集成功后预计1个工作日');
			$('#bCanBeCastMoney').html(data.bCanBeCastMoney.toFixed(2));
			
			/*alert("剩余可投金额："+data.bCanBeCastMoney);*/
			$('#bRate2').html('预期利率:'+data.bRate.toFixed(2)+'%');
			$('#bTimelimit2').html('锁定期:'+data.bTimelimit+'个月');	
			/*$('#money1').html(data.bCanBeCastMoney);*/	
			
			
			if(data.bFull=="full"){		
				
				$('#nofull').css("display","none");
				$('#full').css("display","block");

		}else {
			$('#nofull').css("display","block");
			$('#full').css("display","none");				
		}	
			
			
		/*	if((((data[i].bProjectTotolMoney-data[i].bCanBeCastMoney)/(data[i].bProjectTotolMoney))*100).toFixed(2))==100){	
				alert("剩余可投金额是："+data.bFull);
				$('#nofull').css("display","none");
				$('#full').css("display","block");

		}else {
			$('#nofull').css("display","block");
			$('#full').css("display","none");				
		}		*/
			
			
			
			
			
		}		
	})
		
});




$("#form").on('click',function(){	    
	var inputmoney=document.getElementById("inputmoney").value;	
	
	var uId =$("#uId").val();
	
	if(document.getElementById("uBalance")!=null){
    var  uBalance=document.getElementById("uBalance").innerText;			
	}
	
	/*var  uBalance=document.getElementById("uBalance").innerText;*/
		
		var exinterest= document.getElementById("exinterest").value;	
		
		var bCanBeCastMoney = document.getElementById("bCanBeCastMoney").innerText;	
	
		var bTimelimit=document.getElementById("bTimelimit").innerText;
		
		var bProjectTotolMoney=document.getElementById("bProjectTotolMoney").innerText;
			
		
		 
		 var lStatus;
		 if(parseInt(inputmoney)<parseInt(bCanBeCastMoney)){
			 lStatus='nz'
		 }else if(parseInt(inputmoney)==parseInt(bCanBeCastMoney)){
			 lStatus='kz'
		 }
		
		 
				 
		$.ajax({
		url:pageContext+'/bid/zhitoudetaildo.html',
		type:'POST',
		data:{'bId':tmpArr[1],'inputmoney':inputmoney,'uId':uId,'exinterest':exinterest,'bTimelimit':bTimelimit,'bCanBeCastMoney':bCanBeCastMoney,'uBalance':uBalance,'bProjectTotolMoney':bProjectTotolMoney,'lStatus':lStatus },
		dataType:'JSON',
		error:function(data){
			alert("购买失败！")
		},
		success:function(data){
			if(data=="unregister"){
				alert("用户未登录！")
			}
						
			if(data=="failed"){
				alert("购买不成功！")
			}
			if(data=="exinput"){
				alert("请输入正确金额！")
			}
			
			if(data=="success"){
				alert("购买成功！")
			}	
			if(data=="yuebuzu"){
				alert("余额不足，请充值！")
			}	
			
		}		
	})
		
});





