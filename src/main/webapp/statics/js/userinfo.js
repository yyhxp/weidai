/**
 * Created by admin on 2018/6/27.
 */
// 身份证的验证
var path = $("#path").val();
var flag = false;

// 身份证的验证
function idnumber() {
	/* 验证身份证的提示框 */
	var Idnumber = $("#idcard").val();
	var myreg = /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$|^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;
	if (Idnumber.length < 16) {
		$("#warninfo").html("身份证长度不足");
		return false;
	} else if (!myreg.test(Idnumber)) {
		$("#warninfo").html("身份证格式不正确");
		return false;
	} else {
		$.ajax({
			type : "POST",
			url : path + "/bk/IDexist",
			data : {
				"Idnumber" : Idnumber
			},
			datatype : "json",
			success : function(data) {
				if (data.Result == "exist") {
					$("#warninfo").html("该证件已经被其他用户使用过");
					$("#Openup").attr('disabled',true);
					flag = false;
					$("#temp3").val(flag);
				} else {
					$("#warninfo").html("");
					$("#Openup").attr('disabled',false);
					flag = true;
					$("#temp3").val(flag);
				}
			},
			error : function(data) {
				alert("执行错误");
			}
		})
		return true;
	}
}

/* 当身份证号输入框失去光标 */
$("#idcard").blur(function() {
	idnumber();
})
/* 当点击提交按钮的时候 */
$("#Openup").click(function() {
	var t = $("#temp3").val();
	if (t==false) {
		//按钮禁用
	} else if (idnumber() != true) {
		/* 身份验证 */
		idnumber();
	} else {
		$("#Openup").attr('disabled',false);
		if (confirm("是否提交数据")) {
			$("#userForm").submit;
		}
	}
})

/* 是否存在银行卡 */
/*
 * function existIDnumbers(){ var Idnumber = $("#idcard").val(); }
 */

