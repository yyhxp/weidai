/**
 * Created by panjunlin on 2016/10/24 0024.
 */
$(window).scroll(function(){
    if($(window).scrollTop()>0){
        $("#floatBtn ul li.top").show();
        $("#floatBtn ul li.feedback").css("bottom","35px");
    }
    if($(window).scrollTop()==0){
        $("#floatBtn ul li.feedback").css("bottom","0px")
        $("#floatBtn ul li.top").hide();
    }
})
$("#floatBtn ul li").mouseenter(function(){
    $(this).children(".what").show().animate({"width":"100px","left":"-103px"},120);
    $(this).siblings().children(".what").hide();
})
$("#floatBtn ul li.top").mouseenter(function(){
    $(this).children(".what").show().animate({"width":"74px","left":"-70px"},120);
    $(this).siblings().children(".what").hide();
})
$("#floatBtn ul li").mouseleave(function(){
    $(this).children(".what").animate({"width":"0","left":"0"},120).hide();
})
$("#floatBtn ul").on("click","li.top",function(){
    $('html,body').animate({"scrollTop":0},120);
})
