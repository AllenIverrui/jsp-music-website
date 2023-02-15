
function isempty() {
    if(loginform.username.value=="")
     {
         alert("账号不为空");
         loginform.username.focus();    
         return false;
     }else if(loginform.password.value=="")
 {
   alert("密码不为空");
   loginform.password.focus();
   return false;
 }
}