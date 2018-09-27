<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0056)https://www.weidai.com.cn/account/tender/autoTenderIndex -->
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=1202">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
    <meta http-equiv="expires" content="0">
    <meta name="baidu-site-verification" content="0dtQG8WjT3">
    <link rel="shortcut icon" href="https://www.weidai.com.cn/favorite.ico" type="image/x-icon">
    <title>微贷网--个人账户</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/myzhanghu_files/normalize.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/myzhanghu_files/weidai.css">
    <script charset="utf-8" src="${pageContext.request.contextPath }/statics/myzhanghu_files/v.js.下载"></script>
    <script src="${pageContext.request.contextPath }/statics/myzhanghu_files/hm.js.下载"></script>
    <script type="text/javascript" async="" src="${pageContext.request.contextPath }/statics/myzhanghu_files/vds.js.下载"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/myzhanghu_files/211ea7031e45c6f42ad88807e1767448.js.下载"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/myzhanghu_files/jquery-1.10.1.min.js.下载"></script>
    <style type="text/css">#waf_nc_block {
        position: fixed;
        _position: absolute;
        width: 100%;
        height: 100%;
        top: 0;
        bottom: 0;
        left: 0;
        z-index: 9999;
    }

    .waf-nc-mask {
        background: #f8f8f8;
        opacity: 0.5;
        filter: alpha(opacity=50);
        width: 100%;
        height: 100%;
    }

    .waf-nc-wrapper {
        width: 480px;
        height: 254px;
        position: absolute;
        top: 50%;
        left: 50%;
        margin-top: -127px;
        margin-left: -240px;
        margin-bottom: 16px;
        background: #ffffff;
        border: 3px solid #00A2CA;
    }

    .waf-nc-icon {
        position: absolute;
        top: 18px;
        left: 20px;
    }

    .waf-nc-title {
        margin-top: 23px;
        margin-left: 47px;
        font-size: 16px;
        color: #333333;
        line-height: 10px;
        text-align: left;
    }

    .waf-nc-splitter {
        margin-left: 26px;
        margin-top: 5px;
        width: 430px;
        height: 0px;
        border: 1px solid #f4f4f4;
    }

    .waf-nc-description {
        margin-top: 22px;
        margin-left: 23px;
        font-size: 12px;
        color: #333333;
        text-align: left;
    }

    #nocaptcha {
        margin-top: 20px;
        margin-left: 92px;
        width: 300px;
        height36px;
    }</style>
    <script src="${pageContext.request.contextPath }/statics/myzhanghu_files/nc.js.下载"></script>
    <style type="text/css">.easemobim-mobile-html {
        position: relative !important;
        width: 100% !important;
        height: 100% !important;
        padding: 0 !important;
        margin: 0 !important
    }

    .easemobim-mobile-body {
        position: absolute;
        top: 0 !important;
        left: 0 !important;
        width: 100% !important;
        height: 100% !important;
        overflow: hidden !important;
        padding: 0 !important;
        margin: 0 !important
    }

    .easemobim-mobile-body > * {
        display: none !important
    }

    .easemobim-mobile-body > .easemobim-chat-panel {
        display: block !important
    }

    .easemobim-chat-panel {
        z-index: 1000;
        overflow: hidden;
        position: fixed;
        border: none;
        width: 0;
        height: 0;
        -webkit-transition: all .01s;
        -moz-transition: all .01s;
        transition: all .01s;
        box-shadow: 0 4px 8px rgba(0, 0, 0, .2);
        border-radius: 4px
    }

    .easemobim-chat-panel.easemobim-minimized {
        border: none;
        box-shadow: none;
        height: 37px !important;
        width: 104px !important
    }

    .easemobim-chat-panel.easemobim-minimized.easemobim-has-prompt {
        width: 360px !important;
        height: 270px !important
    }

    .easemobim-chat-panel.easemobim-mobile {
        position: absolute !important;
        width: 100% !important;
        height: 100% !important;
        left: 0 !important;
        top: 0 !important;
        border-radius: 0;
        box-shadow: none
    }

    .easemobim-chat-panel.easemobim-mobile.easemobim-minimized {
        height: 0 !important;
        width: 0 !important
    }

    .easemobim-chat-panel.easemobim-hide {
        visibility: hidden;
        width: 1px !important;
        height: 1px !important;
        border: none
    }

    .easemobim-chat-panel.easemobim-dragging {
        display: none
    }

    .easemobim-iframe-shadow {
        left: auto;
        top: auto;
        display: none;
        cursor: move;
        z-index: 16777270;
        position: fixed;
        border: none;
        box-shadow: 0 4px 8px rgba(0, 0, 0, .2);
        border-radius: 4px;
        background-size: 100% 100%;
        background-repeat: no-repeat
    }

    .easemobim-iframe-shadow.easemobim-dragging {
        display: block
    }

    .easemobim-prompt-wrapper {
        display: none;
        z-index: 16777271;
        position: fixed;
        width: 30px;
        height: 30px;
        padding: 10px;
        top: 0;
        bottom: 0;
        margin: auto;
        left: 0;
        right: 0;
        color: #fff;
        background-color: #000;
        text-align: center;
        border-radius: 4px;
        -webkit-transition: all .5s;
        -moz-transition: all .5s;
        transition: all .5s;
        opacity: .7;
        -moz-box-sizing: content-box;
        box-sizing: content-box
    }

    .easemobim-prompt-wrapper > .loading {
        position: relative;
        width: 30px;
        height: 30px;
        display: inline-block;
        overflow: hidden;
        margin: 0;
        padding: 0;
        -webkit-animation: easemobim-loading-frame 1s linear infinite;
        -moz-animation: easemobim-loading-frame 1s linear infinite;
        animation: easemobim-loading-frame 1s linear infinite
    }

    @-webkit-keyframes easemobim-loading-frame {
        0% {
            -webkit-transform: rotate(0);
            transform: rotate(0)
        }
        to {
            -webkit-transform: rotate(1turn);
            transform: rotate(1turn)
        }
    }

    @-moz-keyframes easemobim-loading-frame {
        0% {
            -moz-transform: rotate(0);
            transform: rotate(0)
        }
        to {
            -moz-transform: rotate(1turn);
            transform: rotate(1turn)
        }
    }

    @keyframes easemobim-loading-frame {
        0% {
            -webkit-transform: rotate(0);
            -moz-transform: rotate(0);
            transform: rotate(0)
        }
        to {
            -webkit-transform: rotate(1turn);
            -moz-transform: rotate(1turn);
            transform: rotate(1turn)
        }
    }

    .easemobim-pc-img-view {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        z-index: 16777270
    }

    .easemobim-pc-img-view > .shadow {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: #000
    }

    .easemobim-pc-img-view > img {
        max-width: 100%;
        max-height: 100%;
        position: absolute;
        margin: auto;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0
    }</style>
    <style>@charset "utf-8";
    @font-face {
        font-family: 'nc_iconfont';
        src: url("//at.alicdn.com/t/font_1465353706_4784257.eot");
        src: url("//at.alicdn.com/t/font_1465353706_4784257.eot?#iefix") format('embedded-opentype'), url("//at.alicdn.com/t/font_1465353706_4784257.woff") format('woff'), url("//at.alicdn.com/t/font_1465353706_4784257.ttf") format('truetype'), url("//at.alicdn.com/t/font_1465353706_4784257.svg#iconfont") format('svg')
    }

    @font-face {
        font-family: 'ncpc_iconfont';
        src: url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.eot");
        src: url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.eot?#iefix") format('embedded-opentype'), url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.woff") format('woff'), url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.ttf") format('truetype'), url("//at.alicdn.com/t/font_384029_rhzpmteb25oecdi.svg#ncpc_iconfont") format('svg')
    }

    .nc-container div#nc-loading-circle {
        background: transparent;
        width: 20px;
        height: 20px;
        display: inline-block;
        position: relative;
        vertical-align: middle
    }

    .nc-container div#nc-loading-circle .sk-circle {
        background: transparent;
        width: 100%;
        height: 100%;
        position: absolute;
        left: 0;
        top: 0
    }

    .nc-container #nc-loading-circle .sk-circle:before {
        content: '';
        display: block;
        margin: 0 auto;
        width: 15%;
        height: 15%;
        background-color: #818181;
        border-radius: 100%;
        -webkit-animation: sk-circleFadeDelay 1.2s infinite ease-in-out both;
        animation: sk-circleFadeDelay 1.2s infinite ease-in-out both
    }

    .nc-container #nc-loading-circle .sk-circle2 {
        -webkit-transform: rotate(30deg);
        -ms-transform: rotate(30deg);
        transform: rotate(30deg)
    }

    .nc-container #nc-loading-circle .sk-circle3 {
        -webkit-transform: rotate(60deg);
        -ms-transform: rotate(60deg);
        transform: rotate(60deg)
    }

    .nc-container #nc-loading-circle .sk-circle4 {
        -webkit-transform: rotate(90deg);
        -ms-transform: rotate(90deg);
        transform: rotate(90deg)
    }

    .nc-container #nc-loading-circle .sk-circle5 {
        -webkit-transform: rotate(120deg);
        -ms-transform: rotate(120deg);
        transform: rotate(120deg)
    }

    .nc-container #nc-loading-circle .sk-circle6 {
        -webkit-transform: rotate(150deg);
        -ms-transform: rotate(150deg);
        transform: rotate(150deg)
    }

    .nc-container #nc-loading-circle .sk-circle7 {
        -webkit-transform: rotate(180deg);
        -ms-transform: rotate(180deg);
        transform: rotate(180deg)
    }

    .nc-container #nc-loading-circle .sk-circle8 {
        -webkit-transform: rotate(210deg);
        -ms-transform: rotate(210deg);
        transform: rotate(210deg)
    }

    .nc-container #nc-loading-circle .sk-circle9 {
        -webkit-transform: rotate(240deg);
        -ms-transform: rotate(240deg);
        transform: rotate(240deg)
    }

    .nc-container #nc-loading-circle .sk-circle10 {
        -webkit-transform: rotate(270deg);
        -ms-transform: rotate(270deg);
        transform: rotate(270deg)
    }

    .nc-container #nc-loading-circle .sk-circle11 {
        -webkit-transform: rotate(300deg);
        -ms-transform: rotate(300deg);
        transform: rotate(300deg)
    }

    .nc-container #nc-loading-circle .sk-circle12 {
        -webkit-transform: rotate(330deg);
        -ms-transform: rotate(330deg);
        transform: rotate(330deg)
    }

    .nc-container #nc-loading-circle .sk-circle2:before {
        -webkit-animation-delay: -1.1s;
        animation-delay: -1.1s
    }

    .nc-container #nc-loading-circle .sk-circle3:before {
        -webkit-animation-delay: -1s;
        animation-delay: -1s
    }

    .nc-container #nc-loading-circle .sk-circle4:before {
        -webkit-animation-delay: -.9s;
        animation-delay: -.9s
    }

    .nc-container #nc-loading-circle .sk-circle5:before {
        -webkit-animation-delay: -.8s;
        animation-delay: -.8s
    }

    .nc-container #nc-loading-circle .sk-circle6:before {
        -webkit-animation-delay: -.7s;
        animation-delay: -.7s
    }

    .nc-container #nc-loading-circle .sk-circle7:before {
        -webkit-animation-delay: -.6s;
        animation-delay: -.6s
    }

    .nc-container #nc-loading-circle .sk-circle8:before {
        -webkit-animation-delay: -.5s;
        animation-delay: -.5s
    }

    .nc-container #nc-loading-circle .sk-circle9:before {
        -webkit-animation-delay: -.4s;
        animation-delay: -.4s
    }

    .nc-container #nc-loading-circle .sk-circle10:before {
        -webkit-animation-delay: -.3s;
        animation-delay: -.3s
    }

    .nc-container #nc-loading-circle .sk-circle11:before {
        -webkit-animation-delay: -.2s;
        animation-delay: -.2s
    }

    .nc-container #nc-loading-circle .sk-circle12:before {
        -webkit-animation-delay: -.1s;
        animation-delay: -.1s
    }

    @-webkit-keyframes sk-circleFadeDelay {
        0%, 39%, 100% {
            opacity: 0
        }
        40% {
            opacity: 1
        }
    }

    @-webkit-keyframes sk-circleFadeDelay {
        0%, 39%, 100% {
            opacity: 0
        }
        40% {
            opacity: 1
        }
    }

    @keyframes sk-circleFadeDelay {
        0%, 39%, 100% {
            opacity: 0
        }
        40% {
            opacity: 1
        }
    }

    .nc-container .scale_text2 #nc-loading-circle .sk-circle:before {
        background-color: #fff
    }

    .nc_iconfont {
        font-family: "nc_iconfont";
        color: #ff3f08;
        font-size: 16px;
        font-style: normal
    }

    .ncpc_iconfont {
        font-family: "ncpc_iconfont";
        color: #ff3f08;
        font-size: 16px;
        font-style: normal
    }

    .captcha-error .icon_ban {
        float: left;
        font-size: 16px;
        padding-right: 5px;
        line-height: 14px
    }

    .clickCaptcha_text .btn_refresh {
        font-style: normal;
        cursor: pointer;
        background: #fff;
        color: #737383
    }

    .imgCaptcha .btn_refresh {
        font-size: 20px;
        cursor: pointer;
        background: #fff;
        color: #737383
    }

    .nc_voice {
        display: none;
        position: relative;
        margin-top: -34px;
        z-index: 99;
        width: auto;
        height: 34px;
        background: #fff
    }

    .omeo-code-img, .omeo-code-audio {
        font-size: 0;
        text-align: left
    }

    .omeo-code-audiobox, .omeo-code-img a, .omeo-code-audio a, .omeo-code-state {
        display: inline-block;
        *display: inline;
        zoom: 1;
        height: 32px;
        vertical-align: top;
        font-size: 12px
    }

    .omeo-code .omeo-code-refresh {
        background: transparent;
        width: 32px;
        height: 32px;
        font-size: 20px;
        color: #888;
        text-align: center;
        text-decoration: none;
        padding-left: 4px;
        line-height: 32px
    }

    .omeo-code .omeo-switch {
        display: none;
        width: 32px;
        height: 32px;
        border-left: 1px solid #e1e1e1;
        background-image: url("//g.alicdn.com/sd/ncpc/${pageContext.request.contextPath }/statics/images/checkcode.png");
        background-repeat: no-repeat
    }

    .omeo-img-active .omeo-code-img {
        display: block
    }

    .omeo-img-active .omeo-code-audio {
        display: none
    }

    .omeo-code-img img {
        border: 1px solid #cdcdcd;
        cursor: pointer
    }

    .omeo-code-img .omeo-switch {
        background-position: 9px -41px
    }

    .omeo-audio-active .omeo-code-audio {
        display: block
    }

    .omeo-audio-active .omeo-code-img {
        display: none
    }

    .omeo-code-refresh {
        position: relative;
        left: 95px
    }

    .omeo-code-audiobox {
        position: relative;
        height: 30px;
        line-height: 32px;
        border: 1px solid #e1e1e1;
        text-align: center;
        overflow: hidden;
        left: 100px;
        top: 1px;
        width: 45%;
        min-width: 80px;
        background-color: #eee
    }

    .omeo-code-audiobox a {
        display: block;
        text-decoration: none;
        color: #06c
    }

    .omeo-code-audiobox-playing a {
        visibility: hidden
    }

    .omeo-code-audiobox span, .omeo-code-audiobox b {
        visibility: hidden;
        position: absolute;
        top: 0;
        left: 0;
        height: 30px;
        font-weight: 100;
        overflow: hidden
    }

    .omeo-code-audiobox-playing span, .omeo-code-audiobox-playing b {
        visibility: visible
    }

    .omeo-code-audiobox span {
        z-index: 0;
        width: 0;
        background: #186bca
    }

    .omeo-code-audiobox b {
        width: 100%;
        z-index: 1;
        text-align: left;
        text-indent: 30px;
        color: #999;
        background: url("//g.alicdn.com/sd/ncpc/${pageContext.request.contextPath }/statics/images/checkcode.png") no-repeat 14px -89px
    }

    .omeo-code-audio .omeo-switch {
        background-position: 5px 10px
    }

    input[type=text]::-ms-clear {
        display: none
    }

    .omeo-box {
        position: relative;
        background-color: #fff
    }

    .omeo-code-echo {
        position: absolute;
        top: 2px;
        left: 2px
    }

    .omeo-code-echo input {
        padding: 5px;
        height: 18px;
        line-height: 18px;
        border: 1px solid #ddd;
        width: 80px;
        outline: 0
    }

    .omeo-code-state {
        height: 30px;
        line-height: 30px;
        text-indent: 25px;
        white-space: nowrap;
        background-image: url("//g.alicdn.com/sd/ncpc/${pageContext.request.contextPath }/statics/images/checkcode.png");
        background-repeat: no-repeat;
        background-position: 100px 100px
    }

    .omeo-code-echo .omeo-code-state-error {
        width: auto;
        background-position: 7px -193px
    }

    .omeo-code-echo .omeo-code-state-success {
        position: absolute;
        width: 30px;
        background-position: 7px -243px
    }

    .omeo-code-state {
        position: absolute;
        left: 0;
        top: 28px
    }

    .nc_voice_close {
        display: inline-block;
        position: relative;
        cursor: pointer;
        left: 95px;
        top: 0;
        border-left: #ddd 2px solid;
        padding: 0 0 0 7px;
        background-color: #fff;
        font-size: 20px;
        color: #888;
        line-height: 32px
    }

    .nc_help {
        position: absolute;
        width: 100%;
        height: 100%;
        left: 0;
        top: 0;
        z-index: 99999
    }

    .nc_help .mask {
        background-color: #000;
        opacity: .5;
        filter: alpha(opacity=50);
        width: 100%;
        height: 100%;
        top: 0;
        left: 0
    }

    .nc_btn_close {
        position: absolute;
        height: 20px;
        left: 500px;
        border-radius: 20px;
        padding: 10px 30px;
        background-color: #aaa;
        color: #fff;
        cursor: pointer;
        z-index: 10
    }

    .nc_btn_close:hover {
        background-color: #afafaf
    }

    .nc_hand {
        position: absolute;
        width: 68px;
        height: 53px;
        background-image: url("//g.alicdn.com/sd/ncpc/${pageContext.request.contextPath }/statics/images/hand.png");
        z-index: 3
    }

    .nc_slide_bg {
        z-index: 3;
        font-size: 12px;
        text-align: center;
        color: #fff;
        line-height: 34px
    }

    .nc_voicebtn {
        position: absolute;
        padding: 0;
        right: -25px;
        font-size: 23px;
        color: #888;
        cursor: pointer;
        line-height: 34px
    }

    .nc_helpbtn {
        position: absolute;
        cursor: pointer;
        right: -95px;
        top: 4px;
        font-size: 12px;
        background-color: #ffb668;
        color: #fff;
        padding: 4px;
        border-radius: 2px;
        line-height: 18px;
        display: none
    }

    .nc_helpbtn:before {
        width: 0;
        height: 0;
        content: "";
        position: absolute;
        left: -2px;
        top: 6px;
        border-top: 4px solid transparent;
        border-bottom: 4px solid transparent;
        border-right: 4px solid #ffb668
    }

    .nc-container .errloading {
        border: #faf1d5 1px solid;
        text-indent: 3px;
        background-image: none;
        font-size: 12px;
        width: 290px;
        line-height: 20px;
        padding: 7px 5px 8px 5px;
        color: #ef9f06;
    }

    .nc-container .errloading a {
        color: #30a7fc
    }

    .nc_captcha_text .nc_err {
        float: left;
        text-indent: 0
    }

    .button_move {
        transition: left .5s;
        -moz-transition: left .5s;
        -webkit-transition: left .5s;
        -o-transition: left .5s
    }

    .bg_move {
        transition: width .5s;
        -moz-transition: width .5s;
        -webkit-transition: width .5s;
        -o-transition: width .5s
    }

    .nc_slide_box {
        position: absolute
    }

    .nc_captcha_text {
        height: auto;
        line-height: 20px;
        visibility: hidden;
        font-size: 12px;
        color: #999;
        font-weight: normal
    }

    .nc-container .nc_captcha_img_text {
        width: auto;
        height: auto;
        line-height: 20px;
        visibility: hidden;
        font-size: 12px;
        color: #999;
        font-weight: normal;
        display: none;
        padding: 0 0 10px 0;
        background-position: 0 0;
    }

    .nc-container .nc_captcha_img_text span.nc-lang-cnt {
        line-height: inherit
    }

    .nc-container .imgCaptcha .nc_captcha_img_text {
        width: auto
    }

    .nc_captcha_img_text {
        height: auto;
        line-height: 20px;
        visibility: hidden;
        font-size: 12px;
        color: #999;
        font-weight: normal;
        display: none;
        padding: 0 0 10px 3px;
        background-position: 0 0
    }

    .nc-container .nc_wrapper {
        width: auto
    }

    .nc_scale {
        width: auto;
        height: 34px;
        background: #e8e8e8;
        position: relative;
        margin: 0;
        padding: 0
    }

    .nc_scale.is_audio {
        margin-right: 25px
    }

    .nc-container .nc_scale div {
        height: auto
    }

    .nc-container .nc_scale ul {
        list-style: none
    }

    .nc-container .nc_scale .btn_slide {
        color: #737383;
        background-image: none;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale
    }

    .nc-container .nc_scale span {
        text-align: center;
        width: 40px;
        height: 32px;
        line-height: 32px;
        border: 1px solid #ccc;
        position: absolute;
        left: 0;
        cursor: move;
        background: #fff;
        z-index: 2
    }

    .nc-container .nc_scale span.nc-lang-cnt {
        *line-height: 34px;
        float: none;
        width: auto;
        height: auto;
        *height: 34px;
        border: none;
        position: static;
        cursor: inherit;
        background: none;
        z-index: 0;
        display: inline
    }

    .nc_slide_button {
        width: 40px;
        height: 32px;
        border: 1px solid #ccc;
        position: absolute;
        left: 0;
        cursor: move;
        background: #fff url("//g.alicdn.com/sd/ncpc/${pageContext.request.contextPath }/statics/images/rt.png") no-repeat center;
        z-index: 2
    }

    @media screen and (-ms-high-contrast: active),(-ms-high-contrast: none) {
        .nc_scale span {
            height: 32px
        }
    }

    .nc-container .nc_scale .btnok {
        cursor: default;
        background: #fff url("//g.alicdn.com/sd/ncpc/${pageContext.request.contextPath }/statics/images/yes.png") no-repeat center;
        z-index: 3
    }

    .nc-container .nc_scale .btnok2 {
        cursor: default;
        font-size: 20px;
        background: #fff url("//g.alicdn.com/sd/ncpc/${pageContext.request.contextPath }/statics/images/no.png") no-repeat center;
        z-index: 3
    }

    .nc-container .nc_scale .btn_warn {
        cursor: default;
        color: #ff3f08;
        line-height: 34px;
        text-align: center;
        font-size: 20px;
        background: #fff;
        z-index: 3
    }

    .nc-container .clickCaptcha_text .btn_refresh {
        font-size: 20px
    }

    .nc-container .clickCaptcha_text .icon_close {
        line-height: 30px;
        margin-left: 8px;
        cursor: default;
        color: #ff3f08;
        font-size: 16px;
        float: left;
        margin-right: 2px;
        background: transparent;
        z-index: 3
    }

    .nc-container .nc_captcha_img_text .icon_close {
        cursor: default;
        color: #ff3f08;
        font-size: 16px;
        float: left;
        margin-right: 4px;
        background: transparent;
        z-index: 3;
        line-height: 18px
    }

    .nc-container .errloading .icon_warn {
        cursor: default;
        color: #ff3f08;
        font-size: 18px;
        float: left;
        background: transparent;
        z-index: 3
    }

    .nc-container .nc_scale .btn_ok {
        cursor: default;
        line-height: 34px;
        text-align: center;
        font-size: 20px;
        background: #fff;
        z-index: 3;
        color: #76c61d
    }

    .nc-container .nc_scale .nc_ok, .nc-container .nc_scale .nc_bg {
        background: #7ac23c
    }

    .nc-container .nc_scale .nc_bg {
        position: absolute;
        height: 100%;
        _height: 34px;
        left: 0;
        width: 10px
    }

    .nc-container .nc_scale div.redbar {
        background: #fc461e;
        opacity: .5;
        filter: alpha(opacity=50)
    }

    .nc-container .nc_scale div.orange {
        background: #f00
    }

    .nc-container .nc_scale .scale_text {
        width: 100%;
        height: 100%;
        text-align: center;
        position: absolute;
        z-index: 1;
        background: transparent;
        color: #9c9c9c;
        line-height: 34px;
        font-size: 12px;
        cursor: pointer
    }

    .nc-container .nc_scale .scale_text2 {
        text-align: left;
        color: #fff;
        font-size: 12px;
        text-indent: 10px
    }

    .nc-container .nc_scale .scale_text2 b {
        padding-left: 0;
        font-weight: normal
    }

    .nc-container .nc_scale .scale_text.scale_loading_text {
        text-align: center
    }

    .nc-container .nc_scale .imgCaptcha, .nc-container .nc_scale .clickCaptcha {
        display: none;
        overflow: hidden;
        border: 1px solid #ccc;
        background: #fff;
        z-index: 20000;
    }

    .nc-container .nc_scale .imgCaptcha p.error span, .nc-container .nc_scale .clickCaptcha p.error span {
        line-height: normal
    }

    .nc-container .nc_scale .imgCaptcha {
        height: auto
    }

    .nc-container .nc_scale .clickCaptcha {
        position: absolute;
        left: 0;
        top: 35px;
        height: 270px;
        background: #fff;
        display: none;
    }

    .nc-container .nc_scale .clickCaptcha p.error i {
        color: #ff3f08;
        font-style: normal
    }

    .nc-container .nc_scale .clickCaptcha div {
        position: static;
        clear: both;
        width: 100%;
        background: #fff;
        height: auto
    }

    .nc-container .nc_scale .clickCaptcha .clickCaptcha_text {
        height: 30px;
        line-height: 30px;
        font-size: 12px;
        color: #999;
    }

    .nc-container .nc_scale .clickCaptcha .clickCaptcha_text b {
        font-weight: normal
    }

    .nc_btn_2 {
        position: absolute;
        right: 0;
        top: 0;
        cursor: pointer;
        margin: 2px 9px 0 0
    }

    .nc_iconfont.nc_btn_2 {
        position: absolute;
        right: 0;
        top: 0;
        cursor: pointer
    }

    .nc_iconfont.nc_btn_1 {
        position: absolute;
        top: 10px;
        right: 5px
    }

    .nc_btn_1 {
        top: 10px;
        right: 10px
    }

    .scale_text i {
        font-style: normal;
        border: none;
        position: static;
        cursor: default;
        color: #fffc00;
        background: none;
        display: inline;
        width: 100%
    }

    .nc-container .clickCaptcha .clickCaptcha_img {
        margin: 0 auto;
        clear: both;
        position: relative;
    }

    .nc-container .clickCaptcha .clickCaptcha_img img {
        width: 230px;
        height: 230px;
        margin-left: 10px;
        margin-top: 5px
    }

    .nc-container .clickCaptcha .clickCaptcha_btn {
        margin: 10px 0 0 15px;
        position: relative;
        text-align: left;
    }

    .nc-container .clickCaptcha .clickCaptcha_btn img {
        cursor: pointer
    }

    .nc-container .imgCaptcha {
        position: absolute;
        left: 0;
        top: 35px;
        height: auto;
        padding-bottom: 15px;
        border: 1px solid #ccc;
        background: #fff;
    }

    .nc-container .imgCaptcha div {
        position: static;
        width: 90%;
        background-color: #fff
    }

    .nc-container .imgCaptcha, .nc-container .clickCaptcha {
        text-align: left;
    }

    .nc-container .imgCaptcha a, .nc-container .clickCaptcha a {
        color: #ff3f08
    }

    .nc-container .imgCaptcha .imgCaptcha_text {
        height: 42px;
        line-height: 42px;
        width: 120px;
        background: #fff;
        font-size: 14px;
        text-align: left;
        color: #747474;
        float: left;
        margin-left: 10px;
    }

    .nc-container .imgCaptcha .imgCaptcha_text input {
        margin-top: 5px;
        height: 30px;
        line-height: 30px;
        font-size: 14px;
        width: 90px;
        background: #fff
    }

    .nc-container .imgCaptcha .imgCaptcha_text input:focus {
        outline: none;
        color: #bbb
    }

    .nc-container .imgCaptcha .imgCaptcha_btn {
        margin: 0 0 0 12px;
        *margin-left: 0;
        clear: both;
        padding-top: 5px;
        width: 90%;
    }

    .nc-container .imgCaptcha .imgCaptcha_btn img {
        cursor: pointer
    }

    .nc-container .imgCaptcha .nc_scale_submit {
        margin: 0 auto;
        cursor: pointer;
        background-color: #fc461e;
        width: 120px;
        height: 32px;
        line-height: 32px;
        color: #fff;
        text-align: center
    }

    .nc-container .imgCaptcha .imgCaptcha_img {
        margin: 4px 0 0 100px;
        height: 40px;
        width: 130px;
        overflow: hidden;
        cursor: pointer;
    }

    .nc-container .imgCaptcha .imgCaptcha_img img {
        width: 130px
    }

    .nc-container .imgCaptcha .imgCaptcha_img input {
        border: solid 1px #ccc
    }

    .nc-lang-ar_MA, .nc-lang-ar_SA, .nc-lang-iw_HE, .nc-lang-iw_IL {
        text-align: right;
        *text-align: left;
    }

    .nc-lang-ar_MA .nc_scale .scale_text2, .nc-lang-ar_SA .nc_scale .scale_text2, .nc-lang-iw_HE .nc_scale .scale_text2, .nc-lang-iw_IL .nc_scale .scale_text2 {
        text-align: right;
    }

    .nc-lang-ar_MA .nc_scale .scale_text2 span, .nc-lang-ar_SA .nc_scale .scale_text2 span, .nc-lang-iw_HE .nc_scale .scale_text2 span, .nc-lang-iw_IL .nc_scale .scale_text2 span {
        *display: inline-block;
        padding: 0 56px 0 0
    }

    .nc-lang-ar_MA .nc_captcha_img_text, .nc-lang-ar_SA .nc_captcha_img_text, .nc-lang-iw_HE .nc_captcha_img_text, .nc-lang-iw_IL .nc_captcha_img_text {
        *text-align: right
    }

    .nc-lang-ar_MA span.nc-lang-cnt, .nc-lang-ar_SA span.nc-lang-cnt, .nc-lang-iw_HE span.nc-lang-cnt, .nc-lang-iw_IL span.nc-lang-cnt {
        text-align: right;
        direction: rtl
    }

    .nocaptcha span.nc-lang-cnt {
        float: none;
        height: auto;
        line-height: 30px
    }

    .nc-container {
        font-size: 12px;
        -ms-touch-action: none;
        touch-action: none;
    }

    .nc-container p {
        margin: 0;
        padding: 0;
        display: inline
    }

    .nc-container .scale_text.scale_text span[data-nc-lang="_startTEXT"] {
        display: inline-block;
        width: 100%
    }

    .nc-container .scale_text.scale_text.slidetounlock span[data-nc-lang="_startTEXT"] {
        background: -webkit-gradient(linear, left top, right top, color-stop(0, #4d4d4d), color-stop(.4, #4d4d4d), color-stop(.5, #fff), color-stop(.6, #4d4d4d), color-stop(1, #4d4d4d));
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        -webkit-animation: slidetounlock 3s infinite;
        -webkit-text-size-adjust: none
    }

    .nc-container .nc_scale .nc-align-center.scale_text2 {
        text-align: center;
        text-indent: -42px
    }

    @-webkit-keyframes slidetounlock {
        0% {
            background-position: -200px 0
        }
        100% {
            background-position: 200px 0
        }
    }

    .nc-container.tb-login .clickCaptcha_text .icon_close {
        line-height: 30px;
        margin-left: 0;
        cursor: default;
        color: #ff3f08;
        font-size: 16px;
        float: left;
        margin-right: 0;
        background: transparent;
        z-index: 3
    }

    .nc-container.tb-login {
        position: relative;
        margin-top: 20px;
        display: none;
    }

    .nc-container.tb-login .nc_scale {
        width: auto;
    }

    .nc-container.tb-login .nc_scale .scale_text2 {
        text-indent: -42px;
        text-align: center;
    }

    .nc-container.tb-login .nc_scale .scale_text2 b {
        padding: 0
    }

    .nc-container.tb-login .nc_scale.nc_err div.scale_text {
        background: #f79977
    }

    .nc-container.tb-login .errloading {
        width: auto
    }

    .nc-container.tb-login .imgCaptcha, .nc-container.tb-login .clickCaptcha {
        width: 252px;
        *width: 256px;
        border: 0;
        *height: 300px;
        min-height: 300px;
        max-height: inherit !important;
    }

    .nc-container.tb-login .imgCaptcha div.login-msg.error, .nc-container.tb-login .clickCaptcha div.login-msg.error {
        background: #fff2f2
    }

    .nc-container.tb-login .imgCaptcha .captcha-error, .nc-container.tb-login .clickCaptcha .captcha-error {
        position: absolute;
        top: 0;
        width: 244px;
        height: auto;
        margin-bottom: 15px;
        padding: 3px;
        border: solid 1px #ff8e8e;
        line-height: 18px
    }

    .nc-container.tb-login .imgCaptcha .captcha-inform, .nc-container.tb-login .clickCaptcha .captcha-inform {
        font-size: 110%;
        margin-left: 20px
    }

    .nc-container.tb-login .imgCaptcha {
        padding-top: 66px;
    }

    .nc-container.tb-login .imgCaptcha .imgCaptcha_text {
        width: 100px;
        margin-left: 0;
    }

    .nc-container.tb-login .imgCaptcha .imgCaptcha_text input:focus {
        color: #000
    }

    .nc-container.tb-login .imgCaptcha .imgCaptcha_img {
        width: 120px;
        _width: 100px
    }

    .nc-container.tb-login .imgCaptcha .imgCaptcha_btn {
        width: 100%;
        margin-left: 0
    }

    .nc-container.tb-login .imgCaptcha .nc_scale_submit {
        width: 100%;
        height: 36px;
        line-height: 36px;
        margin-top: 20px;
        margin-left: 0;
        border-radius: 3px;
        font-size: 16px;
        font-family: Tahoma, Helvetica, Arial, sans-serif;
        background: #ff3f08
    }

    .nc-container.tb-login .clickCaptcha {
        padding-top: 40px;
    }

    .nc-container.tb-login .clickCaptcha .clickCaptcha_text {
        text-indent: 4px
    }

    .nc-container.tb-login .clickCaptcha .clickCaptcha_img img {
        margin-left: 10px
    }

    .nc-container.tb-login .nc_btn_1 {
        top: 77px;
        _top: 57px
    }

    .nc-container.tb-login .nc_btn_2 {
        top: 36px
    }

    .login .nc-container.tb-login .login-msg p, .login-box .nc-container.tb-login .login-msg p {
        width: auto;
        float: left
    }

    .nc-container.tb-login.nc-old-login {
        margin: 20px 0 10px 0;
        width: 250px;
    }

    .nc-container.tb-login.nc-old-login .nc_wrapper {
        width: 250px
    }

    .nc-container.tb-login.nc-old-login .imgCaptcha, .nc-container.tb-login.nc-old-login .clickCaptcha {
        width: 250px;
        min-height: auto;
    }

    .nc-container.tb-login.nc-old-login .imgCaptcha .captcha-error, .nc-container.tb-login.nc-old-login .clickCaptcha .captcha-error {
        line-height: 16px
    }

    .nc-container.tb-login.nc-old-login .clickCaptcha {
        padding-top: 28px;
    }

    .nc-container.tb-login.nc-old-login .clickCaptcha .clickCaptcha_img img {
        width: 200px;
        height: 200px
    }

    .nc-container.nc-old-login.show-click-captcha {
        padding-bottom: 60px
    }

    .nc-container.nc-old-login.show-click-captcha.nc-tm-min-fix {
        padding-bottom: 40px
    }

    .nc-container.tb-login.nc-tm-min-fix .clickCaptcha {
        max-height: 340px !important
    }

    #content .login-box .bd .nc-container.tb-login .login-msg {
        margin: 10px auto 15px auto
    }

    #content .login-box .bd .nc-container.tb-login.nc-old-login.show-click-captcha .login-msg {
        margin: 2px 0 0 0
    }

    .nc-container .nc_scale .nc-cc {
        display: none;
        position: absolute;
        left: 0;
        top: 35px;
        z-index: 20000;
        width: 360px;
        height: 570px;
        border: 1px solid #5eaef1;
        border-radius: 4px;
        background: #fff;
        font-size: 14px;
        line-height: 18px;
        color: #333;
    }

    .nc-container .nc_scale .nc-cc.nc-cc-status-loading .nc-cc-btn, .nc-container .nc_scale .nc-cc.nc-cc-status-verifing .nc-cc-btn {
        background-color: #90c1eb
    }

    .nc-container .nc_scale .nc-cc.nc-cc-status-loading .nc-cc-btn, .nc-container .nc_scale .nc-cc.nc-cc-status-verifing .nc-cc-btn, .nc-container .nc_scale .nc-cc.nc-cc-status-loading .nc-cc-refresh, .nc-container .nc_scale .nc-cc.nc-cc-status-verifing .nc-cc-refresh {
        cursor: default
    }

    .nc-container .nc_scale .nc-cc.nc-cc-status-loading .nc-cc-refresh, .nc-container .nc_scale .nc-cc.nc-cc-status-verifing .nc-cc-refresh {
        color: #999
    }

    .nc-container .nc_scale .nc-cc a {
        color: #3199f4;
        text-decoration: none
    }

    .nc-container .nc_scale .nc-cc .nc_iconfont {
        vertical-align: top;
        margin-right: 8px
    }

    .nc-container .nc_scale .nc-cc-btn {
        display: inline-block;
        *display: inline;
        *zoom: 1;
        vertical-align: top;
        letter-spacing: normal;
        word-spacing: normal;
        width: 100px;
        line-height: 30px;
        text-align: center;
        background-color: #3199f4;
        color: #fff;
        border-radius: 4px;
        cursor: pointer;
    }

    .nc-container .nc_scale .nc-cc-btn.nc-cc-disabled {
        background-color: #90c1eb;
        cursor: default
    }

    .nc-container .nc_scale .nc-cc-btn .nc-lang-cnt {
        line-height: 18px
    }

    .nc-container .nc_scale .nc-cc-header {
        padding: 20px 20px 19px 20px;
        height: 100px;
        background: #f4f8fa;
        border-bottom: 1px solid #ccc
    }

    .nc-container .nc_scale .nc-cc-img1-box {
        float: left;
        width: 100px;
        height: 100px;
        margin-right: 16px
    }

    .nc-container .nc_scale .nc-cc-txt {
        overflow: hidden;
        *zoom: 1;
        line-height: 30px;
        padding-top: 11px
    }

    .nc-container .nc_scale .nc-cc-img2-box {
        position: relative;
        padding: 0 20px;
        margin-top: 20px
    }

    .nc-container .nc_scale .nc-cc-items {
        position: absolute;
        left: 20px;
        _left: 0;
        top: 0;
        width: 320px;
        overflow: hidden
    }

    .nc-container .nc_scale .nc-cc-items-inner {
        margin-right: -20px
    }

    .nc-container .nc_scale .nc-cc-item {
        position: relative;
        display: inline-block;
        *display: inline;
        *zoom: 1;
        vertical-align: top;
        letter-spacing: normal;
        word-spacing: normal;
        margin-right: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        width: 98px;
        height: 98px;
        background: url("//gtms02.alicdn.com/tps/i2/T1ty2QFNNXXXc6Yc2r-1-1.gif");
    }

    .nc-container .nc_scale .nc-cc-item:hover {
        border-color: #3199f4
    }

    .nc-container .nc_scale .nc-cc-item .nc_iconfont {
        display: none;
        position: absolute;
        right: 0;
        bottom: 0;
        color: #3199f4;
        font-size: 22px;
        margin-right: 0
    }

    .nc-container .nc_scale .nc-cc-item.nc-cc-selected .nc_iconfont {
        display: block
    }

    .nc-container .nc_scale .nc-cc-tip {
        display: none;
        position: absolute;
        left: 0;
        bottom: 60px;
        width: 360px;
        line-height: 18px;
        text-align: center;
        color: #eb4f38;
    }

    .nc-container .nc_scale .nc-cc-tip span {
        line-height: normal
    }

    .nc-container .nc_scale .nc-cc-footer {
        position: absolute;
        left: 0;
        bottom: 20px;
        width: 360px;
        height: 30px;
        line-height: 30px;
        text-align: center;
    }

    .nc-container .nc_scale .nc-cc-footer .nc_iconfont {
        color: #c4cbd0
    }

    .nc-container .nc_scale .nc-cc-refresh, .nc-container .nc_scale .nc-cc-wait {
        position: absolute;
        left: 20px;
        top: 0;
        color: #3199f4;
        cursor: pointer
    }

    .nc-container .nc_scale .nc-cc-wait {
        display: none
    }

    .nc-container .nc_scale .nc-cc-cancel {
        position: absolute;
        right: 20px;
        top: 0;
        color: #3199f4;
        cursor: pointer;
    }

    .nc-container .nc_scale .nc-cc-cancel .nc_iconfont {
        position: relative;
        top: -1px
    }

    .nc-container .nc_scale .nc-cc-loading {
        margin-top: 247px;
        text-align: center;
        line-height: 14px
    }

    .nc-container .nc_scale .nc-cc-loading-img {
        display: inline-block;
        *display: inline;
        *zoom: 1;
        vertical-align: top;
        letter-spacing: normal;
        word-spacing: normal;
        vertical-align: middle;
        background: url("//img.alicdn.com/tps/TB1OdxsKpXXXXcgXFXXXXXXXXXX-14-14.gif") no-repeat;
        width: 14px;
        height: 14px;
        position: relative;
        top: -1px;
        margin-right: 9px
    }

    .nc-container .nc_scale .nc-cc-fail {
        position: absolute;
        left: 50%;
        top: 50%;
        width: 320px;
        height: 180px;
        margin-left: -160px;
        margin-top: -90px;
        background: #fff;
        border-radius: 4px
    }

    .nc-container .nc_scale .nc-cc-fail-inner {
        text-align: center;
        padding: 55px 10px 10px
    }

    .nc-container .nc_scale .nc-cc-fail-action {
        margin: 28px 0 18px;
    }

    .nc-container .nc_scale .nc-cc-fail-action a {
        display: inline-block;
        *display: inline;
        *zoom: 1;
        vertical-align: top;
        letter-spacing: normal;
        word-spacing: normal;
        line-height: 30px;
        margin-left: 16px
    }

    .nc-container .nc_scale .nc-cc-contact {
        text-align: right;
        color: #666;
        padding-right: 9px
    }

    .nc-container .nc_scale .nc-cc-mask {
        display: none;
        position: absolute;
        left: 0;
        top: 0;
        width: 360px;
        height: 570px;
        background: rgba(0, 0, 0, 0.3);
        filter: progid:DXImageTransform.Microsoft.gradient(enabled='true', startColorstr='#4C000000', endColorstr='#4C000000');
    }

    :root .nc-container .nc_scale .nc-cc-mask {
        -webkit-filter: none;
        filter: none
    }

    .nc-container .nc_scale .nc-cc-arrow-1, .nc-container .nc_scale .nc-cc-arrow-2 {
        display: none;
        position: absolute;
        top: 340px;
        border: solid transparent;
        height: 0;
        width: 0
    }

    .nc-container .nc_scale .nc-cc-arrow-1 {
        border-width: 16px;
        margin-top: -1px
    }

    .nc-container .nc_scale .nc-cc-arrow-2 {
        border-width: 15px
    }

    .nc-container .nc_scale .nc-cc-right .nc-cc-arrow-1, .nc-container .nc_scale .nc-cc-left .nc-cc-arrow-1, .nc-container .nc_scale .nc-cc-right .nc-cc-arrow-2, .nc-container .nc_scale .nc-cc-left .nc-cc-arrow-2 {
        display: block;
        _display: none
    }

    .nc-container .nc_scale .nc-cc-right {
        left: 180px;
        top: -339px;
    }

    .nc-container .nc_scale .nc-cc-right .nc-cc-arrow-1 {
        border-right-color: #5eaef1;
        left: -32px
    }

    .nc-container .nc_scale .nc-cc-right .nc-cc-arrow-2 {
        border-right-color: #fff;
        left: -30px
    }

    .nc-container .nc_scale .nc-cc-left {
        left: -335px;
        top: -339px;
    }

    .nc-container .nc_scale .nc-cc-left .nc-cc-arrow-1 {
        border-left-color: #5eaef1;
        right: -32px
    }

    .nc-container .nc_scale .nc-cc-left .nc-cc-arrow-2 {
        border-left-color: #fff;
        right: -30px
    }</style>
