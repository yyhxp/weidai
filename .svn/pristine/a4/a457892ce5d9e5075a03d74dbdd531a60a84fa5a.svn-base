var pageContext = $("#PageContext").val();
var totalPageCount ;

$(function(){
	getTra();
});

function getTra(){

	$.ajax({
		url:pageContext+'/user/tralist.json',
		type:'get',
		data:{},
		datatype:'json',
		error:function(data){
			alert("数据加载失败，请稍后再试！")
		},
		success:function(data){
			getTraBidsList(data);
			/*alert(data.pageSupport.totalPageCount);*/
			totalPageCount = data.pageSupport.totalPageCount;
			getPages();
		}
	});
}
function getTraActiveAndpage(activepage,bRemainTimelimit,sortName,sortType){
	/*alert("getTraActivepage"+activepage);*/
	$.ajax({
		url:pageContext+'/user/tralist.json',
		type:'get',
		data:{'currentPageNo':activepage,
			'bRemainTimelimit':bRemainTimelimit,
			'sortName':sortName,
			'sortType':sortType},
			datatype:'json',
			error:function(data){
				alert("数据加载失败，请稍后再试！")
			},
			success:function(data){
				getTraBidsList(data);
				totalPageCount = data.pageSupport.totalPageCount;
				getPages();
			}
	});
}
function getTraActivepage(activepage,bRemainTimelimit,sortName,sortType){
	/*alert("getTraActivepage"+activepage);*/
	$.ajax({
		url:pageContext+'/user/tralist.json',
		type:'get',
		data:{'currentPageNo':activepage,
			'bRemainTimelimit':bRemainTimelimit,
			'sortName':sortName,
			'sortType':sortType},
			datatype:'json',
			error:function(data){
				alert("数据加载失败，请稍后再试！")
			},
			success:function(data){
				getTraBidsList(data);
			}
	});
}

