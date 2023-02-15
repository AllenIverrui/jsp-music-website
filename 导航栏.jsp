
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="java.io.File"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.*"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
@import url("css样式/top.css");

body {
	background: url('imag/back2.jpeg') center center no-repeat;
  background-size: cover;
	background-repeat: repeat-x;
	margin-left: 100px;
}
</style>
</head>
<body style="overflow-y: hidden">
<table width="1379" height="210" border="0" cellspacing="20">
  <tr class="topfont">
    <th width="145" nowrap="nowrap" scope="col">
    背景音乐<button onclick="bf(1);">
      <img src='music/imag/播放.png' width="40" height="40" />
      <button>
      <button onClick="bf(2);"> <img src='music/imag/暂停.png' alt="" width="40" height="40" /></button>
    <script>
function bf(type){
	var audio = document.getElementById('bg');
	if(audio.paused){
		if(type!=2)
			audio.play();
	}else {
		if(type!=1)
		audio.pause();
	}
}
      </script></th>
    <th width="145" nowrap="nowrap" scope="col"><img src="imag/图标.jpg" alt="" width="100" height="100" /></th>
    <th width="143" nowrap="nowrap" scope="col" ><a href="首页.html" target="mainFrame" class="topfont">首页 </a></th>
    <th width="147" nowrap="nowrap" scope="col"><a href="音乐主题.html" target="mainFrame" class="topfont">音乐主题</a></th>
    <th width="147" nowrap="nowrap" scope="col"><a href="音乐品鉴.html" target="mainFrame" class="topfont">音乐品鉴</a></th>
    <th width="147" nowrap="nowrap" scope="col"><a href="乐迷建议.jsp" target="mainFrame" class="topfont">乐迷建议</a></th>
    <th width="147" nowrap="nowrap" scope="col"><a href="http://alleniverrui.top" target="_black" class="topfont">作者主页</a></th>
    <th width="331" nowrap="nowrap" scope="col">
    <form id="form1" name="form1" method="post" action="音乐搜索.jsp" target="mainFrame" onSubmit="return isempty()">
      <label>
        <br>
        <img src="imag/搜索.png" alt="" width="25" height="25" />
        <input  placeholder ="请输入音乐名" name="musicname" type="text" id="musicname" value="">
        </label>
      <input class="按钮" type="submit" name="search" id="search" value="搜索">
    </form></th>
   <script>
   function isempty()
   {
     if(form1.musicname.value=="")
     
       {
           alert("输入不应该为空");
           form1.musicname.focus();    
           return false;
       }
   }
   </script>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><audio src="music/问情.mp3"  preload id="bg">
</audio></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<p >&nbsp;</p>
<p >&nbsp;</p>
</body>
</html>