</head>
<style>
    @media screen and (max-width: 1260px) {
        html,
        body {
            width: 1280px;
            background-position: 50%;
        }

        body {
            overflow: auto;
        }
    }

    @media screen and (min-width: 1260px) {
        html,
        body {
            width: 100%;
            background-position: 50%;
        }

        body {
            overflow: auto;
        }

        .wdpc-header {
            width: 100%;
        }
    }

    .wdpc-header-div {
        width: 100%;
        height: 600px;
    }

    .swiper-button-prev {
        width: 60px;
        height: 60px;
        background: url('${pageContext.request.contextPath }/statics/images/背景(2).png');
    }

    .swiper-button-next {
        width: 60px;
        height: 60px;
        background: url('${pageContext.request.contextPath }/statics/images/背景(3).png');
    }

    .swiper-button-prev:hover {
        background-color: rgba(1, 1, 1, 0.5);
    }

    .swiper-button-next:hover {
        background-color: rgba(1, 1, 1, 0.5);
    }

    .gricon {
        background: url('${pageContext.request.contextPath }/statics/images/gr1.png');
        width: 18px;
        height: 18px;
    }

    .wdpc-header:hover .gricon {
        background: url('${pageContext.request.contextPath }/statics/images/gr1.png');
        width: 18px;
        height: 18px;
    }

    .wxicon {
        background: url('${pageContext.request.contextPath }/statics/images/wx1.png');
        width: 22px;
        height: 16px;
    }

    .wdpc-header:hover .wxicon {
        background: url('${pageContext.request.contextPath }/statics/images/wx1.png');
        width: 22px;
        height: 16px;
    }

    .kficon {
        background: url('${pageContext.request.contextPath }/statics/images/kf1.png');
        width: 16px;
        height: 16px;
    }

    .wdpc-header:hover .kficon {
        background: url('${pageContext.request.contextPath }/statics/images/kf1.png');
    }

    .wdpc-header:hover .span-x {
        color: #8a8a8a;
    }

    .wdpc-header:hover .a-a {
        color: #8a8a8a;
    }

    .xwxw:hover .zhanghu {
        color: #22A7FF;
    }

    .xwxw:hover .gricon {
        background: url('${pageContext.request.contextPath }/statics/images/gr2.png');
    }

    .style-user-ax2 {
        width: 24%;
        margin-left: 1%;
        height: 100%;
        float: left;
        background: url('${pageContext.request.contextPath }/statics/images/app1x2iPig.jpg');
        background-size: 100% 100%;
    }

    .swiper-wrapper {
        width: 1280px;
    }
