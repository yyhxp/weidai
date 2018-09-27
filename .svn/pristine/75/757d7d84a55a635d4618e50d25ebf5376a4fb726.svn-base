
$(function(){
	var pageContext = $("#pageContext").val()
$.ajax({
		url:pageContext+'/bids/bid',
		type:'GET',
		data:{},
		dataType:'json',
		error:function(data){
			
			alert("数据加载失败，请稍后再试！");
			
		},
		success:function(data){
			if(data=="nodata"){
				alert("无合适的优选智能标");
			}else{
				var listr="";
				for(var i=0;i<data.length;i++){
					listr+="<tr>"+
                    "<td>"+
                         "<label style=\"position: absolute;top: 20px\">散标列表" + data[i].bItemType+"</label>"+
                         "<p style=\"color: #ff5722;font-size: 24px;font-weight: 500\">"+data[i].bRate+"%</p>"+
                        "<span>预期利率</span>" +
                     "</td>"+
                     "<td>"+
                         "<p><label style=\"font-size: 24px\">"+ data[i].bTimelimit    +"</label>个月</p>"+
                         "<span>项目期限</span>"+
                     "</td>"+
                     "<td>"+
                         "<p>"+ data[i].bProjectTotolMoney  +"元</p>"+
                        " <span>项目总额</span>"+
                         "</td>"+
                     "<td>"+
                         "<p>"+ data[i].bCanBeCastMoney +"元</p>"+
                         "<span>剩余可投金额</span>"+
                         "</td>"+
                     "<td>"+
                         "<p>"+data[i].bRepayment+"</p>"+
                         "<span>还款方式</span>"+
                         "</td>"+
                         "</tr>";
				}
				$(".tr").html(listr);  
			}
		}
	});
});
function ewq() {
	  var pageContext = $("#pageContext").val();
		var month=$(".cur").val();
		months(month)
}
  function ewq1() {
	  var pageContext = $("#pageContext").val();
		var month=$(".month").val();
		months(month)
}
  function ewq2() {
	  var pageContext = $("#pageContext").val();
		var month=$(".month1").val();
		months(month)
}
  function ewq3() {
	  var pageContext = $("#pageContext").val();
		var month=$(".month2").val();
		months(month)
}  
  function months(month){
		var pageContext = $("#pageContext").val();
		$(function (){
			$.ajax({
				url:pageContext+'/bids/bid',
				contentType : 'application/json;charset=utf-8',
				type:'GET',
				data:{"month":month},
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
							listr+="<tr>"+
		                    "<td>"+
		                         "<label style=\"position: absolute;top: 20px\">优选智投" + data[i].bItemType +"</label>"+
		                         "<p style=\"color: #ff5722;font-size: 24px;font-weight: 500\">"+data[i].bRate+"%</p>"+
		                        "<span>预期利率</span>" +
		                     "</td>"+
		                     "<td>"+
		                         "<p><label style=\"font-size: 24px\">"+ data[i].bTimelimit +"</label>个月</p>"+
		                         "<span>项目期限</span>"+
		                     "</td>"+
		                     "<td>"+
		                         "<p>"+ data[i].bProjectTotolMoney +"元</p>"+
		                        " <span>项目总额</span>"+
		                         "</td>"+
		                     "<td>"+
		                         "<p>"+ data[i].bCanBeCastMoney+"元</p>"+
		                         "<span>剩余可投金额</span>"+
		                         "</td>"+
		                     "<td>"+
		                         "<p>"+data[i].bRepayment+"</p>"+
		                         "<span>还款方式</span>"+
		                         "</td>"+
		                         "</tr>";
						}
						$(".tr").html(listr);
					}
				}
			});
		});
  }