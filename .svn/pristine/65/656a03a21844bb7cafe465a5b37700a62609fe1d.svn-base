<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="zh-cn">
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="https://www.weidai.com.cn/favorite.ico" type="image/x-icon">
    <title>微贷网--忘记密码</title>
    <style>
        .layout {
            width: 1202px;
            height: auto;
            margin: 0 auto;
        }

        .password-container {
            /* border: 1px solid #E3E3E3;*/
            min-height: 500px;
            margin-top: 30px;
            padding: 71px 85px;
            position: relative;
        }

        .step-tips {
            text-align: center;
        }

        .height18 {
            width: 100%;
            height: 18px;
        }

        .reset-password {
            border-collapse: collapse;
            margin: 45px auto;
        }

        .input-out input {
            width: 245px;
            height: 28px;
            padding: 5px 5px;
            line-height: 28px;
            border-radius: 2px;
            vertical-align: middle;
            margin-right: 10px;
            border: 1px solid #e3e3e3;
        }

        .pro-message {
            vertical-align: middle;
            line-height: 15px;
            font-size: 12px;
            color: #fd5830;
        }

        .erron1s {
            position: absolute;
            top: 219px;
            left: 912px;
        }

        .input-relative {
            position: relative;
        }

        .pro-message {
            display: inline-block;
            vertical-align: middle;
            line-height: 15px;
            font-size: 12px;
            color: #fd5830;
        }

        #creditId {
            position: absolute;
            top: 42px;
            left: 5px;
        }

        .imgPut {
            position: relative;
        }

        #imgCodeId {
            position: absolute;
            top: 42px;
            left: 10px;
        }

        .input-out input.code {
            width: 150px;
        }

        .input-out input {
            /* width: 245px;
             height: 28px;*/
            width: 257px;
            height: 40px;
            padding: 5px 5px;
            line-height: 28px;
            border-radius: 2px;
            vertical-align: middle;
            margin-right: 10px;
            border: 1px solid #e3e3e3;
            font-size: 14px;
        }

        .input-out button.noBut {
            border: 1px solid #ccc;
            color: #ccc;
            cursor: default;
        }

        .input-out button {
            vertical-align: middle;
            overflow: visible;
            background: #fff;
            border: 1px solid #3db1fa;
            color: #00bbfd;
            font-size: 12px;
            padding: 5px 5px;
            line-height: 18px;
            cursor: pointer;
            outline: none;
        }

        .submit {
            display: inline-block;
            width: 256px;
            height: 40px;
            text-align: center;
            line-height: 40px;
            background: #3db1fa;
            color: #fff;
            font-size: 16px;
            border-radius: 2px;
        }

        #reset-password tbody tr {
            margin-top: 25px;
            display: block; /**/
        }

        /*tbody tr{
            display:block; /!*将tr设置为块体元素*!/
            margin:2px 0; /!*设置tr间距为2px*!/
        }*/
    </style>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css">
</head>
<body>
<%-- <iframe src="${pageContext.request.contextPath }/header.html" width="100%"></iframe> --%>
<!--<div class="layout" style="background-color: #FFFFFF">-->
<div class="password-container">
    <!--进度条-->
    <div class="step-tips">
        <img src="${pageContext.request.contextPath }/statics/images/statues22.jpg" alt="" width="1015px" height="59.5px">
    </div>
    <div class="height18"></div>
    <div class="password-box">
        <form action="${pageContext.request.contextPath }/user/modify4.html" id="userForm" class="userForm" method="GET">
            <table id="reset-password" style="margin: auto" class="controlltr">
                <tbody>
                <!--新的登陆密码-->
              
                <input type="hidden" name="phones" id="phones" class="phones" value="${phos}"/>          
                <tr>
                    <th>新的登陆密码：</th>
                    <td>
                        <div class="input-out" style="margin-left: 66px;">
                            <input type="text" name="pwd" id="phoneNum" placeholder="密码必须包含数字加字母"
                                   style="width: 257px;height: 40px;text-align: center;">
                            <span class="pro-message erron1s" style="display:block;" id="P1"></span>
                        </div>
                    </td>
                </tr>
                <!--证件号码-->
                <tr>
                    <th>
                        确认登陆密码:
                    </th>
                    <td>
                        <div class="input-out input-relative" style="margin-left: 76px;"
                             style="width: 257px;height: 40px;">
                            <input type="text" name="name" id="credit" placeholder="" style="text-align: center;">
                            <span class="pro-message" style="display: block;" id="creditId"></span>
                        </div>
                    </td>

                </tr>
                <!--确定按钮-->
                <tr style="margin-left: 167px">
                    <th></th>
                    <td>
                        <a href="javascript:;" class="submit" id="submit"  onclick="window.open('modifypwd3.jsp')">确定</a>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
    </div>
</div>
<!--高度小于354出现滚动条-->
<%-- <iframe src="${pageContext.request.contextPath }/bottom.html"" width="100%" height="354px"></iframe> --%>
<!--</div>-->
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/bootstrap.min.js"></script>
<script type="application/javascript">
    $(document).ready(function () {
        /*必须包含数字加字母 不能包含特殊符号 必须为字母加数字且长度不小于8位*/
        function checkPassword() {
            var str = $("#phoneNum").val();//第一次输入的密码
            console.log(str);
            console.log(str.length)
            if (str.length < 8) {
                /*提示的内容*/
                $("#P1").html("密码的长度不足");
                return false;
            }
            var reg1 = new RegExp(/^[0-9A-Za-z]+$/);
            if (!reg1.test(str)) {
                $("#P1").html("密码格式不正确");
                return false;
            }
            var reg = new RegExp(/[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/);
            if (!reg.test(str)) {
                $("#P1").html("密码格式不正确");
                return true;
            } else {
                $("#P1").html("");
                return true;
            }

        }

        /*判断两次输入的密码是否相等*/
        function checkPasswords() {
            var str = $("#phoneNum").val();//第一次输入的密码
            var stres = $("#credit").val();//第二次输入的密码
        /*    console.log(str + "====================" + stres);
            console.log(str != stres);*/
            if (str != stres) {
                $("#creditId").html("两次输入的密码不一致");
                return false;
            } else {
                $("#creditId").html("");
                return true;
            }
        }

        /*第一次输入密码的时候触发的事件*/
        $("#phoneNum").blur(function () {
            checkPassword();
        });
        /*第二次输入的密码的时候的触发的事件 判断是否和第一次输入的密码是否正确*/
        $("#credit").blur(function () {
            checkPasswords();
        });
        $("#submit").click(function(){
        	if(checkPassword()!=true){
        		checkPassword();
        	}else if(checkPasswords()!=true){
        		checkPasswords();
        	}else{
        		if(confirm("是否提交")){
        			$("#userForm").submit();
        		}
        	}
        })
    });
</script>
</body>
</html>