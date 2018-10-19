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
                    <button type="button" class="btn btn-yellow btn-xs"  onclick="addStore()">添加商铺</button>
                </div>
                <%--<a href="" role="button" data-toggle="modal" data-target="#myModal" onclick="change()"><i class="fa fa-lg fa-plus"></i>添加用户</a>--%>

                    <table id="storetable">

                    </table>

            </div>
          </div>
        </div>
      </div>

    </main>
    <!--修改店铺资料窗口-->
    <div class="modal fade" id="changeChar" role="dialog" aria-labelledby="gridSystemModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">修改店铺</h4>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <form class="form-horizontal" id="modifyform" method="post" action="updatestore">
                            <input type="hidden" id="modifysdesc" name="sdesc">
                            <input type="hidden" id="modifyid" name="id">
                            <div class="form-group ">
                                <label class="col-xs-3 control-label">商铺名称：</label>
                                <div class="col-xs-6 ">
                                    <input type="text" class="form-control input-sm duiqi" id="modifysname" name="sname" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3 control-label">商铺描述：</label>
                                <div class="col-xs-6 ">
                                    <textarea class="form-control input-sm duiqi" id="modifyarea" onmouseout="valiupdate()"></textarea>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="submit" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>

    <!--增加店铺弹出窗口-->
    <div class="modal fade" id="addChar" role="dialog" aria-labelledby="gridSystemModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="gridSystemModalLabel">添加商铺</h4>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <form class="form-horizontal" id="addform" method="post" action="savestore">
                            <input type="hidden" id="saveid" name="sdesc">
                            <div class="form-group ">
                                <label  class="col-xs-3 control-label">商铺名称：</label>
                                <div class="col-xs-6 ">
                                    <input type="text" class="form-control input-sm duiqi" name="sname" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-xs-3 control-label">商铺描述：</label>
                                <div class="col-xs-6 ">
                                    <textarea name="sdesc" class="form-control input-sm duiqi" id="area" onmouseout="validate()"></textarea>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                                <button type="submit" class="btn btn-xs btn-green">保 存</button>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>

    <!--弹出删除权限警告窗口-->
    <div class="modal fade" id="deleteChar" role="dialog" aria-labelledby="gridSystemModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        确定要删除该商品？删除后不可恢复！
                    </div>
                </div>
                <div class="modal-footer">

                    <form id="delform" action="deletestore" method="post">
                        <input type="hidden" id="delid" name="id">
                        <%--<input type="hidden" name="_method" value="DELETE">--%>
                        <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
                        <%--<button type="button" class="btn btn-xs btn-danger" id="delStore">删除</button>--%>
                        <button type="submit" class="btn btn-xs btn-danger">删除</button>
                    </form>

                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
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
        function addStore() {
            var dialog = $('#addChar').modal({
                backdrop: 'static',
                keyboard: false
            });
            dialog.modal('show');
        }
        $(function(){
            $("#storetable").bootstrapTable({
                columns: [{ field: 'id', title: '店铺编号',sortable:true },
                    { field: 'sname', title: '店铺名称',formatter: snameFormatter },
                    { field: 'sdesc', title: '店铺详情' },
                    { field: 'buttons', title: '操作',events: operateEvents, formatter: operateFormatter }],
                //data: [{ id: 1, sname: 'Item 1', sage: '21', ssex:'男', birthday:'1996-01-23', address:'江干' }]
                url: 'liststore',
                method: 'post',
                pagination: true,

                sortOrder: "desc",
                pageList: [3, 4, 8, 10],
                search: true,
                pageNumber: 1,
                pageSize: 4,
                sidePagination: 'server'
            });
        });
        function snameFormatter(value,row,index) {
            //row.sname;
            var sname ="<a href='productmanage?id="+row.id+"'>"+row.sname+"</a>";
            return [sname].join("");
        }
        function operateFormatter(value,row,index) {
            return ["<button id='modify' class='btn btn-default btn-xs' >编辑</button>&nbsp;&nbsp;<button id='del' class='btn btn-default btn-xs' data-toggle='modal' data-target='#deleteChar'>删除</button>"].join("");
        }

        window.operateEvents={

            'click #modify': function (e, value, row, index) {
                var dialog = $('#changeChar').modal({
                    backdrop: 'static',
                    keyboard: false
                });
                document.getElementById("modifyid").value=row.id;
                document.getElementById("modifysname").value=row.sname;
                document.getElementById("modifyarea").innerHTML=row.sdesc;
                /*if(row.ssex=="女"){
                    document.getElementById("sex0").selected="selected";

                }else{
                    document.getElementById("sex1").selected="selected";
                }*/


                //document.getElementById("modifyssex").value=row.ssex;
                document.getElementById("modifybirthday").value=row.birthday;
                document.getElementById("modifyaddress").value=row.address;

            },
            'click #del': function (e, value, row, index) {
                document.getElementById("delid").value=row.id;
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
            var phone="^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8}$";
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