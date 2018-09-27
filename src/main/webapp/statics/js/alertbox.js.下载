$(function(){
  // 弹出按钮关闭
  $(".closebtn").click(function(){
    $(".alertbox").hide();
    $('#bank-type').hide();
  });
  // 实名认证验证
  $("input[name='truename']").blur(function(){
    var name=$.trim($("input[name='truename']").val());
    if(!name){
      $(".error").html('<i class="onError"></i>姓名不能为空');
    }else{
      $(".error").empty();
    }
  });
  $("input[name='id']").blur(function(){
    var id=$.trim($("input[name='id']").val());
    if(!id){
      $(".error").html('<i class="onError"></i>身份证号不能为空');
    }else{
      if(!woqu.checkIdcard(id)){
        $(".error").html('<i class="onError"></i>您的身份证号码输入不正确');
      }else{
        $(".error").empty();
      }
    }
  });
  // 登录弹框验证
$("#User_name").blur(function(){
  var nameVal=$("#User_name").val();
  if(!nameVal){
    $(".error").html('<i class="onError"></i>手机号码或者用户名不能为空');
  }else{
    $(".error").empty();
  }
});
$("#User_password").blur(function(){
  var passwordVal=$("#User_password").val();
  if(!passwordVal){
    $(".error").html('<i class="onError"></i>密码不能为空');
  }else{
    var passwordreg=/^([0-9a-zA-Z]{6,20})$/;
    if(!passwordreg.test(passwordVal)){
        $(".error").html('<i class="onError"></i>密码的格式或长度不正确');
    }
  }
});

  $('#login-form').submit(function(){
  	    var nameVal=$("#User_name").val(),
  			passwordVal=$("#User_password").val();
  		 if(!nameVal)
  		 {
         $(".error").html('<i class="onError"></i>用户名不能为空');
  			 return false;
  		 }
  		 else if(!passwordVal){
           $(".error").html('<i class="onError"></i>密码不能为空');
  			 return false;
  		 }
  		 else
  		 {
         $(".error").html('<i class="onError"></i>用户名或密码不匹配');

  			 return false;
  		 }
  })

// 不同按钮点击后方法不同的实现
$("button:contains('重新认证')").click(function(){
  $(this).parents(".alert").hide();
  $("#nameid").show();
});

$("input[name='tel']").blur(function(){
  var tel=$.trim($("input[name='tel']").val());
  if(!tel){
    $(".error").html('<i class="onError"></i>手机号码不能为空');
  }else{
    var telreg = /^(13|15|18|14|17)[0-9]{9}$/;
    if(!telreg.test(tel)){
        $(".error").html('<i class="onError"></i>您的手机号码格式不正确');
    }else{
        $(".error").empty();
    }

  }
});
$("input[name='mesg']").blur(function(){
  var tel=$.trim($("input[name='mesg']").val());
  if(!tel){
    $(".error").html('<i class="onError"></i>验证码不能为空');
  }else{
    $(".error").empty();
  }
});
$(".getcodebtn").click(function(){
  public.downTime(".getcodebtn",60)
});
});



//buy-info-sure转让标立即购买弹出框确定购买点击时候的判断
function setCheckBoxState(){
  if($('.table-cons p input').prop("checked")===true){
  // if($('.table-cons p input')[0].checked===true){
    $('.sure-btn button').attr('can','yes');
    $('.sure-btn button').removeClass('button-disabled')
  }else{
    $('.sure-btn button').addClass('button-disabled')
    $('.sure-btn button').attr('can','no');
  }
}

setCheckBoxState();
//检查同意协议按钮置灰确定保存按钮
function setInputChecked(){
    $('.alert-submit input').click(function(){
      if($(this).prop("checked")===true){
        $('.payBtn').attr('unvalid','yes');
      }else{
      $('.payBtn').attr('unvalid','no');
    }
  })
}
setInputChecked();
//关闭弹框
$('.auto-h1 i').click(function(){
  $('#code-correct').fadeOut();
  $('#order-correct').fadeOut();
})

$('.table-cons p input').click(function(){
  setCheckBoxState();
})

$('.sure-btn button').click(function(){
  if($(this).attr('can')=='yes'){
    window.location='http://www.baidu.com'
  }
})
//下拉框优化
$(".input-select-selfdefine").click(function(){
    $(this).toggleClass('action');
  });

//预约弹框内容取值
function alertCont(id){//#id
  var arr = [];
  $(id+' li').each(function(){
    var text = $(this).find('span').text();
    arr.push(text);
  })

  var alertLi ='<li class="clearfix">'+
                '<div class="fl">'+
                '  投标期限： '+arr[0]+
                '</div>'+
                '<div class="fr">'+
                  '投标下限：'+arr[1]+
                '</div>'+
              '</li>'+
              '<li class="clearfix">'+
                '<div class="fl">'+
                '自动清零：'+arr[2]+
                '</div>'+
                '<div class="fr">'+
                  '是否使用红包：'+arr[3]+
                '</div>'+
              '</li>';

  $('.item-uls').empty().append($(alertLi));
}
//懒人弹框取值
function alertConts(id){//#id
  var arr = [];
  $(id+' li').each(function(){
    var text = $(this).find('span').text();
    arr.push(text);
  })

  var alertLi ='<li class="clearfix">'+
    '<div class="fl">'+
      '投标期限：'+arr[0]+
    '</div>'+
    '<div class="fr">'+
      '投标下限：'+arr[1]+
    '</div>'+
  '</li>'+
  '<li class="clearfix">'+
    '<div class="fl">'+
    '预期年化收益率：'+arr[2]+
    '</div>'+
    '<div class="fr">'+
      '账户保留余额：'+arr[3]+
    '</div>'+
  '</li>';

  $('.item-ul').empty().append($(alertLi));
}
