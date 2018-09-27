/**
 * Created by panjunlin on 2016/9/28 0028.
 */

//表单验证的一些默认设置
$
    .validator
    .setDefaults({
        debug: true,
        errorElement: "em",
        errorClass: "valid-error",
        focusInvalid: true,
        highlight: function (ele) {
            $(ele)
                .closest('.alertFormUl li')
                .addClass('has-error');
        },
        success: function (label) {
            $(label)
                .closest('.alertFormUl li')
                .removeClass('has-error');
            $(label)
                .closest('.alertFormUl li')
                .children('.valid-error')
                .remove();
            $(label)
                .closest('.alertFormUl li')
                .children('.valid-error')
                .remove();
        },
        // errorPlacement : function(error, element){    var _value = $(element).val(),
        // $error = $(error);    if(_value == "" || _value == null || _value ==
        // undefined){        element.parent('div').append(error);    } },
        submitHandler: function () {
            return false;
        },
        ignore: '.valid-ignore'
    });

//实名认证表单验证
var realValidate = function () {
    var handleSubmit = function () {
        $('#id_card_alert_box_id').validate({
            rules: {
                "real_name_id": {
                    required: true
                },
                "id_card_id": {
                    required: true,
                    idCard: true
                }
            },
            messages: {
                "real_name_id": {
                    required: "请输入您的真实姓名"
                },
                "id_card_id": {
                    required: "请输入您的身份证号码"
                }
            }
        });
    };
    return {
        init: function () {
            handleSubmit();
        }
    }
}();
//手机表单验证
var mobileValidate = function () {
    var handleSubmit = function () {
        $('#mobile_alert_box_id').validate({
            rules: {
                "mobile_name_id": {
                    required: true,
                    mobile: true
                }
            },
            messages: {
                "mobile_name_id": {
                    required: "请输入您的手机号"
                }
            }
        });
    };
    return {
        init: function () {
            handleSubmit();
        }
    }
}();
//登录表单验证
var loginValidate = function () {
    var handleSubmit = function () {
        $('#login-form').validate({
            rules: {
                "login_name_id": {
                    required: true
                },
                "login_pass_word_id": {
                    required: true
                }
            },
            messages: {
                "login_name_id": {
                    required: "请输入您的登录账户"
                },
                "login_pass_word_id": {
                    required: "请输入您的登录密码"
                }
            }
        });
    };
    return {
        init: function () {
            handleSubmit();
        }
    }
}();

// 验证码
function getcode() {
    //$("#identifying_pic_id").attr('src','' + new Date().getTime());
    $("#identifying_pic_id").attr('src', '/reg/getCode.jpg?nocache=' + new Date().getTime());
}

// 登录验证
// var tag;
// $(function(){
//     $.ajax({
//         url: getRootPath() + '/login/getTag',
//         data: {
//         },
//         type: 'get',
//         cache: false,
//         success: function (data) {
//             tag= data.tag
//             if(tag=="1"){
//                 $("#show_login_code").show();
//             }
//         },
//         error: function () {
//         }
//     })
// })

// //手机号码移开验证是否需要图形验证码
// $("#login_name_id").blur(function () {
//     var loginPasswordVal = $("#login_pass_word_id").val();

//     $.ajax({
//         url: getRootPath() + '/login/getTag',
//         data: {},
//         type: 'get',
//         cache: false,
//         success: function (data) {
//             tag = data.tag
//             if (tag == "1") {
//                 $("#show_login_code").show();
//             }
//         },
//         error: function () {}
//     })
// })