</style>
<body>
<!-- 我的兄弟叫顺溜之固定顶部 -->
<div class="gd-header">
    <div class="gd-header-a1">
        <div>
            <a href="index.jsp" class="weidaiwang1">微贷网</a>
            <ul>
                <a href="index.jsp">
                    <li style="padding-bottom: 5px;">
                        首页
                    </li>
                </a>
                <a href="x-tou.jsp">
                    <li style="padding-bottom: 5px;">
                        我要出借
                    </li>
                </a>
                <a href="loan.jsp">
                    <li style="padding-bottom: 5px;">
                        我要借款
                    </li>
                </a>
                <a href="">
                    <li style="padding-bottom: 5px;">
                        信息披露
                    </li>
                </a>
                <a href="">
                    <li style="padding-bottom: 5px;">
                        关于微贷
                    </li>
                </a>
            </ul>
            <div class="xwxw" style="width: 8%;margin-left: 32px;height:30px;float: left;position: relative;">
                <a href="${pageContext.request.contextPath }/jsp/myzhanghu.jsp">
                    <i class="gricon1" style="position: absolute;top: 18px;left: -4px;"></i>
                    <span class="zhanghu1">我的账户</span>
                </a>
            </div>
        </div>
    </div>
</div>
<!-- 我的兄弟叫顺溜之固定顶部下拉框 -->
<div class="gd-drop-down">
    <div class="gb-drop-dowm-a1">
        <ul>
            <li>
                <a href="x-tou.jsp">X智投</a>
            </li>
            <li>
                <a href="zhitou.jsp">优选智投</a>
            </li>
            <li>
                <a href="sanbiao.jsp">散标列表</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath }/jsp/zhuanrang.jsp">转让专区</a>
            </li>
        </ul>
        <ul style="width: 900px;">
            <li>
                <a href="">银行资金存管</a>
            </li>
            <li>
                <a href="">运营报告</a>
            </li>
            <li>
                <a href="">备案信息</a>
            </li>
            <li>
                <a href="">组织信息</a>
            </li>
            <li>
                <a href="">审核信息</a>
            </li>
            <li>
                <a href="">经营信息</a>
            </li>
            <li>
                <a href="">监管法规</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath }/jsp/ditu.jsp">联系我们</a>
            </li>
            <li>
                <a href="">法人签章</a>
            </li>
        </ul>
        <ul>
            <li>
                <a href="">微贷简介</a>
            </li>
            <li>
                <a href="">微贷风采</a>
            </li>
            <li>
                <a href="">企业内刊</a>
            </li>
            <li>
                <a href="">新闻公告</a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath }/jsp/ditu.jsp">联系我们</a>
            </li>
            <li>
                <a href="">人才招聘</a>
            </li>
        </ul>
    </div>