function getTraBidsList(data){
	if(data.traBids=="nodata"){
		alert("无合适的转让标！")
	}else{
		var listr="";
		for(var i=0;i<data.traBids.length;i++){

			listr += "<tr class=\"tr\">"+
			"<td>"+
			"<label style=\"position: absolute;top: 20px;width: 500px\">"+data.traBids[i].bid.bProjectCode+"</label>"+
			"<p style=\"color: #ff5722;font-size: 24px;font-weight: 500\">"+data.traBids[i].bRate.toFixed(2)+"<em style=\"font-size: 16px;color:red;font-style: normal\">%</em></p>"+
			"<span>预期利率</span>"+
			"</td>"+
			"<td>"+
			"<p style=\"font-size: 14px;margin: 0;padding: 0;\"><label style=\"font-size: 14px;margin: 0;padding: 0;\">"+data.traBids[i].bRemainMonth+"</label>个月<label style=\"font-size: 14px;margin: 0;padding: 0;\">"+data.traBids[i].bRemainDay+"</label>天</p>"+
			"<span>剩余期限</span></td>"+
			"<td><p>"+data.traBids[i].tCapital.toFixed(2)+"元</p>"+
			"<span>债券本金</span></td>"+
			"<td><p>"+data.traBids[i].tTransferPrice.toFixed(2)+"元</p>"+
			"<span>转让价格</span></td>"+
			"<td><p>"+data.traBids[i].tReTraPrice.toFixed(2)+"元</p>"+
			"<span>剩余可投金额</span></td>"+
			"<td><p>"+data.traBids[i].tRemittance+"</p>"+
			"<span>下个回款日</span></td>"+
			"<p><td><div style=\"width: 190px;height: 5px;background-color: #eeeeee\">"+
			"<div style=\"width:"+((data.traBids[i].tCapital - data.traBids[i].tReTraPrice)/data.traBids[i].tCapital)*100+"%;height: 5px;background: linear-gradient(90deg,#1f98fd,#02f1de)\"></div>"+
			"</div></p>"+
			"<span>进度："+(((data.traBids[i].tCapital - data.traBids[i].tReTraPrice)/data.traBids[i].tCapital)*100).toFixed(2)+"%</span></td>"+
			"<td><a href=\""+pageContext+"/user/transferDetail.html?tId="+data.traBids[i].tId+"\" style=\"margin-left: 20px;font-size: 14px;color: #00A2CA;\">立即购买</a></td></tr><hr/>"
		}
		$("#centent-zhuanrang").html(listr);
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
	var l = totalPageCount; /*变*/
	var n = 5;
	var active = "activP";
	var bRemainTimelimit=$("#type4").attr("value");
	var sortName=$("#type3").attr("name");
	var sortType = $("#type3").val();
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
		}else{
			$('.' + active).removeClass(active).parent().next().find('a').addClass(active);
			fpageShow(pageshow+1);
		}
		opts.callBack(pageshow+1);
		/*alert(".next"+pageshow);*/
		/*getTraActivepage(pageshow+1);*/
		getTraActivepage(pageshow+1,bRemainTimelimit,sortName,sortType);
	});
	
	obj.on('click', '.prv', function () {
		var pageshow = parseInt($('.' + active).html());
		var nums = odevity(n);
		if (pageshow <= 1) {
			return;
		}else if((pageshow > 1&&pageshow <= nums/2)||(pageshow > l-nums/2&&pageshow < l+1)){
			//最前几项或最后几项
			$('.' + active).removeClass(active).parent().prev().find('a').addClass(active);
			if(pageshow>3 && pageshow<=l-2){
				fpageShow(pageshow-1);
			}
		}else {
			$('.' + active).removeClass(active).parent().prev().find('a').addClass(active);
			fpageShow(pageshow-1);
		}
		opts.callBack(pageshow-1);
		/*alert("prv"+pageshow);*/
		/*getTraActivepage(pageshow-1);*/
		getTraActivepage(pageshow-1,bRemainTimelimit,sortName,sortType);
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
		getTraActivepage(1,bRemainTimelimit,sortName,sortType);
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
		getTraActivepage(l,bRemainTimelimit,sortName,sortType);
		/*alert("last"+activepage);*/
	});

	obj.on('click', 'li', function(){
		var $this = $(this);
		var pageshow = parseInt($this.find('a').html());
		var nums = odevity(n);
		/*getTraActivepage(pageshow);*/
		getTraActivepage(pageshow,bRemainTimelimit,sortName,sortType);
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

function getTraBymonth1(){
	var bRemainTimelimit=$("#month1").attr("value");
	var sortName=$("#type3").attr("name");
	var sortType = $("#type3").val();
	var activepage=1;
	$("#type4").val(bRemainTimelimit);
	getTraActiveAndpage(activepage,bRemainTimelimit,sortName,sortType);
}

function getTraBymonth(){
	var bRemainTimelimit=$("#month").attr("value");
	var sortName=$("#type3").attr("name");
	var sortType = $("#type3").val();
	var activepage=1;
	$("#type4").val(bRemainTimelimit);
	getTraActiveAndpage(activepage,bRemainTimelimit,sortName,sortType);
}
function getTraBymonth2(){
	var bRemainTimelimit=$("#month2").attr("value");
	var sortName=$("#type3").attr("name");
	var sortType = $("#type3").val();
	var activepage=1;
	$("#type4").val(bRemainTimelimit);
	getTraActiveAndpage(activepage,bRemainTimelimit,sortName,sortType);
}
function getTraBymonth3(){
	var bRemainTimelimit=$("#month3").attr("value");
	var sortName=$("#type3").attr("name");
	var sortType = $("#type3").val();
	var activepage=1;
	$("#type4").val(bRemainTimelimit);
	getTraActiveAndpage(activepage,bRemainTimelimit,sortName,sortType);
}
function getTraBycppx(){
	var bRemainTimelimit=$("#type4").val();
	var sort = $("#cppx").attr("value");
	var activepage=1;
	$("#type3").attr('name',sort);
	$("#type3").val('desc');
	sortName=sort;
	sortType="desc";
	getTraActiveAndpage(activepage,bRemainTimelimit,sortName,sortType);
}
function getTraBycppx1(){
	var bRemainTimelimit=$("#type4").val();
	var sortName = $("#cppx1").attr("value");
	var sn = $("#type3").attr("name");
	var st = $("#type3").attr("value");
	var sortType ='';
	var activepage=1;
	if(sn==sortName){
		if(st=='desc'){
			sortType='asc';
		}else{
			sortType='desc';
		}
	}else{
		sortType='desc';
	}
	/*alert("sortName"+sortName+"sortType"+sortType);*/
	$("#type3").attr('name',sortName);
	$("#type3").val(sortType);
	getTraActiveAndpage(activepage,bRemainTimelimit,sortName,sortType);
}
function getTraBycppx2(){
	var bRemainTimelimit=$("#type4").val();
	var sortName = $("#cppx2").attr("value");
	var sn = $("#type3").attr("name");
	var st = $("#type3").attr("value");
	var sortType ='';
	var activepage=1;
	if(sn==sortName){
		if(st=='desc'){
			sortType='asc';
		}else{
			sortType='desc';
		}
	}else{
		sortType='desc';
	}
	/*alert("sortName"+sortName+"sortType"+sortType);*/
	$("#type3").attr('name',sortName);
	$("#type3").val(sortType);
	getTraActiveAndpage(activepage,bRemainTimelimit,sortName,sortType);
}