function verifyLogin() {
    var errorId = $("#login_error_info_id");
    $("#login_btn_id").bind("click", function () {
        var loginPasswordVal = $("#login_pass_word_id").val();
        var loginNameVal = $("#login_name_id").val();
        var loginCodeVal = $("#login_code_id").val();
        //console.log(loginNameVal);
        //loginCodeVal = $("#login_code_id").val();
        loginValidate.init();
        var mobileValid = $('#login-form').valid();
        if (mobileValid) {
            if (tag == '1' && !loginCodeVal) {
                $("#show_login_code")
                    .find(".valid-error")
                    .html("请输入验证码")
                    .show();
                //errorId.show().html("请输入验证码");
            } else {
                //alert("进入异步请求"); 异步请求登录验证信息
                $.ajax({
                    url: getRootPath() + '/login/loginAjax',
                    data: {
                        userName: loginNameVal,
                        password: encode(loginPasswordVal),
                        loginCode: loginCodeVal
                    },
                    type: 'post',
                    cache: false,
                    dataType: 'json',
                    success: function (data) {
                        if (data.number > 2) {
                            $("#show_login_code").show();
                            tag = 1;
                        }
                        if (data.number == 5) {
                            errorId
                                .show()
                                .html("密码错误，你还可以尝试3次");
                        }
                        if (data.number == 6) {
                            errorId
                                .show()
                                .html("密码错误，你还可以尝试2次");
                        }
                        if (data.number == 7) {
                            errorId
                                .show()
                                .html("密码错误，你还可以尝试1次");
                        }
                        if (data.number == 8) {
                            errorId
                                .show()
                                .html("登录密码已达上限，请点击忘记密码进行找回或3小时后重试");
                        }
                        if ('0' == data.code) {
                            $("#login_ajax").html(data.ucsynlogin);
                            setTimeout(function () {
                                window.location.href = window.location.href
                            }, 1000);
                        } else {
                            errorId
                                .show()
                                .html(data.msg);
                        }
                    },
                    error: function () {
                        errorId
                            .show()
                            .html("登录异常，请稍后重试");
                    }
                });
            }
        }
    });
}

// 身份认证验证
function verifyAuthentication() {
    $("#id_card_btn_id")
        .bind("click", function () {
            var realNamedVal = $("#real_name_id").val();
            var realCardVal = $("#id_card_id").val();
            realValidate.init();
            var realValid = $('#id_card_alert_box_id').valid();
            if (realValid) {
                // 验证身份合法性
                $.ajax({
                    type: "post",
                    url: getRootPath() + "/account/personal/validRealName",
                    data: {
                        "realName": realNamedVal,
                        "idCardNo": realCardVal
                    },
                    async: false,
                    dataType: "json",
                    beforeSend: function (XMLHttpRequest) {
                        $("#id_card_error_info_id").addClass("disNone");
                        $("#authenticationSuccessId").addClass("disNone");
                        $("#authenticationErrorId").addClass("disNone");
                        $("#loadingId").removeClass("disNone");
                    },
                    success: function (data) {
                        if (data.success) {
                            /*
                            $.ajax({
                                url: getRootPath()+ '/bid/updateIdCard',
                                data: {
                                    realName: realNamedVal,
                                    idCardNum: realCardVal
                                },
                                type: 'post',
                                cache: false,
                                dataType: 'json',
                                success: function (data) {
                                    if ('1' == data.code) {
                                        $("#id_card_alert_box_id").addClass("disNone");
                                        $("#authenticationSuccessId").removeClass("disNone");
                                        $("#authenticationErrorId").addClass("disNone");
                                        $("#loadingId").addClass("disNone");
                                    } else {
                                        $("#id_card_alert_box_id").addClass("disNone");
                                        $("#authenticationSuccessId").addClass("disNone");
                                        $("#authenticationErrorId").removeClass("disNone");
                                        $("#loadingId").addClass("disNone");
                                    }
                                },
                                error: function () {
                                    $("#error_text_id").html("实名认证出现异常，请稍后重试").show();
                                    $("#id_card_alert_box_id").addClass("disNone");
                                    $("#authenticationSuccessId").addClass("disNone");
                                    $("#authenticationErrorId").removeClass("disNone");
                                    $("#loadingId").addClass("disNone");
                                }
                            });
                            */
                            location.reload();
                        } else {
                            // var msgObj = JSON.parse(data.msg); if(msgObj.idnumber &&
                            // msgObj.idnumber!=""){
                            // $("#error_text_id").html("<p>"+msgObj.idnumber+"</p>").show(); }
                            // if(msgObj.tips && msgObj.tips!=""){
                            // $("#error_text_id").html("<p>"+msgObj.tips+"</p>").show(); }
                            // $("#id_card_alert_box_id").addClass("disNone");
                            // $("#authenticationSuccessId").addClass("disNone");
                            // $("#authenticationErrorId").removeClass("disNone");
                            // $("#loadingId").addClass("disNone");
                            // $("#error_text_id").html("实名认证失败").show();
                            if (data.message != null && data.message != undefined) {
                                $("#error_text_id")
                                    .html(data.message)
                                    .show();
                            } else {
                                $("#error_text_id")
                                    .html("认证失败，实名认证信息有误或今日认证次数超过3次。")
                                    .show();
                            }
                            $("#id_card_alert_box_id").addClass("disNone");
                            $("#authenticationSuccessId").addClass("disNone");
                            $("#authenticationErrorId").removeClass("disNone");
                            $("#loadingId").addClass("disNone");
                            return false;
                        }
                    },
                    error: function () {
                        $("#error_text_id")
                            .html("身份验证出现异常，请稍后重试")
                            .show();
                        $("#id_card_alert_box_id").addClass("disNone");
                        $("#authenticationSuccessId").addClass("disNone");
                        $("#authenticationErrorId").removeClass("disNone");
                        $("#loadingId").addClass("disNone");
                    }
                });

            }
        });
}

