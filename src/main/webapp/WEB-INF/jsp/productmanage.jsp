<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="ch">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="左右结构项目，属于大人员的社交工具">
    <meta name="keywords" content="左右结构项目 社交 占座 ">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <title>Bootstrap左右结构响应式后台管理模板</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/common.css" />
    <link rel="stylesheet" type="text/css" href="css/slide.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="css/flat-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="css/jquery.nouislider.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-table.min.css">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">
</head>

<body>
<div id="wrap">
    <!-- 左侧菜单栏目块 -->
    <div class="leftMeun" id="leftMeun">
        <div id="logoDiv">
            <p id="logoP"><img id="logo" alt="左右结构项目" src="images/logo.png"><span>左右结构项目</span></p>
        </div>
        <div id="personInfor">
            <p id="userName">杨鹏</p>
            <p><span>yangxp@qq.com</span> More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
            <p>
                <a>退出登录</a>
            </p>
        </div>
        <div class="meun-title">账号管理</div>
        <div class="meun-item meun-item-active" href="#sour" aria-controls="sour" role="tab" data-toggle="tab"><img src="images/icon_source.png">商品管理</div>
        <div class="meun-item" href="#char" aria-controls="char" role="tab" data-toggle="tab" onclick="toStore()"><img src="images/icon_chara_grey.png">店铺管理</div>
        <div class="meun-item" href="#user" aria-controls="user" role="tab" data-toggle="tab"><img src="images/icon_user_grey.png">用户管理</div>
        <div class="meun-item" href="#chan" aria-controls="chan" role="tab" data-toggle="tab"><img src="images/icon_change_grey.png">订单管理</div>
        <div class="meun-item" href="#chan" aria-controls="chan" role="tab" data-toggle="tab"><img src="images/icon_change_grey.png">分类管理</div>
    </div>
    <!-- 右侧具体内容栏目 -->
    <div id="rightContent">
        <a class="toggle-btn" id="nimei">
            <i class="glyphicon glyphicon-align-justify"></i>
        </a>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- 商品管理模块 -->
            <div role="tabpanel" class="tab-pane active" id="sour">

                <div class="check-div">
                    <button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addChar">添加商品</button>
                </div>
                <div class="data-div">
                    <table id="storetable">

                    </table>

                </div>
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
                                    <form class="form-horizontal" id="addform" method="post" action="saveproduct" enctype="multipart/form-data">
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
                                                <input type="text" class="form-control input-sm duiqi" name="price" placeholder="">
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
                                    <form class="form-horizontal" method="post" action="updateproduct" enctype="multipart/form-data">
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

            </div>
        </div>
    </div>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="js/bootstrap-table-zh-CN.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
<script>

    function toStore() {
        //alert("yi");
        location.href="storemanage";
    }
    function validate(){
        $("#saveid").val($("#area").val())
        //alert($("#area").val());
    }
    function valiupdate(){
        $("#modifysdesc").val($("#modifyarea").val())

    }
    $(function () {
        $("#delStore").click(function () {
            var id = $("#delid").val();
            var param = $("#delform").serialize();
            alert(param)
            $.ajax({

                /*data:{
                    _method:"delete",
                },*/
                data:param,
                dataType:"text",
                type:"DELETE",
                url:"deletestore",
                contentType:"application/x-www-form-urlencoded; charset=utf-8",
                success:function(rec){
                    alert(rec);

                }



            })
        })
    });

</script>
<script>
    $(function() {
        $(".meun-item").click(function() {
            $(".meun-item").removeClass("meun-item-active");
            $(this).addClass("meun-item-active");
            var itmeObj = $(".meun-item").find("img");
            itmeObj.each(function() {
                var items = $(this).attr("src");
                items = items.replace("_grey.png", ".png");
                items = items.replace(".png", "_grey.png")
                $(this).attr("src", items);
            });
            var attrObj = $(this).find("img").attr("src");
            ;
            attrObj = attrObj.replace("_grey.png", ".png");
            $(this).find("img").attr("src", attrObj);
        });
    })
</script>
<script type="text/javascript">
    $(function(){
        $("#storetable").bootstrapTable({
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
            //data: [{ id: 1, sname: 'Item 1', sage: '21', ssex:'男', birthday:'1996-01-23', address:'江干' }]
            url: 'listproduct?sid='+${sessionstore.id},
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

</script>
</body>

</html>