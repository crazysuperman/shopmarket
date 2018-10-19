<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商品浏览页面</title>
<meta http-equiv="keywords" content="JSPGOU演示站"/>
<meta http-equiv="description" content="JSPGOU演示站"/>
<link href="${pageContext.request.contextPath}/css/product/index_4.css" type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/product/list_3.css" type="text/css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/js/product/jquery1.42.min_4.js" type="text/javascript"></script>
<script>
$(function(){
    $('#nav_category').mouseenter(function(){
        $(this).addClass('active');
    }).mouseleave(function(){
        $(this).removeClass('active');
    });
});


function getJvForm(){
	return document.getElementById("jvForm");
}


$(function(){
    $('#nav_category').mouseenter(function(){
        $(this).addClass('active');
    }).mouseleave(function(){
        $(this).removeClass('active');
    });
});


//品牌确认控制
function smallChange(obj) {
	var smObj = document.getElementsByName("brand");
	var bigObj = document.getElementById("bigclassauthorize");
	if (obj.checked == true){
		bigObj.style.display='block';
	}else {
		b = true;
		for (var i = 0; i < smObj.length; i++) {
			if (smObj[i].checked == true){
				b = false;
			}				
		}
		if (b == true){
			bigObj.style.display='none';
		}
	}
}

//品牌多选
function MultiBrand() {  
    var bb = "";  
    var temp = "";  
    var a = document.getElementsByName("brand");  
	    for ( var i = 0; i < a.length; i++) {  
		    if (a[i].checked) {  
			    temp = a[i].value;  
			    bb = bb + "," +temp;  
		    }  
	    }  
    document.getElementById("brandId").value = bb.substring(1, bb.length); 
    var jvForm = getJvForm();
	jvForm.onsubmit=null;
	jvForm.submit();
}

//品牌确认控制
function smallChange(obj) {
	var smObj = document.getElementsByName("brand");
	var bigObj = document.getElementById("bigclassauthorize");
	if (obj.checked == true){
		bigObj.style.display='block';
	}else {
		b = true;
		for (var i = 0; i < smObj.length; i++) {
			if (smObj[i].checked == true){
				b = false;
			}				
		}
		if (b == true){
			bigObj.style.display='none';
		}
	}
}


//品牌更多，收起
function showMoreq(a,d){
	if(jQuery("#FacetBrandsMoreBtnq")[0]&&jQuery("#FacetBrandsBackBtnq")[0]){
		if(d&&d=="more"){
			jQuery("#FacetBrandsMoreBtnq")[0].style.display="none";
            jQuery("#FacetBrandsBackBtnq")[0].style.display="block";
        }else{
        	jQuery("#FacetBrandsMoreBtnq")[0].style.display="block";
        	jQuery("#FacetBrandsBackBtnq")[0].style.display="none";
        }
    }
	var c=9;
	if(typeof(cateType)!="undefined"&&cateType==1){c=9;}
	var b=$("#"+a).children();
	if(d&&d=="more"){
		b.each(function(e){$(this).show()})
	}else{
		b.each(function(e){if(e>c){$(this).hide()}})
	}
}


//价格确认按钮
function searchPriceRange(cid,search){
	var d=$("#headPrice").val();
	var a=$("#footPrice").val();
   if((d=="")||(a=="")||(d=="￥")||(a=="￥")){
	   alert("请输入价格区间");
   }else if(a<d){
		   alert("输入价格区间 右值必须大于或等于左值");
		   a.focus();return;
	}else{
       if(search==""){
           search="-1";
           location.href="${pageContext.request.contextPath}/price/"+cid+"/"+search+"/"+d+"/"+a+"/"+1;
       }else{
           location.href="${pageContext.request.contextPath}/price/"+cid+"/"+search+"/"+d+"/"+a+"/"+1;
       }

   }

}
//价格清除按钮
function cleanPrice(){
	 document.getElementById("startPrice").value="￥";
	 document.getElementById("endPrice").value="￥";
}
</script>
</head>