// 身份认重新认证
function formShow() {
    $("#id_card_alert_box_id").removeClass("disNone");
    $("#authenticationSuccessId").addClass("disNone");
    $("#authenticationErrorId").addClass("disNone");
    $("#loadingId").addClass("disNone");
}
// 手机认证
var second = 60,
    t;
var flag = 0;

function numCutDown() { //60秒倒计时方法
    var bObj = $(".getcode");
    bObj.attr("onclick", "");
    t = setTimeout('numCutDown()', 1000);
    if (second >= 0) {
        bObj.html((second--) + '秒后重发');
        flag = 1;
        bObj.attr("disabled", true);
        return;
    } else {
        second = 60;
        clearTimeout(t);
        bObj.html('重发验证码');
        $(".getcode").removeClass("repeat");
        bObj.attr("disabled", false);
        bObj.attr("onclick", "validCode();");
        flag = 0;
        return;
    }
}

function validCode() {
    var mobile = $('#mobile_name_id').val();
    var errorId = $("#login_error_info_id");
    mobileValidate.init();
    var mobileValid = $('#mobile_alert_box_id').valid();
    if (mobileValid) {
        $(".getcode").addClass("repeat");
        //$("#Mobile_error").empty();
        numCutDown(); //测试
        $.ajax({
            type: "post",
            dataType: "json",
            url: "", //要访问的后台地址
            async: false,
            data: {
                Mobile: mobile
            },
            success: function (data) {
                if (data.flag == 0) {
                    if (flag == 0) {
                        numCutDown();
                        flag = 1;
                    } else {
                        //console.log("提示信息", "短信已发送请等待！", "info");
                        return true;
                    }
                } else {
                    errorId
                        .show()
                        .html("该手机号已被注册");
                    return false;
                }
            }
        });
    }
}

function verifyMobile() {
    $("#mobile_btn_id")
        .bind("click", function () {
            var mobileNamedVal = $("#mobile_name_id").val();
            var mobileCodeVal = $("#mobile_code_id").val();
            mobileValidate.init();
            var mobileValid = $('#mobile_alert_box_id').valid();
            if (mobileValid) {
                if (!mobileCodeVal) {
                    $("#mobile_login_code")
                        .find(".valid-error")
                        .html("请输入验证码")
                        .show();
                } else {
                    $.ajax({
                        type: "post",
                        url: getRootPath() + "/ucenter/checkIdCardNum",
                        data: {
                            "mobileName": mobileNamedVal,
                            "mobileCode": mobileCodeVal
                        },
                        async: false,
                        dataType: "json",
                        beforeSend: function (XMLHttpRequest) {
                            $("#id_card_error_info_id").addClass("disNone");
                            $("#mobileSuccessId").addClass("disNone");
                            $("#mobileErrorId").addClass("disNone");
                            $("#loadingMobile").removeClass("disNone");
                        },
                        success: function (data) {
                            if (data.flag == 0) {
                                $("#mobile_alert_box_id").addClass("disNone");
                                $("#mobileSuccessId").removeClass("disNone");
                                $("#mobileErrorId").addClass("disNone");
                                $("#loadingId").addClass("disNone");
                            } else {
                                $("#error_text_id")
                                    .html("手机验证码不正确")
                                    .show();
                                $("#mobile_alert_box_id").addClass("disNone");
                                $("#mobileSuccessId").addClass("disNone");
                                $("#mobileErrorId").removeClass("disNone");
                                $("#loadingMobile").addClass("disNone");
                            }
                        },
                        error: function () {
                            $("#error_text_mobile")
                                .html("手机验证出现异常，请稍后重试")
                                .show();
                            $("#mobile_alert_box_id").addClass("disNone");
                            $("#mobileSuccessId").addClass("disNone");
                            $("#mobileErrorId").removeClass("disNone");
                            $("#loadingMobile").addClass("disNone");
                        }
                    });
                }
            }
        });
}
// 手机重新认证
function formShowMobile() {
    $("#mobile_alert_box_id").removeClass("disNone");
    $("#mobileSuccessId").addClass("disNone");
    $("#mobileErrorId").addClass("disNone");
    $("#loadingMobile").addClass("disNone");
}

