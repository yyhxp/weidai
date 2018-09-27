$(function(){
$(".three-more").click(function(){
	/* $(".three-more").css("color","#36adf7");*/
	var pageContext = $("#PageContext").val()

$.ajax({
		url:pageContext+'/bid/getzhitou2.json',
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
				var listr="";
				for(var i=0;i<data.length;i++){
					
					var bFull="";
					if(data[i].bFull=="full"){
						bFull="已投满";
					}else{
						bFull="立即购买";
					}

					
                   listr+="<tr class=\"tr\">"+ 
                       "<td>"+
                            "<label style=\"position: absolute;top: 20px\">优选智投" + data[i].bProjectCode +"</label>"+
                            "<p style=\"color: #ff5722;font-size: 24px;font-weight: 500\">"+data[i].bRate.toFixed(2)+"%</p>"+
                           "<span>预期利率</span>" +
                        "</td>"+
                        "<td>"+
                            "<p><label style=\"font-size: 24px\">"+ data[i].bTimelimit +"</label>个月</p>"+
                            "<span>项目期限</span>"+
                        "</td>"+
                        "<td>"+
                            "<p>"+ data[i].bProjectTotolMoney.toFixed(2)+"元</p>"+
                           " <span>项目总额</span>"+
                            "</td>"+
                        "<td>"+
                            "<p>"+ data[i].bCanBeCastMoney.toFixed(2)+"元</p>"+
                            "<span>剩余可投金额</span>"+
                            "</td>"+
                        "<td>"+
                            "<p>"+data[i].bRepayment+"</p>"+
                            "<span>还款方式</span>"+
                            "</td>"+
                        "<td>"+
                            "<p>"+
                            "<div style=\"width: 190px;height: 5px;background-color: #eeeeee\">"+
                                "<div style=\"width:"+ ((data[i].bProjectTotolMoney-data[i].bCanBeCastMoney)/data[i].bProjectTotolMoney)*100 +"%;height: 5px;background: linear-gradient(90deg,#1f98fd,#02f1de)\"></div>"+
                            "</div>"+
                            "</p>"+
                            "<span>进度：<fmt:formatNumber value=\""+(((data[i].bProjectTotolMoney-data[i].bCanBeCastMoney)/(data[i].bProjectTotolMoney))*100).toFixed(2)+"\" pattern=\"##\" minFractionDigits=\"0\" ></fmt:formatNumber>"+(((data[i].bProjectTotolMoney-data[i].bCanBeCastMoney)/(data[i].bProjectTotolMoney))*100).toFixed(2)+"%</span>"+
                        "</td>"+
                        "<td><a href=\""+pageContext+"/bid/zhitouDetail.html?bid="+data[i].bId+ "\" style=\"margin-left: 20px;font-size: 14px;color: #00A2CA\">"+bFull+"</a></td>"+
                    "</tr>"
                        
				}
                        
				$(".style-Lend-3-01a").html(listr);        
                        
			}
		}
	});
});         
 
/*$(".three-more").mouseout(function(){
	 $(".three-more").css("color","black");
}); */

});                     
                    
                        