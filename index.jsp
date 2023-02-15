<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@page import="java.io.File" %>
<%@page import="java.io.PrintStream" %>
<%@page import="java.io.FileOutputStream" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.util.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>AllenMusicSite</title>
    <link rel="shortcut icon" href="imag/favicon.ico">
    <style type="text/css">
        @import url("css样式/rain.css");
        @import url("css样式/login.css");
    </style>
</head>

<body>

<div class="contentLogin">
    <!-- 放这里下雨 -->
    <%-- 登录界面 --%>
    <div class="container">
        <div class="form-box">
            <!-- 注册 -->
            <%-- <form method="post" name="signform" id="signform" action="register" onSubmit="return logisempty()"> --%>
             <form method="post" name="signform" id="signform"  onSubmit="return logisempty()">
                <div class="register-box hidden">
                <h1>注册功能暂时关闭</h1>
                    <h1>Register</h1>
                    <input type="text" name="username" placeholder="用户名">
                    <input type="email" name="email" placeholder="邮箱">
                    <input type="password" name="password" placeholder="密码">
                    <input type="password" name="password2" placeholder="确认密码">
                    <input type="text" name="introduction">
                    <button type="submit">注册</button>
                </div>
                <script typed="text/javascript" src="jsfile/注册判空.js"></script>
                <%  //登录读取文件
        String username=request.getParameter("username");
		String password=request.getParameter("password");
    String pass=username+password;
    int successfind = 0;
		if(username!=null)
		{
			 if(password!=null)
		{ 
		String filename=this.getServletContext().getRealPath("/")+"Loginpass"+File.separator+"password.txt";
    
      Scanner scanner = new Scanner(new FileInputStream(filename));
      while(scanner.hasNext()){
         String judge=scanner.nextLine();
         if(judge.equals(pass)) successfind=1;
      }
      scanner.close();
      if(successfind==1) 
      { %>
      <jsp:forward page="音乐红茶馆.html" />
      <%
      }
      else
      { %>
      
       <script> alert("账户信息错误");</script>
       <%
      }
         
   }
  }
    %>
                <%-- 注册逻辑 --%>
                      <%-- <%
      username=request.getParameter("username");
		 password=request.getParameter("password");
		if(username!=null)
		{
			 if(password!=null)
		{ 
		String filename=this.getServletContext().getRealPath("/")+"Loginpass"+File.separator+"password.txt";
		PrintStream ps = null;
      	ps  = new PrintStream( new FileOutputStream(filename,true));
      	ps.println(username+password);
      	ps.close();
        %>
<jsp:forward page="音乐红茶馆.html"/>
        <%
		}
		}    
      %> --%>
            </form>
            <!-- 登录 -->
            <form method="post" name="loginform" id="loginform" onSubmit="return isempty()">
                <div class="login-box">
                <p> 测试账号 test 123</p>
                    <h1>Login</h1>
                    <input type="text" name="username" placeholder="用户名">
                    <input type="password" name="password" placeholder="密码">
                    <button type="submit">登录</button>
                </div>
                <script typed="text/javascript" src="jsfile/登录判空.js"></script>
            </form>
            
        </div>
        <div class="con-box left">
            <h2><span>欢迎注册</span></h2>
            <p>快来点击你的专属<span>音乐</span>吧</p>
            <img src="imag/图标.jpg" alt="">
            <p>已有账号</p>
            <button id="login">去登录</button>
        </div>
        <div class="con-box right">
            <h2>欢迎来到<span>音乐红茶馆</span></h2>
            <p>快来点击你的专属<span>音乐</span>吧</p>
            <img src="imag/图标.jpg" alt="">
            <p>没有账号？</p>
            <button id="register">去注册</button>

            <% if(request.getAttribute("checkpassword")!=null) {%>
            <h2><%=request.getAttribute("checkpassword")%></h2>
            <%
                }
            %>
        </div>
    </div>
    <script type="text/javascript" src="jsfile/滑动.js"></script>
    <div id="rainBox"></div>
</div>
<script type="text/javascript" src="jsfile/rain.js"></script>
</body>
</html>