</div>
<!-- 我的兄弟叫顺溜之返回顶部 -->
<div class="floatBtn1">
    <ul>
        <a href="">
            <li>
                <div class="floatBtn1-ax">
                    <i></i>
                    <span style="left: -1px;">意见</span>
                    <span style="top: 10px;left: -1px;">反馈</span>
                </div>
            </li>
        </a>
        <a href="javascript:;">
            <li>
                <div class="floatBtn1-ax1">
                    <img src="" alt="">
                    <i style="position: relative;top: -20px"></i>
                    <span style="left: -2px;">手机</span>
                    <span style="top: 10px;left: -2px;">微贷</span>
                </div>
            </li>
        </a>
        <a href="javascript:;">
            <li>
                <div class="floatBtn1-ax2">
                    <i></i>
                    <span style="left: 1px;">微信</span>
                    <span style="top: 10px;left: 1px;">订阅</span>
                </div>
            </li>
        </a>
        <a href="#">
            <li>
                <div class="floatBtn1-ax3">
                    <i></i>
                    <span style="left: -2px;">在线</span>
                    <span style="top: 10px;left: -2px;">客服</span>
                </div>
            </li>
        </a>
        <a href="calcultor.jsp">
            <li>
                <div class="floatBtn1-ax4">
                    <i></i>
                    <span style="left: -2px;">利率</span>
                    <span style="top: 10px;left: -2px;">计算</span>
                </div>
            </li>
        </a>
        <a href="#">
            <li id="fhdb">
                <div class="floatBtn1-ax5">
                    <i></i>
                    <span style="top: -10px;left: -1px;">返回</span>
                    <span style="top: 5px;left: -1px;">顶部</span>
                </div>

            </li>
        </a>
    </ul>
