<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page import="java.io.File"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.*"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>音乐搜索</title>
<style type="text/css">
@import url("css样式/top.css");

</style>
</head>
 <%
 //防止中文乱码
 request.setCharacterEncoding("utf-8");
     String name=request.getParameter("musicname");
		if(name!=null)
    {
      String filename=this.getServletContext().getRealPath("/")+"musicsearch"+File.separator+"search.txt";
      Scanner in=new Scanner(new FileInputStream(filename),"utf-8");
      int successfind=0;
	  String judge;
      while(in.hasNext())
      {
         judge = in.nextLine();
        // 用于搜索出错调试 out.println(judge+" "+name);
        if(judge.indexOf(name)!=-1) 
        {
			successfind=1;			
			if(judge.substring(judge.length()-3,judge.length()).equals("mp3"))
			{
				%>
			 <p class="topfont">"<%=judge.substring(0,judge.length()-4)%>"音乐成功找到</p>
        <audio src="music/<%=judge%>" controls="controls"   preload id="music">
</audio>
 <%
			}else 
			{
				%>
				<br>
<br>
<br>
<a class="topfont">"<%=judge.substring(0,judge.length()-4)%>"mv成功找到</a>
<br>

      <video width="210" height="210" controls="controls" x5-video-player-type="h5-page">
      <source src="mv/<%=judge%>" type="video/mp4">
      </video>
				<%
			}
        } 
      }
      if(successfind==1) {
      }
      else {
        %>
        <script> 
        alert("没有找到该音乐信息");
        </script>
        <%
      }
    }
 
 %>
<body class="downbody">
</body>
</html>