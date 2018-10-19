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
    <title>Vali Admin - Free Bootstrap 4 Admin Template</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
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
                <li><a class="dropdown-item" href="../../../../../../myvali-user/src/main/webapp/WEB-INF/jsp/page-user.html"><i class="fa fa-cog fa-lg"></i> Settings</a></li>
                <li><a class="dropdown-item" href="../../../../../../myvali-user/src/main/webapp/WEB-INF/jsp/page-user.html"><i class="fa fa-user fa-lg"></i> Profile</a></li>
                <li><a class="dropdown-item" href="../../../../../../myvali-user/src/main/webapp/WEB-INF/jsp/page-login.html"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
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
      <div class="row"  >
        <div class="col-md-12" >
          <div class="tile">
            <div class="tile-body" >
            <%--<button type="button" data-toggle="modal" data-target="#myModal" style="color:green">新增</button>--%>
              <table id="myTable" >
          			
              </table>
            </div>
          </div>
        </div>
      </div>
    </main>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header">

             </div>
             <div class="modal-footer">
                 <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                 <button id="" onclick="save1()">提交</button>
                 <button type="button" onclick="javascript:history.back(1)">返回</button>
             </div>
         </div>
    </div>
</div>

<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">编辑订单</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <form action="#" id="myForm">
                    <div>  
                        <input type="hidden" id="id" name="id" value="" class="form-control" placeholder="">
                    </div>
                    <div class="form-group">
                        <label for="orderNumber">訂單編號</label>
                        <input type="text" id="orderNumber" name="name" readonly="readonly" value="" class="form-control" placeholder="请输入訂單編號">
                    </div>
                    <div class="form-group">
                        <label >买家用戶名：</label>
                        <input type="text" id="userName" name="userName" readonly="readonly" value="" class="form-control" placeholder="请输入姓名">
                    </div>
                    <div class="form-group">
                        <label for="orderPrice">订单价格</label>
                        <input type="text" id="orderPrice" name="orderPrice"  value="" class="form-control" placeholder="请输入訂單價格">
                    </div>
                    <div class="form-group">
                        <label for="orderDate">下單日期：</label>
                        <input type="date" id="orderDate" name="orderDate" readonly="readonly" value="" class="form-control" placeholder="请输入下單日期">
                    </div>
                    <div class="form-group">
                        <label  >支付方式：</label>
                        <label>微信<input type="radio" id="payment1" name="payment" checked="" value="0" class="form-control" placeholder="微信"></label>
                        <label>支付宝<input type="radio" id="payment2" name="payment" checked="" value="1" class="form-control" placeholder="支付宝"></label>
                        <label>银行卡<input type="radio" id="payment3" name="payment" checked="" value="2" class="form-control" placeholder="银行卡"></label>
                    </div>
                    <div class="form-group">
                        <label >配送方式：</label>
                        <label>普通<input type="radio" id="sendWay1" name="sendWay" checked="" value="0" class="form-control" placeholder="普通快递"></label>
                        <label>顺丰<input type="radio" id="sendWay2" name="sendWay" checked="" value="1" class="form-control" placeholder="顺丰快递"></label>
                    </div>
                    <div class="form-group">
                        <label >买家电话：</label>
                        <input type="text" id="userphone" name="userphone"  value="" class="form-control" placeholder="">
                    </div>
                    <div class="form-group">
                        <label >买家地址：</label>
                        <input type="text" id="useraddress" name="useraddress" readonly="readonly" value="" class="form-control" placeholder="">
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                 <button type="button" class="btn btn-default" id="btn" onclick="edit()">提交</button>
          	  <%--<button type="button" onclick="javascript:history.back(1)">返回</button>--%>
            </div>
        </div>
    </div>
