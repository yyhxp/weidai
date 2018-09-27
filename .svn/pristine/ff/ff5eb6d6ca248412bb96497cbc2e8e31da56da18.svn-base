/**
 * Created by admin on 2018/6/27.
 */
/*银行卡号*/
var path = $("#path").val();//上下文的路径
var code = null;//临时的存放验证码的变量
/*倒计时的变量*/
var InterValobj;// time变量 控制时间
var count = 60;// 间隔函数 1秒执行
var curCount;// 当前剩余秒数
var codeinput = null;// 输入的验证码
var codeLength = 6;// 验证码的长度
/*银行卡的事件*/
function Banknumber() {
    var Banknumbers = $("#ubBanknum").val();
    /* 验证身份证的提示框 */
    var reg = /^[0-9]{16,19}$/;
    if (!reg.test(Banknumbers)) {
        $("#warninfo1").html("银行卡号不正确");
        return false;
    } else {
        $("#warninfo1").html("");
        return true;
    }
}
/*当银行卡失去光标后触发的事件*/
$("#ubBanknum").blur(function () {
    Banknumber();
})
/* 手机号码的验证 */
function phoneNum() {
    var phoneCode = $("#ubTelephone").val();
    var myreg = /^[1][3,4,5,7,8][0-9]{9}$/;
    if (!myreg.test(phoneCode)) {
        $("#warninfo2").html("手机号码格式不正确");
        return false;
    } else {
        $("#warninfo2").html("");
        return true;
    }
}
/*当手机号码失去光标后引发的事件*/
$("#ubTelephone").blur(function () {
    phoneNum();
})
/*获取验证码*/
function getCode() {
    var phonenums = $("#ubTelephone").val();
    $.ajax({
        type: "POST",
        url: path + "/duanxin/phone",
        data: {"phones": phonenums},
        dataType: "json",
        success: function (data) {
            if (data != null && data != "") {
                /*掉用触发倒计时的事件*/
                sendMessages()
            }
            code = data;
            $("#temp1").val(code);
        },
        error: function (data) {
        	  /*掉用触发倒计时的事件*/
        	alert("触发失败")
        }

    })
}
/*单击获取验证码*/
$("#getCode").click(function () {
    getCode();
})

// 发送验证码 倒计时
function sendMessages() {
    curCount = count;
    // 设置button效果开始计时
    $("#getCode").attr("disabled", "true");
    /*验证码按钮的时间*/
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
/*判断输入验证码是否正确*/
// 判断验证码
function codejudge() {
    codeinput = $("#identity").val();//输入的验证码
    var codes = $("#temp1").val();
/*    alert("我是输入的验证码的值"+codeinput);
    alert("我是做比较的验证码的值"+codes)*/
    if (codeinput == "" || codeinput.length == 0) {
        $("#warninfo3").html("输入的验证码不能为空");
        return false;
    } else if (codeinput != codes) {
        $("#warninfo3").html("输入的验证码不正确");
        return false;
    } else {
        $("#warninfo3").html("");
        return true;
    }
}
//当输入验证码失去光标的时候
$("#identity").blur(function(){
	codejudge();
})
/*支付密码的验证*/
/*格式要求 6-18位字母和数字的混合*/
function password() {
    var ubPassword = $("#ubPassword").val();
    /* 验证身份证的提示框 */
    var reg = /^[a-zA-Z0-9]{6,18}$/;
    if (!reg.test(ubPassword)) {
        $("#warninfo4").html("密码格式不正确");
        return false;
    } else {
        $("#warninfo4").html("");
        return true;
    }
}
/*当支付密码失去光标*/
$("#ubPassword").blur(function () {
    password();
})
/*支付密码2*/
function passwordes2() {
    var ubPassword = $("#ubPassword").val();//第一次输入的密码
    var ubPassword2 = $("#ubPassword2").val();//第二次输入的密码
    if (ubPassword != ubPassword2) {
        $("#warninfo5").html("密码格式不正确");
        return false;
    } else {
        $("#warninfo5").html("");
        return true;
    }

}
/*当支付密码2失去光标的时候*/
$("#ubPassword2").blur(function () {
    passwordes2();
})
/*提交的时候 全部正确提交 否则有一个失败则提交不了*/
$(".btn").click(function () {
    if (phoneNum() != true) {
        /*手机号码*/
        phoneNum();
    } else if (Banknumber() != true) {
        /*银行卡号*/
        Banknumber();
    } else if (codejudge() != true) {
       /*验证码*/
        codejudge();
    }else if(password()!=true){
        /*第一次输入手机验证码*/
        password();
    }else if(passwordes2()!=true){
        passwordes2();
    }else{
        if(confirm("确认提交")){
            $("#userForm").submit;
        }
    }
})

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