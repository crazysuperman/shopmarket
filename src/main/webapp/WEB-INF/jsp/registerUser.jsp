<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018\10\16 0016
  Time: 19:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>用户注册 - jeegou开发站- Powered by JSPGOU</title>
    <link href="css/index_1.css" type="text/css" rel="stylesheet" />
    <link href="css/member_1.css" type="text/css" rel="stylesheet" />
    <script src="js/jquery_1.js" type="text/javascript"></script>

</head>

<body>
<%--注册登录 begin--%>
<div id="Topbar" class="Topbar">
    <div class="ctr cf">
        <ul class="Topbar-menu fr">
            <li class="Topbar-menu-item ib"><a href="#">我的JSPGOU</a></li>
            <li class="Topbar-menu-item ib"><a href="#">收藏夹</a></li>
            <!--<li class="Topbar-menu-item ib"><a target="_blank" href="">网站导航</a>-->
            </li>
        </ul>
        <ul class="Topbar-welcome fl" id="top_user_bar">
            <li class="Topbar-welcome-item"><font color="red">Hi! ${user.username}  </font>欢迎来到JSPGOU商城</li>
            <c:if test="${user.username==null}">
                <li class="Topbar-welcome-item"><a href="${pageContext.request.contextPath}/tologinuser">请登录</a></li>
            </c:if>
        </ul>



    </div>
</div>

<script type="text/javascript">
    console.log(2);
    localStorage.removeItem("sessionKey");
    localStorage.removeItem("userName");
</script><script src="js/jquery_1.js" type="text/javascript"></script>
<div class="Header">
    <div class="ctr pr">
        <a href="/"><div class="Logo">
            <img src="picture/logo_1.jpg" width="158" height="58" />
        </div></a>

        <script type="text/javascript">
            $('#cart_total_items').html(Shop.cartTotalItems());
        </script>
    </div>

</div>
<!--商品类目栏 end  -->
<div class="user-page-content">
    <div class="clearfix w">
        <div class="content-one content-hei">
            <div class="user_title">注册新用户<span class="fr" style="font-size:12px;">已有帐号，<a href="tologinuser" style="color:#F00; font-size:14px;">登录</a></span></div>
            <form id="jvForm" onsubmit="return check()" action="registeruser" method="post">
                <table border="0" align="center" cellpadding="3" cellspacing="0" class="zhuce">
                    <tr>
                        <td height="45" width="200" align="right">用户名：</td>
                        <td>
                            <input type="text" id="username" name="username" class="register_input w200 fl mr20"onmouseout="verifyUsername()" placeholder="请输入用户名"/>
                            <font color="red"><span class="gray" id="usernameSpan"></span></font>
                        </td>
                    </tr>
                    <tr>
                        <td height="45" width="" align="right">Email：</td>
                        <td>
                            <input type="text" name="email" id="email"  class="register_input w200 fl mr20" placeholder="请输入有效邮箱地址"/>
                            <font color="red"><span class="gray" id="emailSpan"></span></font>
                        </td>
                    </tr>
                    <tr>
                        <td height="45" width="" align="right">性别：</td>
                        <td>
                            <select name="sex" id="sex">
                                <option value="0">男</option>
                                <option value="1">女</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td height="45" width="" align="right">手机号码：</td>
                        <td>
                            <input type="text" name="phone" id="phone"  class="register_input w200 fl mr20" placeholder="请输入有效手机号"/>
                            <font color="red"><span class="gray" id="phoneSpan"></span></font>
                        </td>
                    </tr>
                    <tr>
                        <td height="45" width="" align="right">地址：</td>
                        <td>
                            <input type="text" name="address" id="address"  class="register_input w200 fl mr20" placeholder="请输入地址"/>

                        </td>

                    </tr>
                    <tr>
                        <td height="45" width="200" align="right">密码：</td>
                        <td >
                            <input type="password"  name="password" id="password" class="register_input w200 fl mr20" placeholder="请输入密码" />
                            <font color="red"><span class="gray" id="passwordSpan"></span></font>
                        </td>

                    </tr>
                    <tr>
                        <td height="45" width="200" align="right">确认密码：</td>
                        <td>
                            <input type="password" id="passwordb" class="register_input w200 fl mr20" placeholder="再次输入相同密码"/>
                            <font color="red"><span class="gray" id="passwordbSpan"></span></font>
                        </td>
                    </tr>
                    <tr>
                        <td height="50" width="200" align="right">&nbsp;</td>
                        <td colspan="2">
                            <input type="submit"  value="注册" class="ss_button w200"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>
<script>

//    验证用户名是否存在
    function verifyUsername(){
        var username=$("#username").val();
        var parm={"username":username};
        $.ajax({
           url:"getbuyer",
           data:parm,
            dataType:"text",
            type:"post",
            success:function (res) {
                if(res=="fail"){
                    $("#usernameSpan").html("用户名已存在,请重新输入");
                }else if($("#username").val()=="") {
                    $("#usernameSpan").html("请输入用户名")
                }else {
                    $("#usernameSpan").html("");
                }
            }
        });
    }