<body>

	<%--页面首部 begin--%>
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
                <c:if test="${user.username!=null}">
                    <li class="Topbar-welcome-item"><a href="${pageContext.request.contextPath}/tologinout">退出登录</a></li>
                </c:if>
                <li class="Topbar-welcome-item"><a
                        href="${pageContext.request.contextPath}/toregisteruser">免费注册</a></li>
            </ul>
        </div>
    </div>
	<%--页面首部 end--%>

	<script type="text/javascript">
	console.log(2);
		localStorage.removeItem("sessionKey"); 
		localStorage.removeItem("userName"); 
 </script><script src="${pageContext.request.contextPath}/js/product/jquery_3.js" type="text/javascript"></script>

<%--logo旁边的查询及购物车区  begin--%>
	<div class="Header">
    <div class="ctr pr">
        <a href="/"><div class="Logo">
                <img src="${pageContext.request.contextPath}/picture/product/logo_4.jpg" width="158" height="58" />
            </div></a>
        <%--模糊查询 begin--%>
        <form class="Search"  id="searchForm" action="#">
            <input id="search_form_input" class="Search-input zi2" type="text"
                 name="search" id="q" value="请输入关键词" type="text"
                onfocus="if(this.value=='请输入关键词')this.value=''"
                onblur="if(this.value=='')this.value='请输入关键词'">

            <input class="Search-submit" value="搜索" onclick="sousuo();"  type="button">
        </form>
        <%--模糊查询 end--%>
       <%-- 模糊查询下的搜索框 begin--%>
        <div class="Search-hot">
        </div>
        <%-- 模糊查询下的搜索框 end--%>
        <script type="text/javascript">
            function parssKey(o) {
                var v = o.id;
                $("#q").val(v);
                document.getElementById("searchForm").submit();
            }

            function sousuo(){
                var a=$("input[name='search']").val();
                if(a=="请输入关键词"){
                    alert("亲！请输入关键词");
                }else{
                    $("#searchForm").attr("action","${pageContext.request.contextPath}/search/"+a+"/1");
                    document.getElementById("searchForm").submit();
                }
            } 

           
        </script>

        <%--购物车 begin--%>
        <div class="top_shopping">
        	<i></i>
        		<a href="${pageContext.request.contextPath}/cart/${user.uid}">我的购物车 </a>
        </div>

        <%--购物车 end--%>
    </div>
