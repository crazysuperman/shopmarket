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
      <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">
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
                    <button type="button" class="btn btn-yellow btn-xs"  onclick="addProduct()">添加商品</button>
                </div>
                <%--<a href="" role="button" data-toggle="modal" data-target="#myModal" onclick="change()"><i class="fa fa-lg fa-plus"></i>添加用户</a>--%>
              <table id="myTable"></table>
            </div>
          </div>
        </div>
      </div>

    </main>
    <!--增加店铺弹出窗口-->
    <div class="modal fade" id="addChar" role="dialog" aria-labelledby="gridSystemModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="gridSystemModalLabel">添加商品</h4>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <form class="form-horizontal" id="addform" method="post" onsubmit="return check()" action="saveproduct" enctype="multipart/form-data">
                            <input type="hidden" name="sid" value="${sessionstore.id}">
                            <div class="form-group ">
                                <label for="sName" class="col-xs-3 control-label">商品名称：</label>
                                <div class="col-xs-6 ">
                                    <input type="text" class="form-control input-sm duiqi" name="pname" placeholder="">
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="sName" class="col-xs-3 control-label">商品价格：</label>
                                <div class="col-xs-6 ">
                                    <input type="text" id="add_price" class="form-control input-sm duiqi" name="price" placeholder="">
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="sName" class="col-xs-3 control-label">上传图片：</label>
                                <div class="col-xs-6 ">
                                    <input type="file" class="form-control input-sm duiqi" name="files" placeholder="">
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="sName" class="col-xs-3 control-label">商品描述：</label>
                                <div class="col-xs-6 ">
                                    <input type="text" class="form-control input-sm duiqi" name="pdesc" placeholder="">
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="sName" class="col-xs-3 control-label">所属类别：</label><br><br>
                                <div class="col-xs-8">
                                    <label class="control-label" for="anniu">
                                        <input type="radio" name="cid" value="1">电子数码</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <label class="control-label" for="meun">
                                        <input type="radio" name="cid" value="2"> 服装</label>
                                </div>
                                <div class="col-xs-8">
                                    <label class="control-label" for="anniu">
                                        <input type="radio" name="cid" value="3">鞋包配饰</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <label class="control-label" for="meun">
                                        <input type="radio" name="cid" value="4"> 日用百货</label>
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
    <!-- /.modal -->

    <!--修改商品资料窗口-->
    <div class="modal fade" id="changeChar" role="dialog" aria-labelledby="gridSystemModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">修改商品</h4>
                </div>
                <div class="modal-body">
                    <div class="container-fluid">
                        <form class="form-horizontal" method="post" onsubmit="return check2()" action="updateproduct" enctype="multipart/form-data">
                            <input type="hidden" id="modifypid" name="pid">
                            <div class="form-group">
                                <label for="sName" class="col-xs-3 control-label">商品名称：</label>
                                <div class="col-xs-6 ">
                                    <input type="text" class="form-control input-sm duiqi" id="modifypname" name="pname" placeholder="">
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="sName" class="col-xs-3 control-label">商品价格：</label>
                                <div class="col-xs-6 ">
                                    <input type="text" class="form-control input-sm duiqi" id="modifyprice" name="price" placeholder="">
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="sName" class="col-xs-3 control-label">上传图片：</label>
                                <div class="col-xs-6 ">
                                    <input type="file" class="form-control input-sm duiqi" name="files" placeholder="">
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="sName" class="col-xs-3 control-label">商品描述：</label>
                                <div class="col-xs-6 ">
                                    <input type="text" class="form-control input-sm duiqi" id="modifypdesc" name="pdesc" placeholder="">
                                </div>
                            </div>
                            <div class="form-group ">
                                <label for="sName" class="col-xs-3 control-label">所属类别：</label><br><br>
                                <div class="col-xs-8">
                                    <label class="control-label" for="anniu">
                                        <input type="radio" name="cid" id="id1" value="1">电子数码</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <label class="control-label" for="meun">
                                        <input type="radio" name="cid" id="id2" value="2"> 服装</label>
                                </div>
                                <div class="col-xs-8">
                                    <label class="control-label" for="anniu">
                                        <input type="radio" name="cid" id="id3" value="3">鞋包配饰</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <label class="control-label" for="meun">
                                        <input type="radio" name="cid" id="id4" value="4"> 日用百货</label>
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
    <!-- /.modal -->

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
                        确定要删除该店铺？删除后不可恢复！
                    </div>
                </div>
                <div class="modal-footer">
                    <form id="delform" action="deleteProduct" method="post">
                        <input type="hidden" id="delid" name="pid">
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
    <script type="text/javascript">

        function check() {
            var re = /^[0-9]+.?[0-9]*$/;
            var price = $("#add_price").val();
            if (!re.test(price)) {
                alert("请输入正确的价格")
                return false;
            }
            if(price<0){
                alert("请输入正确的价格")
                return false;
            }
        }
        function check2() {
            var re = /^[0-9]+.?[0-9]*$/;

            var price = $("#modifyprice").val();
            if (!re.test(price)) {
                alert("请输入正确的价格")
                return false;
            }
            if(price<0){
                alert("请输入正确的价格")
                return false;
            }
        }

        //新增按钮点击事件
        function addProduct() {
            var dialog = $('#addChar').modal({
                backdrop: 'static',
                keyboard: false
            });
            dialog.modal('show');

        }
    	$(function(){
    		//初始化表格
    		$('#myTable').bootstrapTable({
                columns: [{ field: 'pid', title: '商品编号',sortable:true },
                    { field: 'pname', title: '商品名称' },
                    { field: 'price', title: '商品价格' },
                    { field: 'pimage', title: '商品图片',formatter:imgsFormatter },
                    { field: 'pdesc', title: '商品描述' },
                    { field: 'pdate', title: '更新时间',formatter: function (value) {
                        return changeDateFormat(value);
                    } },
                    { field: 'cid', title: '所属类别',formatter:cidFormatter },
                    { field: 'buttons', title: '操作',events: operateEvents, formatter: operateFormatter }],

                //要绑定的数据
                //这里绑定的是死数据，如果使用的客户端分页的json格式：[{},{},{}]
                //如果使用的服务端分页,json格式如下：{total:98,rows:[{},{}]}
                //请求地址
                url: 'listproduct?sid='+${sessionstore.id},
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
                pageSize:5,
                //可供选择的每页的行数（*）
                pageList: [5,10,15],
                //分页方式：默认客户端分页，修改为服务端分页
                sidePagination: 'server',
                toolbar:"#mytoolbar"
            });
    	});

        //转换日期格式(时间戳毫秒数转换为datetime格式)
        function changeDateFormat(cellval) {
            var dateVal = cellval + "";
            if (cellval != null) {
                var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
                var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
                var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
                return date.getFullYear() + "-" + month + "-" + currentDate;
            }
        }
        function imgsFormatter(value,row,index) {

            var imgs = "<img src='"+row.pimage+"' width='100px' height='100px'>"
            return [imgs].join("");
        }
        function cidFormatter(value,row,index) {
            var category="";
            if(row.cid==1){
                category="电子数码";
            }
            if(row.cid==2){
                category="服装";
            }
            if(row.cid==3){
                category="鞋包配饰";
            }
            if(row.cid==4){
                category="日用百货";
            }
            return [category].join("");
        }
        function operateFormatter(value,row,index) {
            return ["<button id='modify' class='btn btn-success btn-xs' data-toggle='modal' data-target='#changeChar'>编辑</button>&nbsp;&nbsp;<button id='del' class='btn btn-danger btn-xs' data-toggle='modal' data-target='#deleteChar'>删除</button>"].join("");
        }
        window.operateEvents = {
            'click #modify': function (e, value, row, index) {
                document.getElementById("modifypid").value=row.pid;
                document.getElementById("modifypname").value=row.pname;
                document.getElementById("modifyprice").value=row.price;
                document.getElementById("modifypdesc").value=row.pdesc;
                if(row.cid==1){
                    document.getElementById("id1").checked="checked";
                }
                if(row.cid==2){
                    document.getElementById("id2").checked="checked";
                }
                if(row.cid==3){
                    document.getElementById("id3").checked="checked";
                }
                if(row.cid==4){
                    document.getElementById("id4").checked="checked";
                }

            },
            'click #del': function (e, value, row, index) {
                document.getElementById("delid").value=row.pid;
            }
        };
        //提交表单
        /*function saveUser() {
            if($("#uid").val()==null){
                $("#myForm").attr("action","saveuser");
            }else{
                $("#myForm").attr("action","updateuser");
            }
            $("#myForm").submit();
        }*/

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