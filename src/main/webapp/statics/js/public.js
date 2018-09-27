(function(public) {
    //验证码倒计时
    public.downTime = function(selector,time) {
        var time = time;
        var a = setInterval(function() {
            if (time > 1) {
                time--;
                $(selector).removeClass("button-normal").addClass("button-disabled").attr("disabled", "disabled");
                $(selector).text("重新获取(" + time + ")");
            } else {
                $(selector).removeClass("button-disabled").addClass("button-normal").removeAttr("disabled");
                $(selector).text("重新获取");
                clearInterval(a);
            }
        }, 1000);
    }

    //金钱格式化: xx,xxx,xxx.xx
    public.formatMoney = function(selector) {
        $(selector).each(function() {
            var beforePoint = '',
                afterPoint = '',
                newArr = [];

            var text = $(this).text();

            if (text.indexOf('.') != -1) {
                var text = parseFloat(text).toFixed(2) + '';
                var arr = text.split('.');
                beforePoint = arr[0];
                afterPoint = '.' + arr[1];
            } else {
                beforePoint = text;
            }

            var specialArr = beforePoint.split('');
            specialArr.reverse();
            var len = specialArr.length;
            for (var i = 1; i <= len; i++) {
                newArr.push(specialArr[i-1]);
                if (i % 3 == 0 && i != 0 && i != len) {
                    newArr.push(',');
                }
            }
            beforePoint = newArr.reverse();
            beforePoint = beforePoint.join('');

            console.info(beforePoint + afterPoint);
            $(this).text(beforePoint + afterPoint);
        })
    }

    // 定时标倒计时间效果;参数time为距离开开标的时间，单位为秒
    public.orderTime=function(time){
        var downTime=setInterval(function(){
            time--;
            var h = parseInt(time/3600);
            var m = parseInt(time%3600/60);
            var s = parseInt(time%3600%60);
            $("button").text(h+"小时"+m+"分钟"+s+"秒后抢购");
        },1000)
    }

}(window.public = window.public || {}))