</div>
<%--logo旁边的查询区 begin--%>

	<!--商品类目栏 begin  -->
	<div class="Nav">
		<ul class="ctr cf pr">


			<!--导航栏 begin -->
                           <li class="Nav-item fl first active"><a href="${pageContext.request.contextPath}/"  id="nav0" onmouseover="jte(this,0)">首页</a></li>
			          <input type="hidden" id="hidden1" value="6"></input>
			<%--商品种类导航--%>
			<c:forEach var="cate" items="${categorys}" varStatus="vs">
				<li class="Nav-item fl"> <a href="${pageContext.request.contextPath}/product/${cate.cid}/1"  id="nav"+${vs.count} class="white"  onmouseover="jte(this,6)">${cate.cname}</a></li>
				<input type="hidden" id="hidden"+${vs.count+1} value="6"></input>
			</c:forEach>

          <script type="text/javascript">
				 function jte(obj,n){
				    obj.className="current";
				     var t;
					 var id;
					 var s;
					 if(n!=0){
						 for(var i=0;i<=n;i++){
						   id ="nav"+i;
						   t = document.getElementById(id);
						   if(id != obj.id){
						   	 t.className="white";
						   }
						 }
					 }else{
						 n=document.getElementById("hidden1").value;
						 for(var i=0;i<=n;i++){
							   id ="nav"+i;
							   t = document.getElementById(id);
							   if(id != obj.id){
							   	 t.className="white";
							   }
							 }
					 }
				 }
   </script>

			<!--导航栏 end -->
		</ul>
	</div>
	<!--商品类目栏 end  -->

	<%--导航栏下的选择区 begin--%>
	<div class="category-filter">
    <div class="w">
        <div id="JS_category_filter" class="filter">

            <dl class="cat clearfix">
            <dt><a href="#">日用百货</a></dt>
            <dd>
            <table>
            <tr>
            <td height="21" id="JS_filter_cats">
            <a href="#"><strong>生活电器</strong></a>
            </td>
            </tr>
            </table>
            </dd>
            </dl>
            <form id="jvForm" action="index.htm">
            <!--品牌start  -->
            <dl class="brand clearfix" is-brand="true">
            <dt>品牌</dt>
            <input type="hidden" name="brandId" id="brandId" value=""/>
            <input type="hidden" name="isShow" id="isShow" value="0"/>
            <dd>
            <table style="table-layout:fixed;word-break:break-all;">
            <tr>
            <td>
            <div id="FacetBrandsAllq" class="shell" style="position: relative;max-height:53px;overflow:hidden" data-total="12" data-line="2">


            <span><a style="color:#ff0000; cursor:pointer;" href="${pageContext.request.contextPath}/product/0/1">全部</a></span>

            </div>
            </td>


            <td class="Multiselect">
            <input type="button" name="bigclassauthorize" id="bigclassauthorize" onclick="MultiBrand()" value="确定" style="display:none; padding:0 7px; border:1px solid #ddd; background:#fff; line-height:20px;"/>
            <!--    <a href="" class="JS_Multiselect"><span>+更多</span></a> -->

            </td>

            </tr>
            </table>

            </dd>
            </dl>
            <!--品牌end  -->
            </div>
            </div>
            </div>
	<%--导航栏下的选择区 end--%>

	<%--根据商品价格,综合排序等搜索商品 begin--%>
	<div class="w self-panel">
	<div class="self-wrap clearfix">
	<ul class="s-attrs clearfix" style="margin-right:10px;">
   <input type="hidden" name="orderBy" id="orderBy" value="0"/>
	<li class="normal"><a  title="默认排序">综合</a></li>
	<li ><a ><span>销量</span></a></li>
		 <li class="defaultPrice"><a  > <span>价格</span></a></li>
	<li ><a ><span>上架时间</span></a></li>
	</ul>
	<span style="margin-left:10px;">
	<input class="ip1" name="headPrice" id="headPrice" value="￥" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" class="number"
	onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'0')}else{this.value=this.value.replace(/\D/g,'')}" type="text" style=" font-family:微软雅黑; font-size:12px; color:#666666; float:left; width:50px; height:21px; border:1px solid #dfdfdf;"><span style=" font-family:微软雅黑; font-size:12px; color:#666666; float:left;"> - </span>
	<input class="ip2" name="footPrice" id="footPrice" value="￥" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
	onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'0')}else{this.value=this.value.replace(/\D/g,'')}" type="text" style=" font-family:微软雅黑; font-size:12px; color:#666666; float:left; width:50px; height:21px; border:1px solid #dfdfdf">
	<a  style="text-decoration: none;" onclick="searchPriceRange('${zpageProduct.cid}','${zpageProduct.search}');" id="JS_filter_price_btn" class="price-btn"><input type="button" value="确定" style="border:1px solid #dfdfdf; padding:0 5px; line-height:21px; background:#dddddd;"></a>
	<a style="text-decoration: none;" onclick="cleanPrice()" ><input type="button" value="清除" style="border:1px solid #dfdfdf; padding:0 5px; line-height:21px; background:#dddddd;"></a>
	</span>
	</div>
	</div>
	</form>
	<%--根据商品价格,综合排序等搜索商品 end--%>

