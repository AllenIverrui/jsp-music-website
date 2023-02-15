<%@ page language="java" contentType="text/html; charset=utf-8" 
pageEncoding="utf-8"%>
<%@page import="java.io.File"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.FileOutputStream"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<style type="text/css">
@import url("css样式/top.css");
</style>
<head>
</head>
<body class="downbody">
<body>
 <div class="content">
   
      <%
     String username=request.getParameter("username");
		String password=request.getParameter("password");
		if(username!=null)
		{
			 if(password!=null)
		{ 
		String filename=this.getServletContext().getRealPath("/")+"Loginpass"+File.separator+"password.txt";
		PrintStream ps = null;
      	ps  = new PrintStream( new FileOutputStream(filename,true));
      	ps.println('\n'+username+password);
      	ps.close();
        %>
<jsp:forward page="音乐红茶馆.html"/>
        <%
		}
		}    
      %>
</body>
