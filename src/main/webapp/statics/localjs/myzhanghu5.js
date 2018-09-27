var pageContext = $("#PageContext").val();
var totalPageCount=0;
var lendRecord_lStatus="kz";
$(function(){
	getLendRecords(lendRecord_lStatus,1);

});
function getLendRecords(lStatus,activepage){
	$.ajax({
		url:pageContext+"/user/getLendRecords.json",
		data:{"lStatus":lStatus,
			'currentPageNo':activepage},
			type:'get',
			dataType:'json',
			error:function(data){
				alert("数据加载失败，请稍后再试！");
			},
			success:function(data){
				totalPageCount=data.pageSupport.totalPageCount;
				getRecords(data);
				getPages();
			}
	});
}
function getLendRecordsByActivepage(lStatus,activepage){
	$.ajax({
		url:pageContext+"/user/getLendRecords.json",
		data:{"lStatus":lStatus,
			'currentPageNo':activepage},
			type:'get',
			dataType:'json',
			error:function(data){
				alert("数据加载失败，请稍后再试！");
			},
			success:function(data){
				getRecords(data);
			}
	});
}
function getRecords(data){
	var listr='';
	listr +="<thead>"+
	"<tr>"+
	"<th style=\"font-size: 12px;\">项目名称</th>"+
	"<th style=\"font-size: 12px;\">预期利率</th>"+
	"<th style=\"font-size: 12px;\">剩余期数</th>";
	if(lendRecord_lStatus!='yz'){
		listr+="<th style=\"font-size: 12px;\">待收本息(元)</th>"+
	"<th style=\"font-size: 12px;\">已收回款(元)</th>"+ 
	"<th style=\"font-size: 12px;\">剩余本金(元)</th>"+
	"<th style=\"font-size: 12px;\">下个回款日</th>";
	}else{
		listr+="<th style=\"font-size: 12px;\">已转本金(元)</th>"
	}
	listr+="<th style=\"font-size: 12px;\">操作</th>"+                                            
	"</tr>"+
	"</thead>"+
	"<tbody id=\"lendRecord\">";
	for(var i=0;i<data.lendRecords.length;i++){
		listr +="<tr>"+
		"<td style=\"font-size: 12px;\">"+data.lendRecords[i].bProjectCode+"</td>"+
		"<td class=\"center\" style=\"font-size: 12px;\">"+data.lendRecords[i].bRate.toFixed(2)+"%</td>"+
		"<td class=\"center\" style=\"font-size: 12px;\">"+data.lendRecords[i].bRemainTimelimit+"期</td>";
		if(lendRecord_lStatus!='yz'){
			listr+="<td class=\"center\" style=\"font-size: 12px;\">"+data.lendRecords[i].lDuePriAndInt.toFixed(2)+"</td>"+
		"<td class=\"center\" style=\"font-size: 12px;\">"+data.lendRecords[i].lRecProAndInt.toFixed(2)+"</td>"+
		"<td id=\""+data.lendRecords[i].lid+"lDueCapital\" class=\"center\" style=\"font-size: 12px;\" value=\""+data.lendRecords[i].lDueCapital.toFixed(2)+"\">"+data.lendRecords[i].lDueCapital.toFixed(2)+"</td>"+
		"<td class=\"center\" style=\"font-size: 12px;\">"+data.lendRecords[i].tRemittance+"</td>";
		}else{
			listr+="<td id=\""+data.lendRecords[i].lid+"lDueCapital\" class=\"center\" style=\"font-size: 12px;\" value=\""+data.lendRecords[i].lDueCapital.toFixed(2)+"\">"+data.lendRecords[i].lDueCapital.toFixed(2)+"</td>";
		}
		listr+="<td class=\"center\" >";
		if(lendRecord_lStatus=='kz'){
			listr +="<button id=\""+data.lendRecords[i].lid+"\" class=\"label label-important\" onclick=\"zhuanrang("+data.lendRecords[i].lid+")\">转让</button>";
		}else if(lendRecord_lStatus=='zz'){
			listr +="<span  id=\""+data.lendRecords[i].lid+"\" style=\"font-size: 12px;color:blue;\">转让中</span>";
		}else if(lendRecord_lStatus=='yz'){
			listr +="<span id=\""+data.lendRecords[i].lid+"\" style=\"font-size: 12px;color:green;\">已转让</span>";
		}else if(lendRecord_lStatus=='yj'){
			listr +="<span id=\""+data.lendRecords[i].lid+"\" style=\"font-size: 12px;color:red;\">已承接</span>";
		}
		listr +="</td>"+                                     
		"</tr>";
	}
	listr+="</tbody>";
	$(".table-striped").html(listr);
}