</div>
<!-- 我的兄弟叫顺溜之透明层 -->
<div class="touming" style="height: 1345px;">
</div>
 <!-- 我的兄弟叫顺溜之导航 -->
  		<%@ include file="mydaohang.jsp"  %>
  	
    <div class="wdpc-header-a2">
        <a href="" class="weidaiwang">微贷网</a>
        <ul class="actived" style="border:0px solid white">
            <a href="index.jsp">
                <li class="actived-a1">
                    首页
                </li>
            </a>
            <a href="x-tou.jsp">
                <li class="actived-a1" style="padding-bottom: 10px; ">
                    我要出借
                </li>
            </a>
            <a href="loan.jsp">
                <li class="actived-a1" style="padding-bottom: 10px; ">
                    我要借款
                </li>
            </a>
            <a href="">
                <li class="actived-a1" style="margin-top: 8px;padding-bottom: 10px;">
                    信息披露
                </li>
            </a>
            <a href="">
                <li class="actived-a1" style="margin-top: 8px;padding-bottom: 10px;">
                    关于微贷
                </li>
            </a>
        </ul>
        <div class="xwxw" style="width: 8%;margin-left: 10px;height:30px;float: left;position: relative;">
            <a href="${pageContext.request.contextPath }/jsp/myzhanghu.jsp">
                <i class="gricon" style="position: absolute;top: 10px;left: -4px;"></i>
                <span class="zhanghu">我的账户</span>
            </a>
        </div>
    </div>
</div>
<!-- 我的兄弟叫顺溜之我要出借 -->
<div class="wdpc-header-01">
    <div class="wdpc-header-02">
        <ul>
            <li class="wdpc-header-push">
                <a href="x-tou.jsp">X智投</a>
            </li>
            <li class="wdpc-header-push">
                <a href="zhitou.jsp">优选智投</a>
            </li>
            <li class="wdpc-header-push">
                <a href="">散标列表</a>
            </li>
            <li class="wdpc-header-push">
                <a href="${pageContext.request.contextPath }/jsp/zhuanrang.jsp">转让专区</a>
            </li>
        </ul>
    </div>