//    提交表单
//    表单验证
    function check() {
        var a=checkusername();
        var b=checkemail();
        var c=chenkphone();
        var d=checkpassword();
        if(a&&b&c&&d){
            return true
        }else {
            return false;
        }
    }
    function checkusername() {
        if ($("#username").val()==""){
            $("#usernameSpan").html("请输入用户名")
            return false;
        }else if($("#usernameSpan").html()!="") {
            return false;
        }else{
            $("#usernameSpan").html("");
            return true;
        }
    }
    function checkemail() {
        var email="^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\\.[a-zA-Z0-9_-]+)+$";
        if ($("#email").val()==""){
            $("#emailSpan").html("请输入邮箱")
            return false;
        }else if (!$("#email").val().match(email)){;
            $("#emailSpan").html("邮箱格式不正确");
            return false;
        }else{
            $("#emailSpan").html("");
            return true;
        }
    }
    function chenkphone() {
        var phone = /^1[34578][0-9]{9}$/;
        if($("#phone").val()==""){
            $("#phoneSpan").html("请输入手机号")
            return false;
        }else if(!$("#phone").val().match(phone)){
            $("#phoneSpan").html("手机格式不正确");
            return false;
        }else {
            $("#phoneSpan").html("");
            return true;
        }
    }
    function checkpassword() {
        if($("#password").val()=="") {
            $("#passwordSpan").html("请输入密码")
            return false;
        }else if($("#password").val()!=$("#passwordb").val()){
            $("#passwordSpan").html("")
            $("#passwordbSpan").html("两次密码不一致");
            return false;
        }else {
            $("#passwordSpan").html("")
            $("#passwordbSpan").html("");
            return true;

        }
    }
//    表单验证结束
</script>
<div class="clear"></div>
<div class="Footer">
    <div class="footer-icon">
        <div class="w">
            <a href="/baozhang/14.htm" target="_blank" class="icon-map">
                <p class="icon-bg i1"></p>
                <p class="icon-title">100%正品</p>
            </a>
            <a href="/baozhang/15.htm" target="_blank" class="icon-map">
                <p class="icon-bg i2"></p>
                <p class="icon-title">双重质检</p>
            </a>
            <a href="/baozhang/16.htm" target="_blank" class="icon-map">
                <p class="icon-bg i3"></p>
                <p class="icon-title">全球化采购</p>
            </a>
            <a href="/baozhang/17.htm" target="_blank" class="icon-map">
                <p class="icon-bg i4"></p>
                <p class="icon-title">无理由退货</p>
            </a>
            <a href="/baozhang/18.htm" target="_blank" class="icon-map">
                <p class="icon-bg i5"></p>
                <p class="icon-title">贵就赔</p>
            </a>
            <a href="/baozhang/19.htm" target="_blank" class="icon-map">
                <p class="icon-bg i6"></p>
                <p class="icon-title">万千口碑</p>
            </a>
        </div>
    </div>

    <!-- 帮助中心栏目start -->
    <div class="Footer-block pt20 pb20 ctr cf">
        <ul class="Sitemap fl cf">
            <li class="Sitemap-item fl">
                <h4>
                    <a target="_blank" href="/xsrm/index.htm">新手入门</a>
                </h4>
                <ul>
                    <li><a href="/xsrm/1.htm" class="track2" target="_blank">积分说明</a></li>
                    <li><a href="/xsrm/2.htm" class="track2" target="_blank">购买流程</a></li>
                    <li><a href="/xsrm/3.htm" class="track2" target="_blank">账户注册</a></li>
                    <li><a href="/xsrm/4.htm" class="track2" target="_blank">大宗购物</a></li>
                </ul>
            </li>
            <li class="Sitemap-item fl">
                <h4>
                    <a target="_blank" href="/wzgg/index.htm">网站公告</a>
                </h4>
                <ul>
                    <li><a href="/wzgg/5.htm" class="track2" target="_blank">最新商品</a></li>
                </ul>
            </li>
            <li class="Sitemap-item fl">
                <h4>
                    <a target="_blank" href="/news/index.htm">新闻中心</a>
                </h4>
                <ul>
                    <li><a href="/news/6.htm" class="track2" target="_blank">jspgou v5.0即将发布</a></li>
                </ul>
            </li>
            <li class="Sitemap-item fl">
                <h4>
                    <a target="_blank" href="/remen/index.htm">热门促销</a>
                </h4>
                <ul>
                    <li><a href="/remen/7.htm" class="track2" target="_blank">热门促销</a></li>
                </ul>
            </li>
            <li class="Sitemap-item fl">
                <h4>
                    <a target="_blank" href="/ps/index.htm">配送范围及时间</a>
                </h4>
                <ul>
                    <li><a href="/ps/8.htm" class="track2" target="_blank">订单拆分</a></li>
                    <li><a href="/ps/9.htm" class="track2" target="_blank">海外配送</a></li>
                    <li><a href="/ps/10.htm" class="track2" target="_blank">国内配送</a></li>
                </ul>
            </li>
        </ul>
        <div class="QR fl">
            <img class="QR-img" src="picture/jspgou-wx.jpg" >
        </div>
    </div>
    <!-- 帮助中心栏目 end-->

    <div class="Copyright">
        <div class="ctr tac">
            <a href="/dilan/20.htm"target="_blank">关于JSPGOU</a> |
            <a href="/dilan/21.htm"target="_blank">最新资讯</a> |
            <a href="/dilan/22.htm"target="_blank">帮助中心</a> |
            <a href="/dilan/23.htm"target="_blank">隐私保护</a> |
            <a href="/dilan/24.htm"target="_blank">网站导航</a> |
            <a href="/dilan/25.htm"target="_blank">联系我们</a>
        </div>
        <div class="ctr tac">Copyright © JSPGOU 2017，All Rights Reserved</div>
    </div>
</div></body>
</html>
