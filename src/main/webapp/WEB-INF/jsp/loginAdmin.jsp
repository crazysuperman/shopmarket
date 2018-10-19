<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018\10\17 0017
  Time: 16:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Login - Vali Admin</title>
</head>
<body>
<section class="material-half-bg">
    <div class="cover"></div>
</section>
<section class="login-content">
    <div class="logo">
        <h1>Vali</h1>
    </div>
    <div class="login-box">
        <form class="login-form" action="#" id="jvForm">
            <h3 class="login-head"><i class="fa fa-lg fa-fw fa-user"></i>登录</h3>
            <div class="form-group">
                <label class="control-label">用户名</label>
                <input class="form-control" type="text" placeholder="用户名" autofocus name="username" id="username">
            </div>
            <div class="form-group">
                <label class="control-label">密码</label>
                <input class="form-control" type="password" placeholder="密码" name="password" id="password">
            </div>
             <div>
                 <font color="red"><span id="spanlogin"></span></font>
             </div>
            <div class="form-group btn-container">
                <button type="button" class="btn btn-primary btn-block" onclick="tologin()">登录</button>
            </div>
        </form>

    </div>
</section>
<!-- Essential javascripts for application to work-->
<script src="js/jquery-3.2.1.min.js"></script>
<%--<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>--%>
<!-- The javascript plugin to display page loading on top-->
<script src="js/plugins/pace.min.js"></script>
<script type="text/javascript">
   function tologin() {
       var parm=$("#jvForm").serialize();


       $.ajax({
           url:"loginadmin",
           data:parm,
           dataType:"text",
           type:"post",
           success:function (res) {

               if(res=="ok"){
                 location.href="towebmaster";
               }
               if(res=="fail"){
                   $("#spanlogin").html("用户名或密码错误");
               }
           }
       })
   }
</script>
</body>
</html>