
function logisempty() {
  alert("注册功能暂记关闭")
  return false;
  if (signform.username.value == "") {
    alert("输入账号哦");
    signform.username.focus();
    return false;
  } else if (signform.password.value == "") {
    alert("密码不为空");
    signform.password.focus();
    return false;
  }else if(signform.password2.value==""){
    alert("请确认密码");
    signform.password2.focus();
    return false;
  }else if(signform.email.value=="") {
    alert("请输入邮箱");
    signform.email.focus();
    return false;
  }
}