<%--展示搜索出的商品以及下面的分页 begin--%>
	<form id="tableForm" action="#" method="get">
	<div id="JS_list_panel" class="list-panel">
	<div class="list-wrap">

	<%--商品总的UL begin--%>
	<ul class="list-goods clearfix" style="width:1220px;">
		<c:forEach var="zproduct" items="${zpageProduct.products}">
			<li class="g-item">
				<div class="g-dtl">
						<%--图片 begin--%>
					<a href="#" target="_blank"  >
			<img  class="d-img" src="${pageContext.request.contextPath}/${zproduct.pimage}" />
					</a>
						<%--图片 begin--%>

						<%--价格 begin--%>
					<div class="d-price clearfix">
						<strong class="fl p-money"><sub class="m-mark">￥</sub>
							<span class="m-count JS_async_price">
			${zproduct.price}
							</span></strong>
						<del class="fl p-del" style="margin-right: 0px;">
							<sub class="d-mark">￥</sub><del>
			${zproduct.price}
						</del>
						</del>
					</div>
						<%--价格 end--%>

						<%--详情 begin--%>
					<a href="#" target="_blank" title="" class="d-name">
						<span>${zproduct.pname}&nbsp;&nbsp;${zproduct.pdesc}</span>
					</a>
						<%--详情 end--%>
                   <%-- 加入购物车 begin--%>
            <a href="javascript:void(0)" onclick="addCart('${user.uid}','${zproduct.pname}','${zproduct.pimage}','${zproduct.price}',1,'${zproduct.price}','${zproduct.pid}')">加入购物车</a>
                   <%-- 加入购物车 end--%>
				</div>
			</li>
		</c:forEach>
        <script>
            function addCart(uid,pname,pimage,price,count,total_price,pid){
                var param = "uid="+uid+"&pname="+pname+"&pimage="+pimage+"&price="+price+"&count="+count+"&total_price="+total_price+"&pid="+pid;
                var url = "${pageContext.request.contextPath}/addcart";
                $.ajax({
                    url:url,
                    data:param,                 //传到服务器的参数
                    type:"post",                //请求的方式post|get
                    dataType:"text",            //返回值类型html|xml|text|json|script|jsonp
                    success:function(rec) {//交互成功
                        alert("成功添加到购物车");
                    }
                });
            }
        </script>

	<%--第一件商品 begin--%>
	<%--<li class="g-item">
	<div class="g-dtl">
		&lt;%&ndash;图片 begin&ndash;%&gt;
	<a href="/kongtiao/56.htm" target="_blank"  >
	<img  class="d-img" src="${pageContext.request.contextPath}/picture/product/18150829q1u1.jpg" />
	</a>&lt;%&ndash;图片 begin&ndash;%&gt;

		&lt;%&ndash;价格 begin&ndash;%&gt;
	<div class="d-price clearfix">
	<strong class="fl p-money"><sub class="m-mark">￥</sub>
	<span class="m-count JS_async_price">
	1599
	</span></strong>
	<del class="fl p-del" style="margin-right: 0px;">
	<sub class="d-mark">￥</sub><del>
	1599
	</del>
	</del>
	</div>
		&lt;%&ndash;价格 end&ndash;%&gt;

		&lt;%&ndash;详情 begin&ndash;%&gt;
	<a href="#" target="_blank" title="" class="d-name">
	<span>奥克斯（AUX）1.5匹 变频 冷暖电辅 二级能效 壁挂式空调</span>
	</a>&lt;%&ndash;详情 end&ndash;%&gt;

	</div>
	</li>--%>
	<%--第一件商品 end--%>



	<%--<li class="g-item">
	<div class="g-dtl">

	<a href="/pingbandianshi/55.htm" target="_blank"  >
	<img  class="d-img" src="${pageContext.request.contextPath}/picture/product/18150934pp92.jpg" />
	</a>

	<div class="d-price clearfix">
	<strong class="fl p-money"><sub class="m-mark">￥</sub>
	<span class="m-count JS_async_price">
	1299

	</span></strong>
	<del class="fl p-del" style="margin-right: 0px;">
	<sub class="d-mark">￥</sub><del>
	1299
	</del>
	</del>
	</div>
	<a href="" target="_blank" title="" class="d-name">
	<span>海尔彩电LE32G310G 32英寸高清LED液晶电视</span>
	</a>
	</div>
	</li>--%>

	<%--<li class="g-item">
	<div class="g-dtl">
	<a href="/riyongbaihuo/40.htm" target="_blank"  >
	<!--
	<img  style="width: 240;height: 150px;" src="${pageContext.request.contextPath}/picture/product/09110022apad_1.jpg" />