</div>
<!-- 我的兄弟叫顺溜之信息披露 -->
<div class="wdpc-header-01">
    <div class="wdpc-header-02">
        <ul>
            <li class="wdpc-header-push">
                <a href="">银行资金存管</a>
            </li>
            <li class="wdpc-header-push">
                <a href="">运营报告</a>
            </li>
            <li class="wdpc-header-push">
                <a href="">备案信息</a>
            </li>
            <li class="wdpc-header-push">
                <a href="">组织信息</a>
            </li>
            <li class="wdpc-header-push">
                <a href="">审核信息</a>
            </li>
            <li class="wdpc-header-push">
                <a href="">经营信息</a>
            </li>
            <li class="wdpc-header-push">
                <a href="">监管法规</a>
            </li>
            <li class="wdpc-header-push">
                <a href="${pageContext.request.contextPath }/jsp/ditu.jsp">联系我们</a>
            </li>
            <li class="wdpc-header-push">
                <a href="">法人签章</a>
            </li>
        </ul>
    </div>
</div>
<!-- 我的兄弟叫顺溜之关于微贷 -->
<div class="wdpc-header-01">
    <div class="wdpc-header-02">
        <ul>
            <li class="wdpc-header-push">
                <a href="">微贷简介</a>
            </li>
            <li class="wdpc-header-push">
                <a href="">微贷风采</a>
            </li>
            <li class="wdpc-header-push">
                <a href="">企业内刊</a>
            </li>
            <li class="wdpc-header-push">
                <a href="">新闻公告</a>
            </li>
            <li class="wdpc-header-push">
                <a href="${pageContext.request.contextPath }/jsp/ditu.jsp">联系我们</a>
            </li>
            <li class="wdpc-header-push">
                <a href="">人才招聘</a>
            </li>
        </ul>
    </div>
</div>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/myzhanghu_files/normalize.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/myzhanghu_files/weidai.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/myzhanghu_files/newHead.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/myzhanghu_files/alertbox1.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/myzhanghu_files/index-shunliu.css">


<script type="text/javascript" src="${pageContext.request.contextPath }/statics/myzhanghu_files/jquery-1.10.1.min.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/myzhanghu_files/newHead.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/myzhanghu_files/pageNavigationForAjax.js.下载"></script>

<script type="text/javascript" src="${pageContext.request.contextPath }/statics/myzhanghu_files/woqu.base.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/myzhanghu_files/common.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/myzhanghu_files/common.js(1).下载"></script>

<script type="text/javascript">
    var urlbase = "";
    var staticUrl = "";
</script>


<script type="text/javascript">
    $(function () {
        //重新设置存管状态
        renewSetDepositStatus();

        $("#logout").on('click', function () {
            $.ajax({
                type: 'post',
                url: urlbase + "/login/v2/logout",
                success: function (res) {
                    var config = document.createElement("div");
                    document.body.appendChild(config);
                    $(config).html(res.data);
                    setTimeout(function () {
                        window.location.href = urlbase + "/home/auth/login.html";
                    }, 300)

                }
            })
        });

    })

    function renewSetDepositStatus() {
        var url = urlbase + '/regs/renewSetDepositStatus';
        var status = '$!{user.depositStatusVo}';
        if (!status || status != 2) {
            $.ajax({
                url: url,
                type: 'POST',
                data: {
                    net4: Math.random()
                },
                success: function (data) {
                }
            });
        }
    }

</script>


<!--用户中心-->
<div class="layout clearfix" style="margin-top: 95px">
    <!--用户中心左侧-->


    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/myzhanghu_files/page.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/myzhanghu_files/center1.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/myzhanghu_files/center_common.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/myzhanghu_files/center_index.css">

    <style type="text/css">
        .userInfo img {
            width: 75px;
            height: 75px;
            border-radius: 50%;
        }

        .userInfo li {
            position: relative;

            display: inline-block;
            *display: inline;
            height: 28px;
            margin: 0 2px;
            width: 28px;
        }

        .userInfo .tip_info {
            text-align: left;
            z-index: 8;
            width: 148px;
            height: 42px;
            background-image: url("https://static4.weidai.com.cn/static/common/weiPc/img/center/tip_bg.png");
            background-repeat: no-repeat;
            position: absolute;
            white-space: nowrap;
            left: -22px;
            top: -40px;
            line-height: 32px;
            padding-left: 13px;
            color: #ca7456;
            display: none;
        }

        .userInfo .tip_info a {
            color: #0091ea;
            position: absolute;
            right: 12px;
        }
    </style>

    <!--用户中心左侧-->
    <div class="memberLeft" style="height: 900px;">
        <div class="userInfo">
            <img src="${pageContext.request.contextPath }/statics/myzhanghu_files/user-logo.png" id="headImg">

            <p>
                <span id="loginName">175*****120</span>
                <a href="index.jsp" class="yellow-span level level0"></a>
                <input type="hidden" id="hid_level" value="0">
            </p>

            <div class="icon">
                <ul>
                    <li>
                        <a title="存管认证" id="cunguan" class="icon_btn e unbind"
                           href="#"></a>

                        <div class="tip_info tl">您还未开通存管账户<a
                                href="#">开通</a></div>
                    </li>
                    <li>
                        <a title="实名认证" id="realname" class="icon_btn a unbind"
                           href="#"></a>

                        <div class="tip_info tl">您还未进行实名认证<a
                                href="#">管理</a></div>
                    </li>
                    <li>
                        <a title="银行卡认证" id="bankAuth" class="icon_btn b unbind"
                           href="#"></a>

                        <div class="tip_info tl">您还未绑定银行卡<a
                                href="#">管理</a></div>
                    </li>
                    <li>
                        <a title="手机认证" id="mobile" class="icon_btn c hasbind"
                           href="#"></a>

                        <div class="tip_info tl">您已绑定手机<a
                                href="#">管理</a></div>
                    </li>
                    <li>
                        <a title="支付密码" id="payPass" class="icon_btn d unbind"
                           href="#"></a>

                        <div class="tip_info tl">您还未设置交易密码<a
                                href="#">管理</a></div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="mNav" id="mNavId">
            <ul><a href="myzhanghu.jsp">
                <li><i class="iconfont"></i>账户总览</li>
            </a>
                <a href="myzhanghu1.jsp">
                    <li><i class="iconfont"></i>资金管理</li>
                </a>
                <a href="myzhanghu2.jsp">
                    <li><i class="iconfont"></i>出借记录</li>
                </a>
                <a href="myzhanghu3.jsp">
                    <li><i class="iconfont"></i>收款明细</li>
                </a>
                <a href="myzhanghu4.jsp">
                    <li><i class="iconfont"></i>银行卡</li>
                </a>
                <a href="myzhanghu5.jsp">
                    <li><i class="iconfont"></i>债权转让</li>
                </a>
                <a href="myzhanghu6.jsp">
                    <li class="cur"><i class="iconfont"></i>自动投标</li>
                </a>
                <a href="myzhanghu7.jsp">
                    <li><i class="iconfont"></i>个人资料</li>
                </a>
                <a href="myzhanghu8.jsp">
                    <li><i class="iconfont"></i>我的红包</li>
                </a>
                <a href="myzhanghu9.jsp">
                    <li><i class="iconfont"></i>邀请有礼</li>
                </a>
                <a href="myzhanghu10.jsp">
                    <li><i class="iconfont"></i>消息管理</li>
                </a>
            </ul>
        </div>
    </div>


    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/myzhanghu_files/woqu.base.js.下载"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/myzhanghu_files/center-interface.js.下载"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/myzhanghu_files/centerNav.js.下载"></script>
    <!--用户中心左侧 end-->
    <!--用户中心左侧 end-->
    <!--用户中心内容-->
    <div class="memberContent">
        <div class="auto-sale clearfix">
            <div class="statues">
                <h2>
                    自动投标 <span>当前开通自动投标人数39513人</span>
                </h2>

                <p class="grayDarkColor">
                    还在为抢不到标烦恼?自动投资优质短期稳定标的,傻瓜式理财,坐享收益!让资金不再闲置!
                </p>
            </div>
            <!-- <div class="zdBtn">
                <span>开</span>
                <span>关</span>
                <div class="bntW"></div>
            </div> -->
            <a href="#" class="blueColor fr">自动投标记录</a>
        </div>
        <!-- 这里的ul加上on-light类名，里面的内容就可以显示-->
        <ul class="auto-chose clearfix">
            <li class="fl">
                <dl>
                    <dt class="clearfix"><i class="iconfont"></i>
                        预约自动投标
                    <div class="zdBtn fr" id="autoBtn">
                        <span>开</span>
                        <span>关</span>

                        <div class="bntW"></div>
                    </div>
                    </dt>
                    <dd>自动预约标，比普通标利率高，但需要排队购买，不定时发放，
                        资金可能会有站岗情况。
                    </dd>
                </dl>
                <div class="clearfix"></div>
                <ul class="auto-intro clearfix">
                    <li>投标期限：<span>  <span style="font-size:12px">不限</span>
                         ----
                             <span style="font-size:12px">48个月</span>
                            						</span></li>
                    <li>
                        投标区间：
                            <span style="font-size:12px">
                                 500.00元 ----
                                不限                            </span>
                    </li>
                    <li>是否使用红包：<span style="font-size:12px"> 关</span></li>
                    <li>&nbsp;</li>
                </ul>
                <div class="fr chosed chosed-add blue">
                    <a href="#" class="blue">修改设置</a>
                </div>
                <div class="people-number clearfix">
                    <div class="fl not-open" style="font-size:12px">预约自动投标开启总人数<em class="blue not-open"
                                                                                   style="font-size:12px">30162</em>人
                    </div>
                    <div class="fr" style="font-size:12px">当前有效人数17966人<i class="hoverQuestion iconfont">
                        <div class="hoverText" style="display: none;">有效人数意为开启自动投标且账户余额大于0的用户数</div>
                    </i></div>


                </div>
            </li>
            <li class="fr">
                <dl>
                    <dt class="clearfix"><i class="iconfont"></i>懒人自动投标
                    <div class="zdBtn fr" id="lazyBtn">
                        <span>开</span>
                        <span>关</span>

                        <div class="bntW"></div>
                    </div>
                    </dt>
                    <dd>自动投标工具，资金不站岗，快速帮助用户自动投资优选智投，散标</dd>
                </dl>
                <div class="clearfix"></div>
                <ul class="auto-intro clearfix">
                    <li>投标期限：
                            <span style="font-size:12px">
                                                            不限
                                                            ----
                                                                    48个月
                                						    </span>
                    </li>
                    <li>投标的种类：<span style="font-size:12px">散标 优选智投
                              </span>
                    </li>
                    <li id="expect">预期利率收益：<span id="expect-year" style="font-size:12px">5.8% - 11.2%</span></li>
                    <li>账户保留余额：<span style="font-size:12px">0.00元</span></li>
                </ul>
                <div class="fr chosed chosed-add">
                    <a class="blue" href="#">修改设置</a>
                </div>
                <div class="people-number clearfix">
                    <div class="fl" style="font-size:12px">当前开通懒人自动投标人数<em class="blue not-open" style="font-size:12px">9351</em>人
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <!--用户中心内容 end-->
    <!--关闭自动投标提示-->
    <div class="alertbox" id="orderAuto">
        <div class="shadow">
        </div>
        <div class="alert close-auto">
            <p>
                您确定关闭预约自动投标吗？
            </p>

            <div class="chose-act">
                <a href="javascript:changeAppointment(false)" class="sure actived" id="order-sure">确定</a>
                <a href="#" class="unsure"
                   id="order-unsure">取消</a>
            </div>
        </div>
    </div>
    <!-- 开启预约自动投标确认弹框开始 -->
    <div class="alertbox" id="order-correct">
        <div class="shadow"></div>
        <div class="alert">
            <div class="content">
                <h1 class="auto-h1">开启预约自动标确认<i></i></h1>
                <ul class="item-ul" style="padding:25px 0;padding-left:147px;">
                    <li class="clearfix tal arrLi1">
                        <!-- 判断对象是否存在 -->
                        投标期限： <span>不限</span>
                        ----
                        <span>48</span>个月
                    </li>
                    <li class="clearfix tal arrLi2">
                        投标区间：
                        500.00元 ----
                        不限
                    </li>
                    <li class="clearfix tal arrLi4">
                        是否使用红包： 关                            <!-- 如果对象不存在 -->
                    </li>
                </ul>
                <div class="btn clearfix"><a href="javascript:changeAppointmentjudge(true)"
                                             class="button button-normal radius-sm payBtn order-pay"
                                             unvalid="yes">确定</a></div>
                <p class="alert-submit" id="mb40"><input type="checkbox" name="name" value="" checked="checked">
                    我已阅读并同意 <a href="#" class="blue"
                               target="_blank">《自动投标授权协议》</a><br>以及<a
                            href="#" class="blue" target="_blank">《存管自动投标授权协议》</a>
                </p>
            </div>
        </div>
    </div>
    <!-- 开启确认弹框结束-->
    <!-- 开启懒人投标确认弹框开始 -->
    <div class="alertbox" id="code-correct">
        <div class="shadow"></div>
        <div class="alert">
            <div class="content">
                <h1 class="auto-h1">开启懒人投标确认<i></i></h1>
                <ul class="item-ul">
                    <li class="clearfix">
                        <!-- 判断对象是否存在 -->
                        <div class="fl">
                            投标期限： 不限 ----48个月
                        </div>
                        <div class="fr">
                            投标的种类：散标 优选智投
                        </div>
                    </li>
                    <li class="clearfix">
                        <div class="fl">
                            预期利率：<span id="recive-expect"></span>
                        </div>
                        <div class="fr">
                            账户保留余额： 0元
                        </div>
                        <!-- 如果对象不存在 -->
                    </li>
                </ul>
                <div class="btn clearfix"><a href="javascript:changeLazyjudge(true)"
                                             class="button button-normal radius-sm payBtn lazy-pay" unvalid="yes">确定</a>
                </div>
                <p class="alert-submit" id="mbs40"><input type="checkbox" name="name" value="" checked="checked">
                    我已阅读并同意 <a href="#" class="blue"
                               target="_blank">《自动投标授权协议》</a>
                    <br>以及<a href="#" class="blue" target="_blank">《存管自动投标授权协议》</a>
                </p>
            </div>
        </div>
    </div>
    <!-- 开启确认弹框结束-->
    <!--关闭预约自动投标提示-->
    <div class="alertbox" id="lazyAuto">
        <div class="shadow">
        </div>
        <div class="alert close-auto">
            <p>
                您确定关闭预约自动投标吗？
            </p>

            <div class="chose-act">
                <a href="javascript:changeLazy(false)" class="sure actived" id="lazy-sure">确定</a>
                <a href="#" class="unsure"
                   id="lazy-unsure">取消</a>
            </div>
        </div>
    </div>

    <!-- 存管弹框 开始1-->
    <!-- 存管弹框 开始-->
    <div class="alertbox" id="cunguanTips">
        <div class="shadow"></div>
        <div class="alert cunguan">
            <div class="title font-black" id="tipTitle">
                存管信息提示 <i class="closebtn fr"></i>
            </div>
            <div class="content">
                <p class="logo">
                    <img src="${pageContext.request.contextPath }/statics/myzhanghu_files/deposiLogo.jpg" alt="">
                </p>

                <div id="tips1"><p class="font-16">自动投标功能需在开通存管账户后方可开启</p>

                    <p>微贷网联手厦门银行，开通银行资金存管账户，保证您的资金安全！</p></div>
                <p class="buttons">
                    <a href="javascript:;" class="button button-normal radius-sm" id="openNow">立即开通</a>
                </p>
            </div>
        </div>
    </div>
    <!-- 存管弹框 结束-->
    <!-- 存管开通提示 -->
    <div class="alertbox" id="cunguanResult">
        <div class="shadow"></div>
        <div class="alert cunguan">
            <div class="title font-black">
                存管信息提示 <i class="closebtn fr"></i>
            </div>
            <div class="content">
                <p class="logo">
                    <img src="${pageContext.request.contextPath }/statics/myzhanghu_files/deposiLogo.jpg" alt="">
                </p>

                <div id="tips2"><p>请您在新打开的页面中开通存管账户，开通之前请不要关闭此页面！</p></div>
                <p class="buttons">
                    <a href="javascript:;" class="button button-normal radius-sm" id="openSucc">开通成功</a>
                    <a href="index.jsp"
                       class="button button-special radius-sm" id="openFail">遇到问题</a>
                </p>
            </div>
        </div>
    </div>
    <!-- 存管开通结束 -->

    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/myzhanghu_files/public.js.下载"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/myzhanghu_files/alertbox.js.下载"></script>
    <script type="text/javascript">
        $(function () {
            $(".closebtn").click(function () {
                $(this).parents(".alertbox").hide();
                window.location.reload();
            });
        });


    </script>
    <!-- 存管弹框 结束-->

    <!--保存成功提示-->
    <div class="success">
        自动投标设置成功！
    </div>
    <!--用户中心内容 end-->
