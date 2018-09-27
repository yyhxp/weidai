$("#loginBth").click(function(){
	var user = new Object();
  var uName = $.trim($("#uName").val());
  var uPassword = $.trim($("#uPassword").val());
    
   
    if(uName == "" || uName == null){
    	$("#uName").focus;
    	$("# ").css("color","red");
    	$("#formtip").html("对不起，登录账号不能为空。");
    }else if(uPassword == "" || uPassword == null){
    	$("#uPassword").focus;
    	$("#formtip").css("color","red");
    	$("#formtip").html("对不起，登录密码不能为空。");
    }else{
    	$("#formtip").html("");
    	
    	$.ajax({
    		type:'post',
    		url:'/logindo1.html',
    		data:{"uName":uName,"uPassword":uPassword},
    		dataType:'html',
    		timeout:1000,
    		
    		success:function(data){
    			if(data != "" && data == "success"){
    				//登录成功，跳转到"/index.html"
    				window.location.href='/index.html';
    			}else if(data == "failed"){
    				$("#formtip").css("color","red");
        	    	$("#formtip").html("登录失败！请重试。");
        	    	$("#uName").val('');
        	    	$("#uPassword").val('');
    			}else if(data == "uName"){
    				$("#formtip").css("color","red");
        	    	$("#formtip").html("登录账号不存在！请重试。");
    			}else if(data == "uPassword"){
    				$("#formtip").css("color","red");
        	    	$("#formtip").html("登录密码错误！请重试。");
    			}else if("nodata" == data){
    				$("#formtip").css("color","red");
        	    	$("#formtip").html("对不起，没有任何数据需要处理！请重试。");
    			}
    		}
    		
    	});
    	
    }
	
});