function zhuanrang(lid){
	var lDueCapital=$("#"+lid+"lDueCapital").attr("value");
	var tTransferPrice=prompt("请输入您要转让债权的出让价格\n(债权本金*0.995<=出让价格<=债权本金*1.005)",(lDueCapital*0.995).toFixed(2)+"<=出让价格<="+(1.005*lDueCapital).toFixed(2));
	if(tTransferPrice!=null && parseFloat(tTransferPrice)>=500 && 
			parseFloat(tTransferPrice)>=parseFloat((lDueCapital*0.995).toFixed(2)) &&
			parseFloat(tTransferPrice)<=parseFloat((lDueCapital*1.005).toFixed(2)) &&
			tTransferPrice>=lDueCapital*0.995){
		$.ajax({
			url:pageContext+"/user/zhuanrang.json",
			data:{'lid':lid,
				'tTransferPrice':tTransferPrice},
				dataType:'json',
				type:'get',
				error:function(data){
					alert("数据加载失败，请稍后再试！");
				},
				success:function(data){
					if(data=="success"){
						window.location.reload();
						alert("已发起转让！");
					}else{
						window.location.reload();
						alert("发起转让失败,请稍后再试！");
					}
				}

		})

	}else if(tTransferPrice==("请输入您要转让债权的出让价格",(lDueCapital*0.995).toFixed(2)+"<=出让价格<="+(1.005*lDueCapital).toFixed(2))){
		alert("输入值不能为空！");
	}else if(parseFloat(tTransferPrice)>=parseFloat((lDueCapital*0.995).toFixed(2)) || parseFloat(tTransferPrice)<=parseFloat((lDueCapital*1.005).toFixed(2))){
		alert("输入价格不正确！")
	}
	else{
	}

}
function getPages(){
	var defaults = {
			totalPages: 9,//总页数
			liNums: 5,//分页的数字按钮数(建议取奇数)
			activeClass: 'active' ,//active类
			firstPage: '首页',//首页按钮名称
			lastPage: '末页',//末页按钮名称
			prv: '«',//前一页按钮名称
			next: '»',//后一页按钮名称
			hasFirstPage: true,//是否有首页按钮
			hasLastPage: true,//是否有末页按钮
			hasPrv: true,//是否有前一页按钮
			hasNext: true,//是否有后一页按钮
			callBack : function(page){
				//回掉，page选中页数
			}
	};
	/*alert("getPages");*/
	var opts = defaults;
	var obj = $("#page");
	var l = totalPageCount;
	var n = 5;
	var active = "activP";
	var str = '';
	var str1 = '<li><a href="javascript:" class="'+ active +'">1</a></li>';

	if (l > 1&&l < n+1) {
		for (i = 2; i < l + 1; i++) {
			str += '<li><a href="javascript:">' + i + '</a></li>';
		}
	}else if(l > n){
		for (i = 2; i < n + 1; i++) {
			str += '<li><a href="javascript:">' + i + '</a></li>';
		}
	}
	var dataHtml = '';
	if(opts.hasNext){
		dataHtml += '<div class="next fr">' + opts.next + '</div>';
	}
	if(opts.hasLastPage){
		dataHtml += '<div class="last fr">' + opts.lastPage + '</div>';
	}
	dataHtml += '<ul class="pagingUl">' + str1 + str + '</ul>';
	if(opts.hasFirstPage){
		dataHtml += '<div class="first fr">' + opts.firstPage + '</div>';
	}
	if(opts.hasPrv){
		dataHtml += '<div class="prv fr">' + opts.prv + '</div>';
	}

	obj.html(dataHtml).off("click");//防止插件重复调用时，重复绑定事件
	/*alert(dataHtml);*/
	obj.on('click', '.next', function () {
		var pageshow = parseInt($('.' + active).html());
		var nums,flag;
		var a = n % 2;
		if(a == 0){
			//偶数
			nums = n;
			flag = true;
		}else if(a == 1){
			//奇数
			nums = (n+1);
			flag = false;
		}
		if(pageshow >= l) {
			return;
		}else if(pageshow > 0&&pageshow <= nums/2){
			//最前几项
			$('.' + active).removeClass(active).parent().next().find('a').addClass(active);
			if(l<=n){
				fpageNext(pageshow-2);
			}else{
				fpageNext(pageshow-1);
			}
		}else if((pageshow > l-nums/2&&pageshow < l&&flag==false)||(pageshow > l-nums/2-1&&pageshow < l&&flag==true)){
			//最后几项
			$('.' + active).removeClass(active).parent().next().find('a').addClass(active);
			if(pageshow>3 && pageshow<=l-2){
				fpageShow(pageshow-1);
			}
		}else{
			$('.' + active).removeClass(active).parent().next().find('a').addClass(active);
			fpageShow(pageshow+1);
		}
		opts.callBack(pageshow+1);
		/*alert(".next"+pageshow);*/
		/*getTraActivepage(pageshow+1);*/
		getLendRecordsByActivepage(lendRecord_lStatus,pageshow+1);
	});
	obj.on('click', '.prv', function () {
		var pageshow = parseInt($('.' + active).html());
		var nums = odevity(n);
		if (pageshow <= 1) {
			return;
		}else if((pageshow > 1&&pageshow <= nums/2)||(pageshow > l-nums/2&&pageshow < l+1)){
			//最前几项或最后几项
			$('.' + active).removeClass(active).parent().prev().find('a').addClass(active);
		}else {
			$('.' + active).removeClass(active).parent().prev().find('a').addClass(active);
			fpageShow(pageshow-1);
		}
		opts.callBack(pageshow-1);
		/*alert("prv"+pageshow);*/
		/*getTraActivepage(pageshow-1);*/
		getLendRecordsByActivepage(lendRecord_lStatus,pageshow-1);
	});

	obj.on('click', '.first', function(){
		var activepage = parseInt($('.' + active).html());
		if (activepage <= 1){
			return
		}//当前第一页
		opts.callBack(1);
		fpagePrv(0);
		/*alert("first"+activepage-1);*/
		/*getTraActivepage(1);*/
		getLendRecordsByActivepage(lendRecord_lStatus,1);
	});
	obj.on('click', '.last', function(){
		var activepage = parseInt($('.' + active).html());
		if (activepage >= l){
			return;
		}//当前最后一页
		opts.callBack(l);
		if(l>n){
			fpageNext(n-1);
		}else{
			fpageNext(l-1);
		}
		/*getTraActivepage(l);*/
		/*getTraActivepage(l,bRemainTimelimit,sortName,sortType);*/
		/*alert("last"+activepage);*/
		getLendRecordsByActivepage(lendRecord_lStatus,l);
	});

	obj.on('click', 'li', function(){
		var $this = $(this);
		var pageshow = parseInt($this.find('a').html());
		var nums = odevity(n);
		/*getTraActivepage(pageshow);*/
		getLendRecordsByActivepage(lendRecord_lStatus,pageshow);
		opts.callBack(pageshow);

		if(l>n){
			if(pageshow > l-nums/2&&pageshow < l+1){
				//最后几项
				fpageNext((n-1)-(l-pageshow));
			}else if(pageshow > 0&&pageshow < nums/2){
				//最前几项
				fpagePrv(pageshow-1);
			}else{
				fpageShow(pageshow);
			}
		}else{
			$('.' + active).removeClass(active);
			$this.find('a').addClass(active);
		}
		/*alert("on"+pageshow);*/

	});

	//重新渲染结构
	/*activePage 当前项*/
	function fpageShow(activePage){
		var nums = odevity(n);
		var pageStart = activePage - (nums/2-1);
		var str1 = '';
		for(i=0;i<n;i++){
			str1 += '<li><a href="javascript:" class="">' + (pageStart+i) + '</a></li>'
		}
		obj.find('ul').html(str1);
		obj.find('ul li').eq(nums/2-1).find('a').addClass(active);
	}
	/*index 选中项索引*/
	function fpagePrv(index){
		var str1 = '';
		if(l>n-1){
			for(i=0;i<n;i++){
				str1 += '<li><a href="javascript:" class="">' + (i+1) + '</a></li>'
			}
		}else{
			for(i=0;i<l;i++){
				str1 += '<li><a href="javascript:" class="">' + (i+1) + '</a></li>'
			}
		}
		obj.find('ul').html(str1);
		obj.find('ul li').eq(index).find('a').addClass(active);
	}
	/*index 选中项索引*/
	function fpageNext(index){
		var str1 = '';
		if(l>n-1){
			for(i=l-(n-1);i<l+1;i++){
				str1 += '<li><a href="javascript:" class="">' + i + '</a></li>'
			}
			obj.find('ul').html(str1);
			obj.find('ul li').eq(index).find('a').addClass(active);
		}else{
			for(i=0;i<l;i++){
				str1 += '<li><a href="javascript:" class="">' + (i+1) + '</a></li>'
			}
			obj.find('ul').html(str1);
			obj.find('ul li').eq(index).find('a').addClass(active);
		}
	}
//	判断liNums的奇偶性
	function odevity(n){
		var a = n % 2;
		if(a == 0){
			//偶数
			return n;
		}else if(a == 1){
			//奇数
			return (n+1);
		}
	}
}
function kz(){
	lendRecord_lStatus=$("#kz").attr("value");
	getLendRecords(lendRecord_lStatus,1);
	$("#likz").attr("class","cur");
	$("#lizz").attr("class","");
	$("#liyz").attr("class","");
	$("#liyj").attr("class","");
}
function zz(){
	lendRecord_lStatus=$("#zz").attr("value");
	getLendRecords(lendRecord_lStatus,1);
	$("#likz").attr("class","");
	$("#lizz").attr("class","cur");
	$("#liyz").attr("class","");
	$("#liyj").attr("class","");
}
function yz(){
	lendRecord_lStatus=$("#yz").attr("value");
	getLendRecords(lendRecord_lStatus,1);
	$("#likz").attr("class","");
	$("#lizz").attr("class","");
	$("#liyz").attr("class","cur");
	$("#liyj").attr("class","");
}
function yj(){
	lendRecord_lStatus=$("#yj").attr("value");
	getLendRecords(lendRecord_lStatus,1);
	$("#likz").attr("class","");
	$("#lizz").attr("class","");
	$("#liyz").attr("class","");
	$("#liyj").attr("class","cur");
}

function doexcel(){
	$.ajax({
		url:pageContext+"/exprot/excell.json",
		data:{},
		type:'get',
		dataType:'json',
		error:function(data){
			alert("数据加载失败，请稍后再试！");
			},
		success:function(data){
			if(data=="success"){
				alert("导出成功！")
			}
			}
	});
}