</div>


<script type="text/javascript" src="${pageContext.request.contextPath }/statics/myzhanghu_files/bid-interest.js.下载"></script>

<script>
    $(function () {
        mnav.activity(7);
        if ('false' == 'true') {
            $("#autoBtn").addClass("zdBntOk");
        }
        if ('false' == 'true') {
            $("#lazyBtn").addClass("zdBntOk");
        }

        $("#tips1").html("<p class='font-16'>自动投标功能需在开通存管账户后方可开启</p><p>微贷网联手厦门银行，开通银行资金存管账户，保证您的资金安全！</p>");

        $("#openNow").click(function () {
            $("#cunguanTips").hide();
            $("#cunguanResult").show();
            window.open('/deposit/toActiviteOrRegist');
        });

        if ('' == 'false') {
            showAlertBox('', "systemsAuto");
        }
    });
    var depositSwitch = '1';
    var depositStatus = '0';
    // 点击预约自动投标默认开关按钮显示内容
    $('#autoBtn').click(function () {
        //企业用户，港澳台用户，在没有开户的状态下，禁止预约自动投标
        var civilSubjectType = '1';
        var certType = '1';
        var depositStatusVo = '0';
        if (civilSubjectType == 2 || (civilSubjectType == 1 && certType != 1)) {
            if (!depositStatusVo || depositStatusVo != 2) {
                return false;
            }
        }

        if ($(this).hasClass('zdBntOk')) {
            $('#order-correct').hide();
            $("#orderAuto").show();
            $(this).removeClass("zdBntOk");
            $(this).parents("li").find(".not-open").html('预约自动标开启人数<em class=\'blue\'>9351</em>人');
        } else {
            if (!depositStatusValid()) {
                return false;
            }

            $(this).addClass("zdBntOk");
            $('#order-correct').show();
            $("#orderAuto").hide();
            $(this).parents("li").find(".not-open").html('预约自动标当前排名<em class=\'blue\'>30162/30162</em>');
        }
    })

    //点击存管弹框上面购买成功按钮
    $("#openSucc").click(function () {
        $("#cunguanResult").hide();
        window.location.reload();
    });

    //点击懒人投标默认开关按钮显示内容
    $('#lazyBtn').click(function () {
        //企业用户，港澳台用户，在没有开通存管的状态下，禁止开启懒人投标
        var civilSubjectType = '1';
        var certType = '1';
        var depositStatusVo = '0';
        if (civilSubjectType == 2 || (civilSubjectType == 1 && certType != 1)) {
            if (!depositStatusVo || depositStatusVo != 2) {
                return false;
            }
        }

        if ($(this).hasClass('zdBntOk')) {
            $('#code-correct').hide();
            $("#lazyAuto").show();
            $(this).removeClass("zdBntOk");
        } else {
            if (!depositStatusValid()) {
                return false;
            }

            $(this).addClass("zdBntOk");
            $('#code-correct').show();
            sendExpect();
            $("#lazyAuto").hide();
        }
    })

    //判断存管开关及用户实名信息、存管状态
    function depositStatusValid() {
        if (depositSwitch == '1') {
            if (depositStatus == '0' || depositStatus == '1') {
                //未实名、存管状态为未注册、未激活时，都弹出开通存管的引导框
                $("#cunguanTips").show();
                return false;
            } else if (depositStatus == '-1') {
                showAlertBox("获取用户存管信息失败");
            }
        }

        return true;
    }

    //点击懒人投标弹框关闭移出开关高亮状态
    $('#code-correct .auto-h1 i').click(function () {
        $('#lazyBtn').removeClass("zdBntOk");
        $('#code-correct').hide();
    })
    //点击预约自动投标弹框关闭移出开关高亮状态
    $('#order-correct .auto-h1 i').click(function () {
        $('#autoBtn').removeClass("zdBntOk");
        $('#code-correct').hide();
    })
    //保存用户上次选择的状态
    function choseState(b1, b2) {
        b1 == true ? $('.chosed').eq(0).addClass("chosed-add") : $('.chosed').eq(0).removeClass("chosed-add");
        b2 == true ? $('.chosed').eq(1).addClass("chosed-add") : $('.chosed').eq(1).removeClass("chosed-add");
        changeBtnTag();
    }


    // 点击懒人投标确定关闭按钮关闭
    $('#lazy-sure').click(function () {
        $('#lazyAuto').hide();
        $('#lazyBtn').removeClass("zdBntOk");
    })

    // 点击懒人投标取消按钮取消
    $('#lazy-unsure').click(function () {
        $('#lazyAuto').hide();
        $('#lazyBtn').addClass("zdBntOk");
    })

    // 点击预约自动投标确定关闭按钮关闭
    $('#order-sure').click(function () {
        $('#orderAuto').hide();
        $('#orderBtn').removeClass("zdBntOk");
    })

    // 点击预约自动投标取消按钮取消
    $('#order-unsure').click(function () {
        $('#orderAuto').hide();
        $('#autoBtn').addClass("zdBntOk");
    })

    //懒人投标保存开启返回当前页
    $('.lazy-pay,.order-pay').click(function () {
        if ($(this).attr("unvalid") === "yes") {
            $('.alertbox').fadeOut();
        }
        ;
        if ($(this).attr("unvalid") === "no") {
            $(this).href = "javascript:;";
        }
    })
    //鼠标移入显示问号解释
    $('.hoverQuestion').hover(function () {
        $('.hoverText').fadeIn();
    }, function () {
        $('.hoverText').fadeOut();
    })

    //接收预期利率
    function sendExpect() {
        var expectYear = $("#expect-year").text();
        $("#recive-expect").text(expectYear);
    }

    //计算预期利率
    writeRateDrt();

    /*
     * 获取标的期限的利息范围
     * return rateDuration
     */
    function getRateDuration() {
        var bidRate = new BidRate();
        var isCreditBid = '1';
        var sub = 0;
        var sup = 0;
        {
            sub = 0;
        }

        //如果保存的是0，则以1个月来计算
        if (sub == "0") {
            sub = null;
        }

        {
            sup = 48;
        }

        if (sup == "48" || sup == "0") {
            sup = null;
        }

        var subRate, supRate;


        subRate = bidRate.getRateByDrtAndCrdKind(sub, isCreditBid)
        supRate = bidRate.getRateByDrtAndCrdKind(sup, isCreditBid)
        return bidRate.compareRate(subRate, supRate);
    }
    /*
     * 根据 投标期限及标的类型，填写年化收益范围
     */
    function writeRateDrt() {
        var rateDrt = getRateDuration();
        $('#expect span').html(rateDrt.minRate + "% - " + rateDrt.maxRate + "%");
    }


    function changeAppointmentjudge(status) {
        var judge = $('.payBtn').attr('unvalid');
        if (judge == 'yes') {
            changeAppointment(status);
        } else {
            showAlertBox('请先同意协议');
        }
    }

    function changeLazyjudge(status) {
        var judge = $('.payBtn').attr('unvalid');
        if (judge == 'yes') {
            changeLazy(status);
        } else {
            showAlertBox('请先同意协议');
        }
    }


    //修改预约投标状态
    function changeAppointment(status) {
        $.ajax({
            url: '/account/tender/changeAppointmentStatus',
            data: {
                status: status
            },
            type: 'post',
            dataType: 'json',
            success: function (result) {
                if (result.success) {
                    window.location.href = '/account/tender/autoTenderIndex';
                } else {
                    showAlertBox(result.message, "systemsAuto");
                    //不改变状态
                    if (status) {
                        $("#autoBtn").removeClass("zdBntOk");
                    } else {
                        $("#autoBtn").addClass("zdBntOk");
                    }
                }
            }
        });
    }

    //关闭懒人投标
    function changeLazy(status) {
        $.ajax({
            url: '/account/tender/changeLazyStatus',
            data: {
                status: status
            },
            type: 'post',
            dataType: 'json',
            success: function (result) {
                if (result.success) {
                    window.location.href = '/account/tender/autoTenderIndex';
                } else {
                    showAlertBox(result.message, "systemsAuto");
                    //不改变状态
                    if (status) {
                        $("#lazyBtn").removeClass("zdBntOk");
                    } else {
                        $("#lazyBtn").addClass("zdBntOk");
                    }
                }
            }
        });
    }

