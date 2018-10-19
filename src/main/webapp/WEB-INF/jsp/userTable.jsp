<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <!-- Twitter meta-->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:site" content="@pratikborsadiya">
    <meta property="twitter:creator" content="@pratikborsadiya">
    <!-- Open Graph Meta-->
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Vali Admin">
    <meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
    <meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin">
    <meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
    <meta property="og:description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <title>Data Table - Vali Admin</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body class="app sidebar-mini rtl">
    <!-- Navbar-->
    <header class="app-header"><a class="app-header__logo" href="index.html">Vali</a>
      <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
      <!-- Navbar Right Menu-->
      <ul class="app-nav">
        <li class="app-search">
          <input class="app-search__input" type="search" placeholder="Search">
          <button class="app-search__button"><i class="fa fa-search"></i></button>
        </li>
        <!--Notification Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Show notifications"><i class="fa fa-bell-o fa-lg"></i></a>
          <ul class="app-notification dropdown-menu dropdown-menu-right">
            <li class="app-notification__title">You have 4 new notifications.</li>
            <div class="app-notification__content">
              <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                  <div>
                    <p class="app-notification__message">Lisa sent you a mail</p>
                    <p class="app-notification__meta">2 min ago</p>
                  </div></a></li>
              <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-danger"></i><i class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
                  <div>
                    <p class="app-notification__message">Mail server not working</p>
                    <p class="app-notification__meta">5 min ago</p>
                  </div></a></li>
              <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-success"></i><i class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
                  <div>
                    <p class="app-notification__message">Transaction complete</p>
                    <p class="app-notification__meta">2 days ago</p>
                  </div></a></li>
              <div class="app-notification__content">
                <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                    <div>
                      <p class="app-notification__message">Lisa sent you a mail</p>
                      <p class="app-notification__meta">2 min ago</p>
                    </div></a></li>
                <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-danger"></i><i class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
                    <div>
                      <p class="app-notification__message">Mail server not working</p>
                      <p class="app-notification__meta">5 min ago</p>
                    </div></a></li>
                <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-success"></i><i class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
                    <div>
                      <p class="app-notification__message">Transaction complete</p>
                      <p class="app-notification__meta">2 days ago</p>
                    </div></a></li>
              </div>
            </div>
            <li class="app-notification__footer"><a href="#">See all notifications.</a></li>
          </ul>
        </li>
        <!-- User Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>
          <ul class="dropdown-menu settings-menu dropdown-menu-right">
            <li><a class="dropdown-item" href="page-user.html"><i class="fa fa-cog fa-lg"></i> Settings</a></li>
            <li><a class="dropdown-item" href="page-user.html"><i class="fa fa-user fa-lg"></i> Profile</a></li>
            <li><a class="dropdown-item" href="page-login.html"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
          </ul>
        </li>
      </ul>
    </header>
    <!-- Sidebar menu-->
    <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    <aside class="app-sidebar">
      <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg" alt="User Image">
        <div>
          <p class="app-sidebar__user-name">John Doe</p>
          <p class="app-sidebar__user-designation">Frontend Developer</p>
        </div>
      </div>
      <ul class="app-menu">
          <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">Tables</span><i class="treeview-indicator fa fa-angle-right"></i></a>
              <ul class="treeview-menu">
                  <li><a class="treeview-item" href="toproduct"><i class="icon fa fa-circle-o"></i>商品管理</a></li>
                  <li><a class="treeview-item" href="tostore"><i class="icon fa fa-circle-o"></i>店铺管理</a></li>
                  <li><a class="treeview-item" href="toindex2"><i class="icon fa fa-circle-o"></i>订单管理</a></li>
                  <li><a class="treeview-item" href="tousertable"><i class="icon fa fa-circle-o"></i>用户管理</a></li>
                  <li><a class="treeview-item" href="category"><i class="icon fa fa-circle-o"></i>分类管理</a></li>
              </ul>
          </li>
      </ul>
    </aside>
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-th-list"></i> Data Table</h1>
          <p>Table to display analytical data effectively</p>

        </div>
        <ul class="app-breadcrumb breadcrumb side">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item">Tables</li>
          <li class="breadcrumb-item active"><a href="#">Data Table</a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
                <div id="mytoolbar">
                    <button type="button" class="btn btn-yellow btn-xs"  onclick="addUser()">添加用户</button>
                </div>
                <%--<a href="" role="button" data-toggle="modal" data-target="#myModal" onclick="change()"><i class="fa fa-lg fa-plus"></i>添加用户</a>--%>
              <table id="myTable"></table>
            </div>
          </div>
        </div>
      </div>

    </main>
     <!-- 模态框 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	    <div class="modal-dialog" >
	        <div class="modal-content">
	            <div class="modal-header">
	                <h4 class="modal-title" id="myModalLabel">添加用户</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	            </div>
	            <div class="modal-body">
	                <form action="#" id="myForm" method="post" onsubmit="return check()">
                        <div id="divuid">
                            <input type="hidden" name="uid" id="uid">
                        </div>
	                    <div class="form-group">
                            <label for="username">用户名：</label> <font color="red"><span class="gray" id="usernameSpan"></span></font>
	                        <input type="text" id="username" name="username" class="form-control" placeholder="请输入用户名" readonly="" onmouseout="">
	                    </div>
                        <div class="form-group">
                            <label for="password">密码</label>  <font color="red"><span class="gray" id="passwordSpan"></span></font>
                            <input type="text" id="password" name="password" class="form-control" placeholder="请输入密码">
                        </div>
	                    <div class="form-group">
	                        <label for="sex">性别</label>
                            <select name="sex" id="sex">
                                <option value="0" id="sex1">男</option>
                                <option value="1" id="sex2">女</option>
                            </select>
	                    </div>
	                    <div class="form-group">
	                        <label for="phone">手机号码</label> <font color="red"><span class="gray" id="phoneSpan"></span></font>
	                        <input type="text" id="phone" name="phone" class="form-control" placeholder="请输入手机号">
	                    </div>
	                    <div class="form-group">
	                        <label for="address">地址</label>
	                        <input type="text" id="address" name="address" class="form-control" placeholder="请输入地址">
	                    </div>
                        <div class="form-group">
                            <label for="email">Email</label> <font color="red"><span class="gray" id="emailSpan"></span></font>
                            <input type="text" id="email"  name="email" class="form-control" placeholder="请输入邮箱">
                        </div>
                        <div class="form-group">
                            <label for="isseller">权限</label>
                            <select name="isseller" id="isseller">
                                <option value="0" id="isseller0">管理员</option>
                                <option value="1" id="isseller1">用户</option>
                            </select>
                        </div>
                    </form>
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	                <button type="button" class="btn btn-primary" id="save" onclick="saveUser()">提交</button>
	            </div>
	        </div>
	    </div>
	</div>
    <!-- Essential javascripts for application to work-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="js/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <!-- Bootstrap table plugin-->
    <!-- <script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript">$('#sampleTable').DataTable();</script> -->
    
    <!-- Latest compiled and minified JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/locale/bootstrap-table-zh-CN.min.js"></script>
    <script type="text/javascript">
        //改变性别显示
        function changeSex(value) {
            if(value==0){
                return "男";
            }else{
                return "女";
            }
        }
        function changeSeller(value) {
            if(value==0){
                return "管理员";
            }else{
                return "用户";
            }
        }
        //新增按钮点击事件
        function addUser() {
            var dialog = $('#myModal').modal({
                backdrop: 'static',
                keyboard: false
            });
            dialog.modal('show');
            $("input[type='text']").each(function() {
                $(this).removeAttr("readonly")
            })
            $("#myModalLabel").html("添加用户");
            $("#username").attr("onmouseout","verifyUsername()");
            $("#usernameSpan").html("");
            //清空提示框内容
            $("#usernameSpan").html("");
            $("#emailSpan").html("");
            $("#phoneSpan").html("");
            $("#passwordSpan").html("");
            //删除uid输入框
            $("#divuid").remove();
            //清空输入框内容
            $("#username").val("");
            $("#password").val("");
            $("#phone").val("");
            $("#address").val("");
            $("#email").val("");
            $("#sex2").attr("selected",false);
            $("#sex1").attr("selected",true);
            $('#isseller0').attr("selected",false);
            $('#isseller1').attr("selected",true);

        }
    	$(function(){
    		//初始化表格
    		$('#myTable').bootstrapTable({
                columns: [/*{
                    checkbox:true,
                    visible:true
                },*/{
                    field: 'uid',
                    title: 'ID'
                }, {
                    field: 'username',
                    title: '用户名'
                }, {
                    field: 'password',
                    title: '密码'
                }, {
                    field: 'sex',
                    title: '性别',
                    formatter:function (value) {
                       return changeSex(value);
                    }
                }, {
                    field: 'phone',
                    title: '电话'
                }, {
                    field: 'isseller',
                    title: '是否为管理员',
                    formatter:function (value) {
                        return changeSeller(value);
                    }
                }, {
                    field: 'email',
                    title: '邮箱',
                },{
                    field: 'address',
                    title: '地址',
                },{
                    field: '',
                    title: '操作',
                    events:operateEvents,//给按钮注册事件
                    formatter:AddFunctionAlty//给表格中添加按钮

                }],
                //要绑定的数据
                //这里绑定的是死数据，如果使用的客户端分页的json格式：[{},{},{}]
                //如果使用的服务端分页,json格式如下：{total:98,rows:[{},{}]}
                //请求地址
                url: 'users',
                method:'post',
                //打开搜索框
                search: true,
                //按回车键后进行搜索
                searchOnEnterKey: true,
                //开启分页功能
                pagination: true,
                //第一次加载第一页
                pageNumber: 1,
                //每页显示条数
                pageSize:2,
                //可供选择的每页的行数（*）
                pageList: [5,10,15],
                //分页方式：默认客户端分页，修改为服务端分页
                sidePagination: 'server',
                toolbar:"#mytoolbar"
            });
    	});
    	function  AddFunctionAlty(value,row,index) {
            return[
                '<button id="updateTable" type="button"class="btn btn-default" >编辑</button> &nbsp;&nbsp;&nbsp;',
                '<button id="deleteTable" type="button"class="btn btn-default">删除</button>',
            ].join("")
        }
        window.operateEvents={
    	    "click #updateTable":function (e,value,row,index) {

                var dialog = $('#myModal').modal({
                    backdrop: 'static',
                    keyboard: false
                });
                dialog.modal('show');
                $("#divuid").html("<input type=\"hidden\" name=\"uid\" id=\"uid\">")
                $("#myModalLabel").html("编辑用户");
                $("#username").attr("onmouseout","");
                $("#usernameSpan").html("");
                $("#emailSpan").html("");
                $("#phoneSpan").html("");
                $("#passwordSpan").html("")
                //加入readonly属性
                $("#username").attr("readonly","readonly")
               $.ajax({
                    url:"getuser",
                    data:{"uid":row.uid},
                    type:"post",
                    dataType:"json",
                    success:function (res) {
                        $("#uid").val(res.uid);
                        $("#username").val(res.username);
                        $("#password").val(res.password);
                        if(res.sex){
                            $('#sex1').attr("selected",false);
                            $('#sex2').attr("selected",true);
                        }else{
                            $('#sex2').attr("selected",false);
                            $('#sex1').attr("selected",true);
                        }

                        $("#phone").val(res.phone);
                        $("#address").val(res.address);
                        if(!res.isseller){
                            $('#isseller1').attr("selected",false);
                            $('#isseller0').attr("selected",true);
                        }else{
                            $('#isseller0').attr("selected",false);
                            $('#isseller1').attr("selected",true);
                        }

                        $("#email").val(res.email);
                    }
                });
                //点击编辑按钮事件
//                var dialog = $('#myModal').modal({
//                    backdrop: 'static',
//                    keyboard: false
//                });
//                dialog.modal('show');
            },
            'click #deleteTable':function (e,value,row,index) {
                if (confirm("确定删除?")) {
                    location.href="deleteuser?uid="+row.uid;
                }

            }
        }
        //提交表单
        function saveUser() {
            if($("#uid").val()==null){
                $("#myForm").attr("action","saveuser");
            }else{
                $("#myForm").attr("action","updateuser");
            }
            $("#myForm").submit();
        }
        //$("#myModal").modal("hide");隐藏模态框
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
            }else {
                $("#passwordSpan").html("")
                return true;

            }
        }
        //    表单验证结束
    </script>
    <!-- Google analytics script-->
    <script type="text/javascript">
      if(document.location.hostname == 'pratikborsadiya.in') {
      	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      	ga('create', 'UA-72504830-1', 'auto');
      	ga('send', 'pageview');
      }
    </script>
  </body>
</html>