-->
	<img  class="d-img" src="${pageContext.request.contextPath}/picture/product/181607346du6.jpg" />


	</a>
	<div class="d-price clearfix">
	<strong class="fl p-money"><sub class="m-mark">￥</sub>
	<span class="m-count JS_async_price">
	0.1

	</span></strong>
	<del class="fl p-del" style="margin-right: 0px;">
	<sub class="d-mark">￥</sub><del>
	100
	</del>
	</del>
	</div>
	<a href="" target="_blank" title="" class="d-name">
	<span>快乐学习</span>
	</a>
	</div>
	</li>--%>

	<%--<li class="g-item">
	<div class="g-dtl">
	<a href="/riyongbaihuo/33.htm" target="_blank"  >
	<!--
	<img  style="width: 240;height: 150px;" src="${pageContext.request.contextPath}/picture/product/081332452i71_1.jpg" />
	<img  class="d-img" src="${pageContext.request.contextPath}/picture/product/18163035h9zj.jpg" />


	</a>
	<div class="d-price clearfix">
	<strong class="fl p-money"><sub class="m-mark">￥</sub>
	<span class="m-count JS_async_price">
	159

	</span></strong>
	<del class="fl p-del" style="margin-right: 0px;">
	<sub class="d-mark">￥</sub><del>
	159
	</del>
	</del>
	</div>
	<a href="" target="_blank" title="" class="d-name">
	<span>护栏加宽置物架</span>
	</a>
	</div>
	</li>
	<li class="g-item">
	<div class="g-dtl">
	<a href="/riyongbaihuo/32.htm" target="_blank"  >
	<!--
	<img  style="width: 240;height: 150px;" src="${pageContext.request.contextPath}/picture/product/08133139vwiz_1.jpg" />
-->
	<img  class="d-img" src="${pageContext.request.contextPath}/picture/product/181534550h95.jpg" />


	</a>
	<div class="d-price clearfix">
	<strong class="fl p-money"><sub class="m-mark">￥</sub>
	<span class="m-count JS_async_price">
	123

	</span></strong>
	<del class="fl p-del" style="margin-right: 0px;">
	<sub class="d-mark">￥</sub><del>
	123
	</del>
	</del>
	</div>
	<a href="" target="_blank" title="" class="d-name">
	<span>巧妇收纳秘籍</span>
	</a>
	</div>
	</li>--%>

	<%--<li class="g-item">
	<div class="g-dtl">
	<a href="#" target="_blank"  >
	<!--
	<img  style="width: 240;height: 150px;" src="${pageContext.request.contextPath}/picture/product/08133008d6xt_1.jpg" />
-->
	<img  class="d-img" src="${pageContext.request.contextPath}/picture/product/18152800vnjg.jpg" />


	</a>
	<div class="d-price clearfix">
	<strong class="fl p-money"><sub class="m-mark">￥</sub>
	<span class="m-count JS_async_price">
	147

	</span></strong>
	<del class="fl p-del" style="margin-right: 0px;">
	<sub class="d-mark">￥</sub><del>
	147
	</del>
	</del>
	</div>
	<a href="" target="_blank" title="" class="d-name">
	<span>德国进口热水袋</span>
	</a>
	</div>
	</li>--%>

	</ul>
	<%--商品总的UL end--%>

	</div>
	</div>
	<%--分页搜索 begin--%>

	<%--<div class="scott">