// 认证成功-关闭弹窗
function closeDialogBox3() {
    window
        .top
        .art
        .dialog({
            id: "authenticationId"
        })
        .close();
}

// 投资时弹出框
function showDialogBox(boxId) {
    switch (boxId) {
        // case 1: // 登录弹出框
        //     var alertHtml = $("#alertLoginId").html();
        //     art.dialog({
        //         title: '登录验证',
        //         fixed: true,
        //         lock: true,
        //         content: alertHtml,
        //         init: function () {
        //             verifyLogin(); // 登录验证
        //         }
        //     });
        //     break;
        case 2: // 手机认证弹出框
            var alertHtml = $("#alertMobileId").html();
            art.dialog({
                title: '手机安全认证',
                fixed: true,
                lock: true,
                content: alertHtml,
                init: function () {
                    verifyMobile(); //登录验证
                }
            });
            break;
        case 3: // 实名认证弹出框
            var alertHtml = $("#alertAuthenticationId").html();
            art.dialog({
                id: 'authenticationId',
                title: '实名认证',
                fixed: true,
                lock: true,
                content: alertHtml,
                init: function () {
                    verifyAuthentication(); // 身份认证验证
                }
            });
            break;
        default:
            break;
    }
}

// 立即投标点击事件
$("#tender_form_id[clickble=true]")
    .click(function () {
        return verification();
    });

//申购金额是否含有小数验证
function validFloat() {
    var tenderAmountId = $("#tender_amount");
    var inputErrorId = $("#input_error_id");
    var money = tenderAmountId.val() + '';
    if (money.indexOf('.') != -1) {
        inputErrorId.html("<span style='color:red'>申购金额不能含有小数</span>");
        return false;
    }
    inputErrorId.html("");
    return true;
}
//等额本息算法
function Count(cash, rate, periods) {
    var trate,
        P;
    rate = rate / 1200;
    trate = rate + 1;
    for (var i = 0; i < periods - 1; i++) {
        trate = trate * (rate + 1);
    }
    P = (cash * trate) * rate / (trate - 1);
    return P;
}
//天标计算
function dayCount(amount, yearRate, dayNum) {
    var p;
    p = amount * yearRate / 360 * dayNum;
    return p;
}



function Count(cash, rate, periods) {
    var trate,
        P;
    rate = rate / 1200;
    trate = rate + 1;
    for (var i = 0; i < periods - 1; i++) {
        trate = trate * (rate + 1);
    }
    P = (cash * trate) * rate / (trate - 1);
    return P;
}

