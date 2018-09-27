
var flag = false;//
var phonenums = null// 输入的手机号
var codeinput =null;// 输入的验证码
var code = null;// 中间的值
var path = $("#path").val();
//成员变量
var InterValobj;// time变量 控制时间
var count = 60;// 间隔函数 1秒执行
var curCount;// 当前剩余秒数
var code = null;// 验证码
var codeLength = 6;// 验证码的长度
//数字验证码 

$("#Promt").click(function() {
	var randomnumber = Math.floor((Math.random() * 9 + 1) * 1000);
	$(this).html("<em>" + randomnumber + "</em>");
});
// 发送验证码 倒计时
function sendMessages() {
	curCount = count;
	// 设置button效果开始计时
	$("#getCode").attr("disabled", "true");
	$("#getCode").val("重新获取" + curCount + "(秒)");
	InterValobj = window.setInterval(SetRemainTimes, 1000);// 启动计时器 1秒执行一次
}
// timer处理函数
function SetRemainTimes() {
	if (curCount == 0) {
		window.clearInterval(InterValobj);// 停止计时器
		$("#getCode").removeAttr("disabled");// 启用按钮
		$("#getCode").val("重新发送验证码");
		code = "";// 清除验证码 如果不清除 过时间后输入的验证码依然有效
	} else {
		curCount--;
		$("#getCode").val("重新获取" + curCount + "(秒)");
	}
}
// 当点击同意协议的时候按钮可以用,当没有点击同意协议的时候 按钮不能用
var regBtn = $("#regbtn");
$("#regText").change(function() {
	var that = $(this);
	that.prop("checked", that.prop("checked"));
	if (that.prop("checked")) {
		regBtn.prop("disabled", false)
	} else {
		 regBtn.addClass('css'); 
		regBtn.prop("disabled", true)

	}
});
 //手机号码验证的方法 
function phoneNumses() {
	var phoneCode = $("#uPhone").val(); 
	 //手机号码错误的提示框 
	 var $phoneNumberId = $("#hint1"); 
	 //验证手机号码的正则表达式 
	var myreg = /^[1][3,4,5,7,8][0-9]{9}$/;
	if (!myreg.test(phoneCode)) {
		$("#div1").html("手机号码格式不正确");
		return false;
	} else {
		$("#div1").html("");
		return true;
	}
}

 //数字验证码 
function imageCodess() {
	 //VerificationCode输入框的值 
	var VerificationCode = $("#picture").val();
	if (VerificationCode == "") {
		$("#div2").html("验证码不能为空");
		return false;
	} else if (VerificationCode != $("#Promt").text().trim()) {
		$("#div2").html("验证输入不匹配");
		return false;
	} else {
		$("#div2").html("");
		return true;
	}
}

 /*//必须包含数字加字母 不能包含特殊符号 必须为字母加数字且长度不小于8位 
function checkPassword() {
	var str = $("#uPassword").val();// 第一次输入的密码
	
	var reg1 = new RegExp(/^[0-9A-Za-z]+$/);
	if (!reg1.test(str)) {
		$("#div3").html("密码格式不匹配");
		return false;
	}
	var reg = new RegExp(/[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/);
	if (!reg.test(str)) {
		$("#div3").html("密码格式不匹配");
		return true;
	} else {
		$("#div3").html("");
		return true;
	}

}
*/
 //手机的格式的验证 失去焦点的时候验证 
$("#uPhone").blur(function() {
	phoneNumses();
});
/* //密码的验证 失去焦点的时候验证 
$("#uPassword").blur(function() {
	checkPassword();
});*/
 //数字验证码的验证 当且仅当失去焦点的时候验证 
$("#Promt").blur(function() {
	imageCodess();
});
 //当提交的时候进行验证 
$("#regbtn").click(function() {
	if (phoneNumses() != true) {
		phoneNumses();
	} else if (checkPassword() != true) {
		checkPassword();
	} else if (imageCodess() != true) {
		imageCodess();
	} else if (codejudge() != true) {
		codejudge();
	} else {
		if (confirm("是否确认提交")) {
			$("#userForm").submit();
		}
	}
	alert("注册成功");
})
// 点击获取手机验证码的倒计时
$("#getCode").click(function() {
	TT();
})
//ajax获得验证码
function TT(){
	phonenums = $("#uPhone").val();
	$.ajax({
		type : "POST",
		url : path + "/duanxin/uPhone",// 请求的url
		data : "uPhone=" + phonenums,
		dataType : "json",
		success : function(data) {// data 返回的数据 json类型
			if (data!= "" && data!= null) {
				sendMessages();
			}
			code = data;// 将值赋给code
			$("#temp").val(code);//赋值
		},
		error : function(data) {
			alert("执行错误");
		}
	});
}
//当输入手机验证码失去光标以后判断
$("#yzphone").blur(function(){
	codejudge();
})
 // 判断验证码
function codejudge() {
	codeinput=$("#yzphone").val();
	var codes=$("#temp").val();
	if (codeinput == "" ||codeinput.length==0) {
		$("#div4").html("输入的验证码不能为空");
		return false;
	} else if (codeinput != codes) {
		$("#div4").html("输入的验证码不正确");
		return false;
	} else {
		$("#div4").html("");
		return true;
	}
}