&nbsp;
        <c:if test="${1!=zpageProduct.pageNumber}">
            <a class="disabled" href="${pageContext.request.contextPath}/product/${zpageProduct.cid}/${zpageProduct.pageNumber-1}" >上一页</a>
        </c:if>
        <c:forEach var="i" begin="1" end="${zpageProduct.totalPages}" step="1">
            <c:if test="${i==zpageProduct.pageNumber}">
                <span class="current">${i}</span>
            </c:if>
            <c:if test="${i!=zpageProduct.pageNumber}">
                <a id="page_1" href="${pageContext.request.contextPath}/product/${zpageProduct.cid}/${i}">${i}</a>
            </c:if>
        </c:forEach>
&nbsp;&nbsp;&nbsp;到第&nbsp;&nbsp;<input type="text" id="_goPs" class="ssinput" style="width:64px; border:#c3c3c3 1px

solid;" /> 页  <button type="button"  onclick="_gotoPage($('#_goPs').val(),'${zpageProduct.cid}','${zpageProduct.totalPages}');"  class="menu_queding">确定</button>
</div>
	<script type="text/javascript">
function _gotoPage(pageNumber,cid,totalPages) {
    var r = /^\+?[1-9][0-9]*$/;　　//正整数,正则表达式
    if( !r.test(pageNumber) ||parseInt(pageNumber)>totalPages){
        $("#_goPs").val('');
    }else{
        var url ="${pageContext.request.contextPath}/product/"+cid+"/"+pageNumber;
        $("#tableForm").attr('action',url);
        $("#tableForm").submit();
    }
}
</script>--%>

    <%--类别下的搜索分页 begin--%>
    <c:if test="${zpageProduct.cid!=-1&&zpageProduct.headPrice==-1}">
        <div class="scott">
            &nbsp;
            <c:if test="${1!=zpageProduct.pageNumber}">
                <a class="disabled" href="${pageContext.request.contextPath}/product/${zpageProduct.cid}/${zpageProduct.pageNumber-1}" >上一页</a>
            </c:if>
            <c:forEach var="i" begin="1" end="${zpageProduct.totalPages}" step="1">
                <c:if test="${i==zpageProduct.pageNumber}">
                    <span class="current">${i}</span>
                </c:if>
                <c:if test="${i!=zpageProduct.pageNumber}">
                    <a id="page_1" href="${pageContext.request.contextPath}/product/${zpageProduct.cid}/${i}">${i}</a>
                </c:if>
            </c:forEach>
            &nbsp;&nbsp;&nbsp;到第&nbsp;&nbsp;<input type="text" id="_goPs" class="ssinput" style="width:64px; border:#c3c3c3 1px

solid;" /> 页  <button type="button"  onclick="_gotoPage($('#_goPs').val(),'${zpageProduct.cid}','${zpageProduct.search}','${zpageProduct.headPrice}','${zpageProduct.footPrice}','${zpageProduct.totalPages}');"  class="menu_queding">确定</button>
        </div>
        <script type="text/javascript">
            function _gotoPage(pageNumber,cid,search,headPrice,footPrice,totalPages) {
                var r = /^\+?[1-9][0-9]*$/;　　//正整数,正则表达式
                if( !r.test(pageNumber) ||parseInt(pageNumber)>totalPages){
                    $("#_goPs").val('');
                }else{
                    var url ="${pageContext.request.contextPath}/price/"+cid+"/"+search+"/"+headPrice+"/"+footPrice+"/"+pageNumber;
                    $("#tableForm").attr('action',url);
                    $("#tableForm").submit();
                }
            }
        </script>
    </c:if>
    <%--类别下的搜索分页 end-%>

    <%-- 模糊查询下的搜索分页 begin--%>
    <c:if test="${zpageProduct.search!=null&&zpageProduct.headPrice==-1}">
        <div class="scott">
            &nbsp;
            <c:if test="${1!=zpageProduct.pageNumber}">
                <a class="disabled" href="${pageContext.request.contextPath}/search/${zpageProduct.search}/${zpageProduct.pageNumber-1}" >上一页</a>
            </c:if>
            <c:forEach var="i" begin="1" end="${zpageProduct.totalPages}" step="1">
                <c:if test="${i==zpageProduct.pageNumber}">
                    <span class="current">${i}</span>
                </c:if>
                <c:if test="${i!=zpageProduct.pageNumber}">
                    <a id="page_1" href="${pageContext.request.contextPath}/search/${zpageProduct.search}/${i}">${i}</a>
                </c:if>
            </c:forEach>
            &nbsp;&nbsp;&nbsp;到第&nbsp;&nbsp;<input type="text" id="_goPs" class="ssinput" style="width:64px; border:#c3c3c3 1px