function periodicInterest(cash, rate, periods) {
    var monthRepaySum = Count(cash, rate, periods);
    // 月利率
    var montRate = rate / 1200;
    // 月利息
    var monthInterest = [];
    // 月本金
    var monthCapital = [];
    var sumCapital = 0;
    var totalInterest = 0;

    if (periods > 1) {

        for (var i = 0; i < periods; i++) {
            monthInterest[i] = ((cash - sumCapital) * montRate).toFixed(2) * 100 / 100;

            monthCapital[i] = (monthRepaySum - monthInterest[i]).toFixed(2) * 100 / 100;
            sumCapital += monthCapital[i];
            // 最后一期本金特殊处理(已经将误差考虑了
            if (i == (periods - 1)) {
                var error = (cash - sumCapital).toFixed(2) * 100;
                monthCapital[periods - 1] = (monthCapital[periods - 1] + error / 100).toFixed(2) * 100 / 100;

            } else {
                monthCapital[periods - 1] = monthCapital[periods - 1];
            }
            totalInterest += monthInterest[i];
        }
    } else {
        monthInterest[0] = ((cash - sumCapital) * montRate).toFixed(2) * 100 / 100;
        monthCapital[0] = (monthRepaySum - monthInterest[0]).toFixed(2) * 100 / 100;
        totalInterest += monthInterest[0];
    }
    var json = {
        "totalInterest": totalInterest,
        "monthRepaySum": monthRepaySum,
        "monthInterest": monthInterest,
        "monthCapital": monthCapital
    }
    return json;
}
// 全部投资
function tenderAll() {
    if (tenderFormDo != null) {
        var validAmount = tenderFormDo.leftAmount;
        if (tenderFormDo.leftAmount >= 500) {
            validAmount = Math.min(tenderFormDo.leftAmount, Math.floor(tenderFormDo.userInfo.accountBalance)); // 有效投资金额
        }
        // console.log(validAmount);
        $("#tender_amount").val(validAmount);
        $("#input_error_id").empty();
        /*var validAmountNumber = formatMoney(profitCalculator(
            tenderFormDo.annualizedRate, validAmount,
            tenderFormDo.duration));*/

        var _repaymentStyle = tenderFormDo.repaymentStyle;
        if (tenderFormDo.durationTimeUnit == 0) {
            yearTimeRate = tenderFormDo.duration / 360;
        } else if (tenderFormDo.durationTimeUnit == 1) {
            yearTimeRate = tenderFormDo.duration / 12;
        }

        if (_repaymentStyle == 0) {
            //月还息到期还本
            var validAmountNumber = formatMoney(profitCalculator(tenderFormDo.annualizedRate + tenderFormDo.additionalAnnualizedRate, validAmount, yearTimeRate));
        } else if (_repaymentStyle == 1) {
            //等额本息
            var result = periodicInterest(validAmount, (tenderFormDo.annualizedRate + tenderFormDo.additionalAnnualizedRate) * 100, yearTimeRate * 12);
            var validAmountNumber = result.totalInterest.toFixed(2);
        } else if (_repaymentStyle == 3) {
            //等额本息
            var result = dayCount(validAmount, (tenderFormDo.annualizedRate + tenderFormDo.additionalAnnualizedRate), tenderFormDo.duration);
            var validAmountNumber = result.toFixed(2);
        }

        $("#input_error_id").html("到期收益 <em>" + validAmountNumber + "</em>元");

    }
}

// 全部投资(转让标)
function tenderTransAll() {
    var _amount = tenderFormDo.userInfo.accountBalance; // 账户余额
    var leftvalidAmount = tenderFormDo.leftTransferAmount; //可承接债权
    var validAmount = tenderFormDo.transferPrincipal; // 债权本金
    var _transferAmount = tenderFormDo.transferAmount //转让价格
    var _transferRate = _transferAmount / validAmount;
    var validAmountNumber;
    if (tenderFormDo != null) {
        $("#tender_amount").attr("placeholder", "");
        if (_amount > 0) {
            var realtransfer = Math.floor(_amount / _transferRate);
            if (realtransfer > leftvalidAmount) {
                realtransfer = leftvalidAmount;
            } else {
                leftvalidAmount = realtransfer;
            }
            $("#tender_amount").val(realtransfer);
            //收益 = 剩余收益*投资份额/转让本金  modify by caoshengkang
            validAmountNumber = (tenderFormDo.transferEarnings * leftvalidAmount / tenderFormDo.transferPrincipal).toFixed(2);
        } else {
            $("#tender_amount").val(_amount);
            validAmountNumber = parseFloat(0).toFixed(2)
        }
        $("#input_error_id").empty();
        /*var validAmountNumber = formatMoney(profitCalculator(
            tenderFormDo.transferAnnualizedRate, validAmount,
            tenderFormDo.duration));*/
        /*var _repaymentStyle = tenderFormDo.repaymentStyle;
        if (tenderFormDo.durationTimeUnit == 0) {
            yearTimeRate = tenderFormDo.residualDuration / 365;
        } else if (tenderFormDo.durationTimeUnit == 1) {
            yearTimeRate = tenderFormDo.residualDuration / 12;
        }
        if (_repaymentStyle == 0) {
            //月还息到期还本
            var validAmountNumber = formatMoney(profitCalculator(
                tenderFormDo.transferAnnualizedRate, validAmount, yearTimeRate));
        } else if (_repaymentStyle == 1) {
            //等额本息
            var result = periodicInterest(validAmount, tenderFormDo.transferAnnualizedRate * 100, yearTimeRate * 12);
            var validAmountNumber = result.totalInterest.toFixed(2);
        }*/
        $("#input_error_id").html("到期收益 <em>" + validAmountNumber + "</em>元");
        getTransRealPayAmount();
    }
}

