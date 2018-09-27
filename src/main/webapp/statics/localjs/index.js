$(function(){
	var pageContext = $("#PageContext").val()
	
	$.ajax({
		url:pageContext+'/traBid/getYouBid.json',
		type:'GET',
		data:{},
		dataType:'json',
		error:function(data){
			alert("数据加载失败，请稍后再试！")
		},
		success:function(data){
			if(data=="nodata"){
				alert("无合适的优选智能标！")
			}else{
				listr="";
				for(var i=0;i<data.length;i++){
					listr +="<li style=\"margin-top: 25px\">"+
					"<div class=\"style-xszx\">"+
					"<a href=\""+pageContext+"/jsp/buy.jsp?order="+data[i].bId+"\">"+
					"<h3 style=\"margin-bottom: 25px\">"+
					"<span class=\"xinshou\" style=\"font-size: 17px\">新手专享-</span>"+
					"<span class=\"xinshou\" style=\"font-weight: 100;\">优选智投</span></h3></a>"+
					"<div style=\"width: 40%;float: left;\">"+
					"<i class=\"dinfont\"><fmt:formatNumber value=\""+data[i].bRate+"\" pattern=\"##.##\" minFractionDigits=\"2\" ></fmt:formatNumber></i>"+
					"<em>"+data[i].bRate.toFixed(2)+"<span style=\"font-size: 20px;color:red;\">%</span></em>"+
					"<p style=\"font-size: 14px\">预期利率</p></div>"+
					"<div style=\"width: 40%;float: left;\">"+
					"<i class=\"dinfont1\">"+data[i].bTimelimit+"</i>"+
					"<em>个月</em><p style=\"font-size: 14px\">服务期限</p></div>"+
					"<a class=\"style-btn-shouquan\" href=\""+pageContext+"/bid/zhitouDetail.html?bId="+data[i].bId+"\">授权服务</a>"+
					"</div></li><hr style=\"opacity:0.15\">"

				}
				$("#style-xszq").html(listr);
			}
		}

	});

	$.ajax({
		url:pageContext+'/traBid/getSixBid.json',
		type:'GET',
		data:{},
		dataType:'json',
		error:function(data){
			alert("数据加载失败，请稍后再试！")
		},
		success:function(data){
			if(data=="nodata"){
				alert("无合适的优选智能标！")
			}else{
				listr="";
				for(var i=0;i<data.length;i++){
					var title="";
					var bFull="";
					if(data[i].bTid==1){
						title="优选智投";
					}else{
						title=data[i].bProjectCode;
					}
					if(data[i].bFull=="full"){
						bFull="还款中";
					}
					
					listr +="<li class=\"style-Lend-a3-02\" style=\"margin-right: 0.8%;width: 31.8%;margin-top: 10px;\">"+
                    "<a href=\""+pageContext+"/bid/zhitouDetail.html?bId="+data[i].bId+"\">"+
                        "<div class=\"style-Lend-a3-02-01\">"+
                            "<h3>"+title+"</h3>"+
                            "<div style=\"width: 100%;height: 58px;margin:10px 0px 50px 0px\">"+
                                "<div style=\"float: left;width: 72%;height: 58px;\">"+
                                    "<i class=\"dinfont\"><span style=\"font-size: 36px;color:red;\">"+data[i].bRate.toFixed(2)+"</span></i>"+
                                    "<em style=\"font-size: 20px;color:red;\">%</em>"+
                                    "<p style=\"font-size: 14px\">预期利率</p>"+
                                "</div>"+
                                "<div style=\"float: left;width: 28%;height: 58px;\">"+
                                    "<i class=\"dinfont1\">"+data[i].bTimelimit+"</i>"+
                                    "<em>个月</em>"+
                                    "<p style=\"font-size: 14px\">项目期限</p>"+
                                "</div>"+
                            "</div>"+
                            "<div>"+
                                "<span style=\"font-size: 14px\">剩余可出借金额："+data[i].bCanBeCastMoney.toFixed(2)+"元</span>"+
                                "<span style=\"float: right; color: #22A7FF;font-size: 14px\">"+bFull+"</span>"+
                            "</div>"+
                            "<div class=\"jindutiao\" style=\"height: 8px; width: 320px; border-radius: 8px;\">"+
                                "<div class=\"jindutiao1\" style=\"border-radius: 8px; width: "+((data[i].bProjectTotolMoney-data[i].bCanBeCastMoney)/data[i].bProjectTotolMoney)*100+"%;\">"+
                                "</div></div></div></a></li>"
				}
				$(".style-Lend-a3-01").html(listr);
			}
		}
	});
});