solid;" /> 页  <button type="button"  onclick="_gotoPage($('#_goPs').val(),'${zpageProduct.search}','${zpageProduct.totalPages}');"  class="menu_queding">确定</button>
        </div>
        <script type="text/javascript">
            function _gotoPage(pageNumber,search,totalPages) {
                var r = /^\+?[1-9][0-9]*$/;　　//正整数,正则表达式
                if( !r.test(pageNumber) ||parseInt(pageNumber)>totalPages){
                    $("#_goPs").val('');
                }else{
                    var url ="${pageContext.request.contextPath}/search/"+search+"/"+pageNumber;
                    $("#tableForm").attr('action',url);
                    $("#tableForm").submit();
                }
            }
        </script>
    </c:if>
    <%-- 模糊查询下的搜索分页 end--%>

    <%--价格与类别或模糊查询综合的搜索分页 begin--%>
    <c:if test="${zpageProduct.headPrice!=-1}">
            <div class="scott">
                &nbsp;
                <c:if test="${1!=zpageProduct.pageNumber}">
                    <a class="disabled" href="${pageContext.request.contextPath}/price/${zpageProduct.cid}/${zpageProduct.search}/${zpageProduct.headPrice}/${zpageProduct.footPrice}/${zpageProduct.pageNumber-1}" >上一页</a>
                </c:if>
                <c:forEach var="i" begin="1" end="${zpageProduct.totalPages}" step="1">
                    <c:if test="${i==zpageProduct.pageNumber}">
                        <span class="current">${i}</span>
                    </c:if>
                    <c:if test="${i!=zpageProduct.pageNumber}">
                        <a id="page_1" href="${pageContext.request.contextPath}/price/${zpageProduct.cid}/${zpageProduct.search}/${zpageProduct.headPrice}/${zpageProduct.footPrice}/${i}">${i}</a>
                    </c:if>
                </c:forEach>
                &nbsp;&nbsp;&nbsp;到第&nbsp;&nbsp;<input type="text" id="_goPs" class="ssinput" style="width:64px; border:#c3c3c3 1px

solid;" /> 页  <button type="button"  onclick="_gotoPage($('#_goPs').val(),'${zpageProduct.cid}','${zpageProduct.totalPages}');"  class="menu_queding">确定</button>
            </div>
            <script type="text/javascript">
                function _gotoPage(pageNumber,cid,totalPages) {
                    var r = /^\+?[1-9][0-9]*$/;　　//正整数,正则表达式
                    if( !r.test(pageNumber) ||parseInt(pageNumber)>totalPages){
                        $("#_goPs").val('');
                    }else{
                        var url ="${pageContext.request.contextPath}/product/"+cid+"/"+pageNumber;
                        $("#tableForm").attr('action',url);
                        $("#tableForm").submit();
                    }
                }
            </script>
        </c:if>
    <%--价格与类别或模糊查询综合的搜索分页 begin--%>

        <%--分页搜索 end--%>





	<%--清除浮动--%>
	<div id="hisAssociated" style="clear:both;"></div>
	</form>
<%--展示搜索出的商品以及下面的分页 end--%>




	<div class="clear"></div>
	<%--页尾 begin--%>
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
            <img class="QR-img" src="${pageContext.request.contextPath}/picture/product/jspgou-wx_4.jpg" >
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
	<%--页尾 end--%>
</html>