</div>
    <!-- Essential javascripts for application to work-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="js/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <!-- Data table plugin-->
    <script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>
	<!-- Latest compiled and minified JavaScript -->
	<script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/locale/bootstrap-table-zh-CN.min.js"></script>
	<script type="text/javascript">
	$(function(){
		//初始化表格
		$('#myTable').bootstrapTable({
			
		    columns: [{
		        field: 'id',
		        title: 'Item ID',
		        align: 'center',
		    	valign: 'middle'
		    }, {
		        field: 'orderNumber',
		        title: 'OrderNumber',
		        align: 'center',
		    	valign: 'middle'
		    }, {
                field: 'userName',
                title: 'UserName',
                align: 'center',
                valign: 'middle'
            }, {
		        field: 'orderPrice',
		        title: 'OrderPrice',
		        align: 'center',
		    	valign: 'middle'
		    }, {
		        field: 'orderDate',
		        title: 'OrderDate',
		        align: 'center',
			    valign: 'middle',
                formatter: function (value, row, index) {
                    return changeDateFormat(value)
                }
		    }, {
		        field: 'payment',
		        title: 'Payment',
		        align: 'center',
		    	valign: 'middle',
		    },{
                field: 'sendWay',
                title: 'SendWay',
                align: 'center',
                valign: 'middle',
                },{
                field: 'userphone',
                title: 'UserPhone',
                align: 'center',
                valign: 'middle',
            },{
                field: 'useraddress',
                title: 'UserAddress',
                align: 'center',
                valign: 'middle',
            },{
		    	field:'id',
		    	title: '操作',

		    	align: 'center',
		    	valign: 'middle',
                //events:operateEvents,//给按钮注册事件
                //formatter:AddFunctionAlty//给表格中添加按钮
                formatter:actionFormatter
		    }],
		          url: 'index',
		          method:'post',
		          search: true,//搜索
		          searchOnEnterKey: true, //按回车键后进行搜索
		          pagination: true,//是否显示分页
		          pageNumber: 1,//首次加载第一页
		          pageSize: 2,//每页显示条数
		          pageList: [2,3,5],//可供选择的每页的行数（*）
		          //toolbar:'#toolbar',工具按钮样式
		          sidePagination: 'server'//分页方式：默认客户端分页，修改为服务端分页
		});
	});
		
	</script>    <!-- Google analytics script-->
    <script type="text/javascript">
      if(document.location.hostname == 'pratikborsadiya.in') {
      	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      	ga('create', 'UA-72504830-1', 'auto');
      	ga('send', 'pageview');
      }
    function actionFormatter(value, row, index) {
    	  
    	    var id = value;
    	    var result = "";
    	    result += "<button type='button' class='btn btn-default btn-xs' onclick='EditViewById("+id+")'   role='button' data-toggle='modal' data-target='#myModal1' >编辑</button>   "
    	    //result += "<a href='javascript:;' onclick=\"EditViewById('" + id + "')\"   role='button' data-toggle='modal' data-target='#myModal1' >编辑|</a>";
            result += "<button type='button' class='btn btn-default btn-xs' onclick='DeleteById("+id+")'   role='button' data-toggle='modal' data-target='#myModal1' >删除</button>"
        //result += "<a href='javascript:;' onclick=\"DeleteById('" + id + "')\" >删除</a>";
    	    return result;
     }
     /* function  AddFunctionAlty(value,row,index) {
          return[
              '<button id="updateTable"   onclick=\\"EditViewById(\'" + id + "\')\\" type="button"class="btn btn-default" >编辑</button> &nbsp;&nbsp;&nbsp;',
              '<button id="deleteTable" onclick=\\"DeleteById(\'" + id + "\')\\"  type="button"class="btn btn-default">删除</button>',
          ].join("")
      }*/
      function changeDateFormat(value){
          var dateVal = value + "";
          if (value != null){
              var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
              var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
              var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();

              return date.getFullYear() + "-" + month + "-" + currentDate ;
          }
      }
      /*//转换日期格式
      function getFormatDate(startTime) {
          var date = new Date(startTime);
          var seperator1 = "-";
          var year = date.getFullYear();
          var month = date.getMonth() + 1;
          var strDate = date.getDate();
          if (month >= 1 && month <= 9) {
              month = "0" + month;
          }
          if (strDate >= 0 && strDate <= 9) {
              strDate = "0" + strDate;
          }
          var formatdate = year + seperator1 + month + seperator1 + strDate;
          return formatdate;
      }*/
      function DeleteById(id){
    	  location.href="${pageContext.request.contextPath}/DeleteById?id="+id
      }
    /* function save1(){
  		var param = $("#myForm").serialize();
  		$.ajax({
  			url : "${pageContext.request.contextPath}/dosave1",
  			type : "post",
  			data : param,
  			dataType : "text",
  			success : function(rec) {
  			if (rec =="success") {
  				alert("新增成功");
  				location.href="${pageContext.request.contextPath}/toindex"
  			}
  			return false;
  		}
  	  })
  	}*/
      function EditViewById(id){

           var param="id="+id;
    		$.ajax({
    			url : "${pageContext.request.contextPath}/EditViewById",
    			type : "post",
                data:param,
    			dataType : "json",
    			success : function(rec) {
                    $("#id").val(rec.id);
                    $("#orderNumber").val(rec.orderNumber);
                    $("#userName").val(rec.userName);
                    $("#orderPrice").val(rec.orderPrice);
                    $("#orderDate").val(changeDateFormat(rec.orderDate));
                    $("#userphone").val(rec.userphone);
                    $("#useraddress").val(rec.useraddress);
                  //根据数据库来为radio打上勾
                    if (rec.payment =="0"){
                     $("#payment1").prop("checked", true);
                       }else if(rec.payment=="1"){
                      $("#payment2").prop("checked", true);
                      }else if(rec.payment =="2"){
                        $("#payment3").prop("checked", true);
                      }
                    if (rec.sendWay== "0"){
                        $("#sendWay1").prop("checked", true);
                    }else if(rec.sendWay =="1"){
                        $("#sendWay2").prop("checked", true);
                    }
                }
            })
      }
  	function edit(){

  		var param = $("#myForm").serialize();
  		$.ajax({
  			url : "${pageContext.request.contextPath}/DoEditViewById",
  			type : "post",
  			data : param,
  			dataType : "text",
  			success : function(rec) {

  			if (rec =="ok") {
  				alert("编辑成功");
  				location.href="${pageContext.request.contextPath}/toindex2"
  			}else{
                return false;
            }

  		}
  	  })
  	}
  	</script> 
  </body>
</html>