











var passwordDom = document.getElementById('password'); //获取设置密码dom元素；
var cofirmDom = document.getElementById('cofirm'); //获取确认密码dom元素；
var completeDom = document.getElementById("complete"); //获取完成dom元素；
var passValue = passwordDom.value; //获取设置密码dom元素的值；
var confirmValue = cofirmDom.value; //获取确认密码dom元素的值；
var verify = document.getElementById('verify'); //获取设置密码dom元素；
var verify2 = document.getElementById('verify2'); //获取设置密码dom元素；
function passErron() {
  var passValue = passwordDom.value; //获取设置密码dom元素的值；
  var confirmValue = cofirmDom.value; //获取确认密码dom元素的值；
  //这里表示错误的处理？也就是说错误才进入、？
  if (!passValue) {
    verify.style.display = 'block';
    verify.innerHTML = '<i></i>请输入登录密码';
    return false;
  } else if (passValue.length < 6 || passValue.length > 20) {
    verify.style.display = 'block';
    verify.setAttribute('class', "erron6 pro-message ")
    verify.innerHTML = '<i></i>请输入6~20位登录密码';
    return false;
  } else {
    verify.style.display = 'none';
    return true;
  }
}

//光标事件
$("#uPassword").on('blur', passErron);

function confirmErron() {
  var passValue = uPassword.value; //获取设置密码dom元素的值；
  var confirmValue = cofirmDom.value; //获取确认密码dom元素的值；
  if (confirmValue.length < 1) {
    verify2.style.display = 'block';
    verify2.innerHTML = '<i></i>请重复输入登录密码';
    return false;
  } else if (passValue !== confirmValue) {
    verify2.style.display = 'block';
    verify2.setAttribute('class', "erron5 pro-message ");
    verify2.innerHTML = '<i></i>登录密码两次输入不一致';
    return false;
  } else {
    verify2.style.display = 'none';
    return true;
  }
}
$("#cofirm").on('blur', confirmErron)

completeDom.onclick = function () {
  var confirmValue = encode(cofirmDom.value);
  var a = passErron();
  var b = confirmErron();
  if (a && b) {
    $.ajax({
      url: "/users/modify2.html",
      type:"post",
      data: {
        mobile: $('#mobile').html(),
        newPassword: confirmValue,
        validCode: $('#validCode').html(),
        idCardNo: $("#idCardNo").html()
      },
      success: function (result) {
        if (result.success) {
          window.location.href = "/getBackPasswd/resetPasswdSuccess.html";
        } else {
          alert("重置登录密码失败");
        }
      },
      error: function () {
        alert("重置密码出错")
      }

    })

  }
}