</script>


<!-- 存管开通提示1 -->
<!-- 存管弹框 开始-->
<div class="alertbox" id="cunguanTips">
    <div class="shadow"></div>
    <div class="alert cunguan">
        <div class="title font-black" id="tipTitle">
            存管信息提示 <i class="closebtn fr"></i>
        </div>
        <div class="content">
            <p class="logo">
                <img src="${pageContext.request.contextPath }/statics/myzhanghu_files/deposiLogo.jpg" alt="">
            </p>

            <div id="tips1"><p>微贷网联手厦门银行，开通银行资金存管账户，保证您的资金安全！</p></div>
            <p class="buttons">
                <a href="javascript:;" class="button button-normal radius-sm" id="openNow">立即开通</a>
            </p>
        </div>
    </div>
</div>
<!-- 存管弹框 结束-->
<!-- 存管开通提示 -->
<div class="alertbox" id="cunguanResult">
    <div class="shadow"></div>
    <div class="alert cunguan">
        <div class="title font-black">
            存管信息提示 <i class="closebtn fr"></i>
        </div>
        <div class="content">
            <p class="logo">
                <img src="${pageContext.request.contextPath }/statics/myzhanghu_files/deposiLogo.jpg" alt="">
            </p>

            <div id="tips2"><p>请您在新打开的页面中开通存管账户，开通之前请不要关闭此页面！</p></div>
            <p class="buttons">
                <a href="javascript:;" class="button button-normal radius-sm" id="openSucc">开通成功</a>
                <a href="index.jsp" class="button button-special radius-sm"
                   id="openFail">遇到问题</a>
            </p>
        </div>
    </div>
</div>
<!-- 存管开通结束 -->

<script type="text/javascript" src="${pageContext.request.contextPath }/statics/myzhanghu_files/public.js.下载"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/myzhanghu_files/alertbox.js.下载"></script>
<script type="text/javascript">
    $(function () {
        $(".closebtn").click(function () {
            $(this).parents(".alertbox").hide();
            window.location.reload();
        });
    });


</script>
<!-- 存管开通结束 -->
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/myzhanghu_files/newExpress.js.下载"></script>
<script src="${pageContext.request.contextPath }/statics/myzhanghu_files/easemob.js.下载" async="async"></script>
<!-- 右侧浮动窗口 end-->
<div class="disNone">
    <script type="text/javascript">
        var server_url = '';
        var server_login_user = 'wd14040589';
        var _UserId = "14040589";
        var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cspan id='cnzz_stat_icon_1256511929'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1256511929' type='text/javascript'%3E%3C/script%3E"));</script>
    <span id="cnzz_stat_icon_1256511929"><a href="http://www.cnzz.com/stat/website.php?web_id=1256511929"
                                            target="_blank" title="站长统计">站长统计</a></span>
    <script src="${pageContext.request.contextPath }/statics/myzhanghu_files/z_stat.php" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath }/statics/myzhanghu_files/core.php" charset="utf-8" type="text/javascript"></script>
</div>
<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/myzhanghu_files/footer.css" media="screen" title="no title" charset="utf-8">


<script type="text/javascript">
    var _vds = _vds || [];
    window._vds = _vds;
    (function () {
        _vds.push(['setAccountId', '9e499063616a9fe6']);
        (function () {
            var vds = document.createElement('script');
            vds.type = 'text/javascript';
            vds.async = true;
            vds.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'dn-growing.qbox.me/vds.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(vds, s);
        })();
    })();

    // 底部的关注我们的微信图片淡入淡出
    $(".qrcode ul li a").hover(function () {
        $(this).parents("li").siblings().find("img").animate({"height": "0px"}, 300);
        $(this).siblings("img").animate({"height": "90px"}, 300);
    });
</script>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/myzhanghu_files/stat.js.下载" crossorigin="anonymous"></script>
<script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?6f8af5890dcd62a8bd38a1e06fa72039";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();

    //点击存管弹框上面购买成功按钮
    $("#openSucc").click(function () {
        $("#cunguanResult").hide();
        window.location.reload();
    });

    function openDeposit() {
        //企业和港澳台禁止开启存管
        var civilSubjectType = '1';
        var certType = '1';
        var depositStatusVo = '0';
        if (civilSubjectType == 2 || (civilSubjectType == 1 && certType != 1)) {
            if (!depositStatusVo || depositStatusVo != 2) {
                return false;
            }
        }

        $("#cunguanResult").show();
        window.open('/deposit/toActiviteOrRegist');
    }


</script>

<!-- 我的兄弟叫顺溜之底部 -->
<div class="footer">
    <div class="footer-a1">
        <div class="footer-a2">
            <div class="footer-left">
                <dl>
                    <dt>关于微贷</dt>
                    <dd>
                        <a href="">团队介绍</a>
                    </dd>
                    <dd>
                        <a href="${pageContext.request.contextPath }/jsp/ditu.jsp">联系我们</a>
                    </dd>
                    <dd>
                        <a href="">人才招聘</a>
                    </dd>
                </dl>
            </div>
            <div class="footer-left">
                <dl>
                    <dt>安全保障</dt>
                    <dd>
                        <a href="">实体经营</a>
                    </dd>
                    <dd>
                        <a href="">阿里云金融</a>
                    </dd>
                    <dd>
                        <a href="">黑名单披露</a>
                    </dd>
                </dl>
            </div>
            <div class="footer-left">
                <dl>
                    <dt>我要出借</dt>
                    <dd>
                        <a href="">常见问题</a>
                    </dd>
                    <dd>
                        <a href="">收费标准</a>
                    </dd>
                    <dd>
                        <a href="">平台协议</a>
                    </dd>
                </dl>
            </div>
            <div class="footer-left">
                <dl>
                    <dt>客服专线</dt>
                    <dd>
                        <strong>400-028-8888</strong>
                    </dd>
                    <dd>
                        <em>(客服服务时间:9:00-21:00)</em>
                    </dd>
                </dl>
            </div>
            <div class="footer-right">
                <dl>
                    <dt>关注我们</dt>
                    <dd>
                        <span></span>

                        <p>微贷网官方订阅号</p>
                    </dd>
                </dl>
            </div>
        </div>
        <div class="footer-a3">
            <p>Copyright ©2011-2018 微贷(杭州)金融信息服务有限公司 版权所有</p>

            <p>
                <em>
                    <img src="${pageContext.request.contextPath }/statics/images/背景(17).png" alt="">
                </em> 浙公网安备33010402000327号 浙ICP备15029561号-4 ICP经营许可证编号：浙B2-20160682 市场有风险 出借需谨慎
            </p>

            <p style="margin-top: 8px">
                <a href="">
                    <img src="${pageContext.request.contextPath }/statics/images/foot11x1VRUH.png" alt="">
                </a>
                <a href="">
                    <img src="${pageContext.request.contextPath }/statics/images/foot21x3u1FZ.png" alt="">
                </a>
                <a href="">
                    <img src="${pageContext.request.contextPath }/statics/images/背景(18).png" alt="">
                </a>
                <a href="">
                    <img src="${pageContext.request.contextPath }/statics/images/foot41x2I6q4.png" alt="">
                </a>
            </p>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath }/statics/myzhanghu_files/index-shunliu.js"></script>
</body>
</html>