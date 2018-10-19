<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018\10\16 0016
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<html xmlns:wb="http://open.weibo.com/wb">
<head>
    <meta http-equiv="x-ua-compatible" content="ie=7" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>会员登录页 - jeegou开发站- Powered by JSPGOU</title>
    <link href="css/index.css" type="text/css" rel="stylesheet" />
    <link href="css/member.css" type="text/css" rel="stylesheet" />
    <link href="css/login.css" type="text/css" rel="stylesheet" />
    <script src="js/jquery.js" type="text/javascript"></script>
</head>

<body style="background:#fff;">
<div class="Header">
    <div class="ctr pr">
        <a href="#" title="返回单店首页">
            <img src="picture/logo.jpg" width="158" height="58" class="Logo" />
        </a>
    </div>
</div>

<div style="width:1000px; margin:auto auto 30px auto; overflow:hidden;">
    <img src="picture/login_pic.jpg" class="fl" />
    <div class="fr">
        <form id="jvForm" action="/toindex" method="post">
            <div style="line-height:30px;">

                <input type="hidden" name="returnUrl" value="/"/>
            </div>

            <div style="border:2px solid #e7e7e7; width:390px; height:390px; margin-top:30px;">
                <table width="335" border="0" align="center" cellpadding="2" cellspacing="0" style="margin:auto;">
                    <tr>
                        <td height="70">
                            <div class="fl" style="font-size:18px; color:#484848; font-family:微软雅黑;">账户登录</div>
                            <a href="toregisteruser" style="color:#cf1e1e; font-size:14px;" class="fr">免费注册</a>
                        </td>
                    </tr>
                    <tr>
                        <td height="75" >
                            <input type="text" name="username" id="username" class="loginInput"  required="true"  placeholder="用户名" />
                        </td>
                    </tr>
                    <tr>
                        <td height="75">
                            <input type="password" name="password" id="password" class="loginInput" placeholder="密码" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <font color="red"><span id="spanlogin"></span></font>
                        </td>
                    </tr>

                    <tr>
                        <td height="75" ><input type="button" onclick="login()" value="登 录" style="width:100%; height:45px; text-align:center; color:#fff; background:#AF0000; cursor:pointer; border:0; font-size:16px;border-radius:4px;"/></td>
                    </tr>
                </table>

            </div>
        </form>
    </div>
</div>
<script type="text/javascript">
    function login() {
        var parm=$("#jvForm").serialize();
        $.ajax({
            url:"loginuser",
            data:parm,
            dataType:"text",
            type:"post",
            success:function (res) {
                if(res=="ok"){
                    location.href="${pageContext.request.contextPath}/";
                }
                if(res=="fail"){
                    $("#spanlogin").html("用户名或密码错误");
                }
            }
        });
    }
</script>
<div class="Copyright clear" style="background:#fff;">
    <div class="ctr tac">

        <a href="#"target="_blank">关于JSPGOU</a> |
        <a href="#"target="_blank">最新资讯</a> |
        <a href="#"target="_blank">帮助中心</a> |
        <a href="#"target="_blank">隐私保护</a> |
        <a href="#"target="_blank">网站导航</a> |
        <a href="#"target="_blank">联系我们</a>

    </div>
    <div class="ctr tac">Copyright © JSPGOU 2017，All Rights Reserved</div>
</div>
</body>
</html>