// 到期收益计算器
function profitCalculator(profitAmount, tenderAmount, bidAmount) {
    return (profitAmount * tenderAmount * bidAmount).toFixed(2);
}

var times = 0; // 倒计时矫正
// 倒计时功能
function timeDown() {
    var nowTime = new Date().getTime(); // 当前时间
    //console.log(nowTime);
    var t = tenderFormDo.openTime - nowTime; // 相差的时间
    if (t < 0) {
        //$(".item"+x).hide(); tenderFormDo.tags = 1;
        window
            .location
            .reload();
        return false;
    }
    var hh = Math.floor(t / 1000 / 60 / 60 % 24);
    var mm = Math.floor(t / 1000 / 60 % 60);
    var ss = Math.floor(t / 1000 % 60);
    var showTime = '';
    if (hh > 0) {
        showTime += hh + '时';
    }
    if (mm > 0) {
        showTime += mm + '分';
    }
    showTime += ss + '秒';
    $("#tender_form_id").html(showTime + "后抢购");
    if (tenderFormDo.openTime > 0) {
        tenderFormDo.openTime--;
        times++;
        if (times % 200 == 0) { // 200秒矫正一次倒计时
            $.ajax({
                url: getRootPath() + '/bid/transferDetail',
                data: {
                    bid: $("#borrowId").val()
                },
                type: 'post',
                cache: false,
                dataType: 'json',
                success: function (data) {
                    tenderFormDo.openTime = data.openTime;
                }
            });
        }
    } else {
        location.reload();
    }
}

// 可转让剩余时间
function remainTimeDown() {
    var nowTime = new Date().getTime(); // 当前时间
    //console.log(nowTime);
    var t = tenderFormDo.closeTime - nowTime; // 相差的时间
    if (t < 0) {
        // window.location.reload();
        return false;
    }
    var hh = Math.floor(t / 1000 / 60 / 60 % 24);
    var mm = Math.floor(t / 1000 / 60 % 60);
    $("#lastH").html(hh);
    $("#lastM").html(mm);
    if (tenderFormDo.closeTime > 0) {
        tenderFormDo.closeTime--;
        times++;
        if (times % 200 == 0) { // 200秒矫正一次剩余时间
            $.ajax({
                url: getRootPath() + '/bid/tenderDetails',
                data: {
                    bid: $("#borrowId").val()
                },
                type: 'post',
                cache: false,
                dataType: 'json',
                success: function (data) {
                    tenderFormDo.closeTime = data.closeTime;
                }
            });
        }
    } else {
        location.reload();
    }
}
$(function () {
    //失去焦点内容置空
    $("#tender_amount")
        .focus(function () {
            $(this).attr("placeholder", "");
        })
    $("#tender_amount").blur(function () {
        $(this).attr("placeholder", "500元起投");
    })
    $(".auto-h1 i").click(function () {
        $("#risk-sure").fadeOut();
    })
})


//还款方式hover提醒
window.onload = function () {
    $(".repayment .icon-tixing").hover(function () {
        $(".tixing").fadeIn();
    }, function () {
        $(".tixing").fadeOut();
    })
}