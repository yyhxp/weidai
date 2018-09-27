<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            top: 245px;
            left: 530px;
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

        #reset-password tbody tr td{
            margin-top: 25px;
            display: block;
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
        <img src="${pageContext.request.contextPath }/statics/images/statues33.jpg" alt="" width="1015px" height="59.5px">
    </div>
    <div class="height18"></div>
    <div class="password-box">
        <form action="#" method="post">
            <table id="reset-password" style="margin: auto" class="controlltr">
                <tbody>
                <!--新的登陆密码-->
                <tr>
                    <td><img src="${pageContext.request.contextPath }/statics/images/Resets.PNG" style="margin-left: 107px;"></td>
                    <td style="margin-left: 52px;">
                            <p style="font-size: 16px;">您的登陆密码已经重置成功</p>
                    </td>
                    <td style="margin-left: 0px;"> <button type="button" class="btn btn-info"id="content2" style="width: 300px;">立即投资</button></td>
                </tr>
                <!--确定按钮-->

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
<script type="text/javascript">
 $("#content2").click(function(){
	 window.location.href="${pageContext.request.contextPath }/user/logindo.html";
 })
</script>
</body>
</html>