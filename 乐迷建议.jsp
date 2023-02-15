
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@page import="java.io.File"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.FileOutputStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
@import url("css样式/top.css");

</style>
</head>

<body class="downbody">
<table width="936" height="342" border="0" cellspacing="10" class="topfont">
  <tr>
    <td width="53" rowspan="5"><img src="imag/乐迷建议.jpeg" width="188" height="213" /></td>
    <td width="43">&nbsp;</td>
    <td width="673" rowspan="5">
    <form id="myform" name="myform" method="post" onSubmit="return isempty()">
         <p>web课的一个小作业，纯jsp页面实现，建议存放到服务器当中
</p>
      <p>写下您的宝贵意见
</p>
      <p>
        <label for="textfield"></label>
        <textarea name="advise" id="advice"></textarea>
      </p>
      <p>写下您的姓名</p>
      <p>
        <textarea name="pname" id="pname"></textarea>
      </p>
      <p>
        <input type="submit" name="button" id="button" value="提交" />
      </p>
    </form>
    <script>
  function isempty() {
       if(myform.advise.value=="")
        {
            alert("建议不应该为空");
            myform.advise.focus();    
            return false;
        }else if(myform.pname.value=="")
		{
			alert("姓名不应该为空");
			myform.pname.focus();
			return false;
		}
 }
</script>
    </td>
    <a class='topfont'>
    <% 
        String text=request.getParameter("advise");
		String name=request.getParameter("pname");
		if(text!=null)
		{
			 if(name!=null)
		{ 
		String filename=this.getServletContext().getRealPath("/")+"userAdvise"+File.separator+name+".txt";
		File file = new File(filename);
    out.println("建议已经成功保存到云端");
		if(!file.getParentFile().exists()){
          file.getParentFile().mkdir();//如果父文件夹不存在则创建文件夹
      }
		PrintStream ps = null;
      	ps = new PrintStream(new FileOutputStream(file));
      	ps.println(text);
      	ps.close();
		}
		}    
    %>
    </a>
    
    <td width="42">&nbsp;</td>
    <td width="45">&nbsp;</td>
  </tr>
  <tr>
    <td height="43">&nbsp;</td>
    <td height="43">&nbsp;</td>
    <td height="43">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td width="53" height="53">&nbsp;</td>
    <td height="53">&nbsp;</td>
    <td height="53">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td height="53">&nbsp;</td>
    <td height="53">&nbsp;</td>
    <td height="53">&nbsp;</td>
    <td height="53">&nbsp;</td>
  </tr>
  <tr>
    <td><a href="首页.html"><img src="imag/返回.png" alt="" width="100" height="100" /></a></td>
    <td height="53">&nbsp;</td>
    <td height="53"></td>
    <td height="53">&nbsp;</td>
    <td height="53">&nbsp;</td>
  </tr>
  <tr>
    <td width="53">&nbsp;</td>
    <td height="53">&nbsp;</td>
    <td height="53">&nbsp;</td>
    <td height="53">&nbsp;</td>
    <td height="53">&nbsp;</td>
  </tr>
</table>
</body>
</html>
