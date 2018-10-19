<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>我的购物车</title>
    <link href="css/cart/index_1.css" type="text/css" rel="stylesheet" />
    <link href="css/cart/buy.css" type="text/css" rel="stylesheet" />
    <link href="css/cart/cart.css" type="text/css" rel="stylesheet" />

</head>
<body>
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

<script type="text/javascript">
    localStorage.setItem("sessionKey",'afd783e896f73af04c63c4c8037be96e911e6199148baf324d41762d70bcff3e4b6274215d7eb2565d6203de80100d0f');
    localStorage.setItem("userName", 'test1');
</script><%--<script src="js/jquery_1.js" type="text/javascript"></script>--%>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>

<div class="Header">
    <div class="ctr pr">
        <a href="/"><div class="Logo">
            <img src="picture/cart/logo_1.jpg" width="158" height="58" />
        </div></a>
        <form class="Search"  id="searchForm" action="#">
            <input id="search_form_input" class="Search-input zi2" type="text"
                   name="q" id="q" value="请输入关键词" type="text"
                   onfocus="if(this.value=='请输入关键词')this.value=''"
                   onblur="if(this.value=='')this.value='请输入关键词'">
            <input class="Search-submit" value="搜索" onclick="sousuo();"  type="button">
        </form>

        <script type="text/javascript">
            function sousuo(){
                var a=$("input[name='q']").val();
                if(a=="请输入关键词"){
                    alert("亲！请输入关键词");
                }else{
                    document.getElementById("searchForm").submit();

                }
            }
        </script>
        <%--<div class="top_shopping">
            &lt;%&ndash;<i></i>&ndash;%&gt;
            &lt;%&ndash;<a href="#">我的购物车(<span id="cart_total_items"></span>) </a>&ndash;%&gt;
        </div>--%>


    </div>
</div><!--商品类目栏 begin  -->
<div class="Nav">
    <ul class="ctr cf pr">
        <!--导航栏 begin -->
        <li class="Nav-item fl first active"><a href="#"   id="nav0" onmouseover="jte(this,0)">首页</a></li>
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
<!--商品类目栏 end  --><div class="w">
    <div id="topcolumn"></div>
    <div class="weizhi">您当前的位置：<a href="#" target="_blank">首页</a> > 我的购物车</div>

    <div class="gray-box pro-li">
        <form id="jvForm" action="#" method="post">

            <div class="shop_name">
                <h2>
                    <input type="checkbox" id="chkBill" class="chkAllBill" onclick="checkedStatus(this.id);" name="bagCheckbox" checked/>
                    <label >商家：JSPGOU店 </label>
                </h2>
            </div>
            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="clear list">

                <tr>
                    <th width="35"></th>
                    <th width="70"></th>
                    <th width="310">商品名称</th>
                    <th width="80">单价</th>
                    <th width="80">数 量</th>
                    <th width="172">商品合计</th>
                    <th width="70">操 作</th>
                </tr>
                <c:forEach items="${carts}" var="product" varStatus="vs">
                <tr class="select s_price" id="product${product.id}">
                    <td class="first_td">
                        <input type="hidden" id="id${product.id}" value="${product.id}">
                        <input type="checkbox" id="cb${product.id}" checked="checked" onchange="cbchange('${product.id}')"/>
                    </td>
                    <td>
                        <img src="${pageContext.request.contextPath}/${product.pimage}" width="60" height="60"/>
                    </td>
                    <td >
                            ${product.pname}
                    </td>
                    <td >
                        <strong class="red">￥<span  id="sp${product.id}">${product.price}</span></strong>
                    </td>

                    <td >
                        <input type="text" id="pt${product.id}" value="${product.count}" class="num" onchange="changeTotal('${product.id}')"/>
                    </td>

                    <td >
                        <strong class="red">￥<span id="tp${product.id}" class="ss_price">${product.total_price}</span></strong>
                    </td>
                    <td >
                        <a href="javascript:void(0)"  onclick="deleteFromCart('${product.id}')">删除</a>
                    </td>
                </tr>
                </c:forEach>
            </table>
        </form>
    </div>
    <div>
        <div class="fix_btm_bar clearfix">
            <div class="fr">
                <strong> 商品总价（未包含运费）： <span class="red" id="total">0</span>元 </strong>
                <button id="nextstep" class="ctn_shopping" onclick="continueShopping();">继续购物</button>
                <input type="button" id="confirmToPay" class="settlement" onclick="commitOrder();" value="确认结账" />
                <input type="hidden" id="allTrackerInfo" name="allTrackerInfo" value="confirmToPayButton:{items:[{pId:1006563,mid:3,num:5,price:69.5},{pId:1764278,mid:3,num:4,price:79.6}],proms:[]}" />
            </div>

        </div>
    </div>
    </form>

    <div id="cart2BlockUI" style="display:none"></div>
    <div class="recommend_sp" style="margin-top:30px;">
        <div class="recommend_title">推荐商品</div>
        <ul class="tj_spul">
            <li>
                <a href="/sanxing/11.htm" target="_blank">
                    <img src="picture/cart/06161342epsy.jpg" width="132" height="132" />
                    <p>Meizu/魅族 MX6</p>
                    <p style="text-align:left; color:#cc0000; font-size:20px;">
                        ¥1699
                    </p>
                </a>
            </li>
            <li>
                <a href="/Iphone/12.htm" target="_blank">
                    <img src="picture/cart/0616183833km.jpg" width="132" height="132" />
                    <p>小米手环2蓝牙</p>
                    <p style="text-align:left; color:#cc0000; font-size:20px;">
                        ¥100
                    </p>
                </a>
            </li>
            <li>
                <a href="/xj/13.htm" target="_blank">
                    <img src="picture/cart/06162301f2zj.jpg" width="132" height="132" />
                    <p>天猫魔盒3Pro</p>
                    <p style="text-align:left; color:#cc0000; font-size:20px;">
                        ¥100
                    </p>
                </a>
            </li>
            <li>
                <a href="/bjb/14.htm" target="_blank">
                    <img src="picture/cart/06162402vno3.jpg" width="132" height="132" />
                    <p>Asus/华硕 FX</p>
                    <p style="text-align:left; color:#cc0000; font-size:20px;">
                        ¥1000
                    </p>
                </a>
            </li>
            <li>
                <a href="/tsj/15.htm" target="_blank">
                    <img src="picture/cart/061625384z8h.jpg" width="132" height="132" />
                    <p>Edifier/漫步者</p>
                    <p style="text-align:left; color:#cc0000; font-size:20px;">
                        ¥100
                    </p>
                </a>
            </li>
            <li>
                <a href="/bg/16.htm" target="_blank">
                    <img src="picture/cart/061626478mo5.jpg" width="132" height="132" />
                    <p>虚拟现实3d眼镜</p>
                    <p style="text-align:left; color:#cc0000; font-size:20px;">
                        ¥100
                    </p>
                </a>
            </li>
        </ul>
    </div>
</div>
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
            <img class="QR-img" src="picture/cart/jspgou-wx.jpg" >
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
</div>

<script type="text/javascript">
    (function(i){
        if(/1\.(0|1|2)\.(0|1|2)/.test(i.fn.jquery)||/^1.1/.test(i.fn.jquery)){
            alert("blockUI requires jQuery v1.2.3 or later! You are using v"+i.fn.jquery);return}
        i.fn._fadeIn=i.fn.fadeIn;
        var c=function(){};
        var j=document.documentMode||0;
        var e=i.browser.msie&&((i.browser.version<8&&!j)||j<8);
        var f=i.browser.msie&&/MSIE 6.0/.test(navigator.userAgent)&&!j;
        i.blockUI=function(p){d(window,p);};
        i.unblockUI=function(p){
            h(window,p);
        };
        i.growlUI=function(t,r,s,p){
            var q=i('<div class="growlUI"></div>');
            if(t){q.append("<h1>"+t+"</h1>");}
            if(r){q.append("<h2>"+r+"</h2>");}
            if(s==undefined){s=3000;}
            i.blockUI({
                message:q,
                fadeIn:700,
                fadeOut:1000,
                centerY:false,
                timeout:s,
                showOverlay:false,
                onUnblock:p,
                css:i.blockUI.defaults.growlCSS});
        };
        i.fn.block=function(p){
            return this.unblock({fadeOut:0}).each(function(){
                if(i.css(this,"position")=="static"){
                    this.style.position="relative";
                }
                if(i.browser.msie){
                    this.style.zoom=1;
                }
                d(this,p);
            })
        };
        i.fn.unblock=function(p){
            return this.each(
                function(){h(this,p);}
            )
        };
        i.blockUI.version=2.33;
        i.blockUI.defaults={
            message:"<h1>Please wait...</h1>",
            title:null,
            draggable:true,
            theme:false,
            css:{padding:0,margin:0,width:"30%",top:"40%",left:"35%",textAlign:"center",color:"#000",border:"3px solid #aaa",backgroundColor:"#fff",cursor:"wait"},
            themedCSS:{width:"30%",top:"40%",left:"35%"},
            overlayCSS:{backgroundColor:"#000",opacity:0.6,cursor:"wait"},
            growlCSS:{width:"350px",top:"10px",left:"",right:"10px",border:"none",padding:"5px",opacity:0.6,cursor:"default",color:"#fff",backgroundColor:"#000","-webkit-border-radius":"10px","-moz-border-radius":"10px","border-radius":"10px"},
            iframeSrc:/^https/i.test(window.location.href||"")?"javascript:false":"about:blank",
            forceIframe:false,
            baseZ:1000,
            centerX:true,
            centerY:true,
            allowBodyStretch:true,
            bindEvents:true,
            constrainTabKey:true,
            fadeIn:200,
            fadeOut:400,
            timeout:0,
            showOverlay:true,
            focusInput:true,
            applyPlatformOpacityRules:true,
            onBlock:null,
            onUnblock:null,
            quirksmodeOffsetHack:4
        };
        var b=null;
        var g=[];
        function d(r,F){
            var A=(r==window);
            var w=F&&F.message!==undefined?F.message:undefined;
            F=i.extend({},i.blockUI.defaults,F||{});
            F.overlayCSS=i.extend({},i.blockUI.defaults.overlayCSS,F.overlayCSS||{});
            var C=i.extend({},i.blockUI.defaults.css,F.css||{});
            var N=i.extend({},i.blockUI.defaults.themedCSS,F.themedCSS||{});
            w=w===undefined?F.message:w;
            if(A&&b){h(window,{fadeOut:0})}
            if(w&&typeof w!="string"&&(w.parentNode||w.jquery)){
                var I=w.jquery?w[0]:w;
                var P={};
                i(r).data("blockUI.history",P);
                P.el=I;
                P.parent=I.parentNode;
                P.display=I.style.display;
                P.position=I.style.position;
                if(P.parent){P.parent.removeChild(I)}
            }
            var B=F.baseZ;
            var M=(i.browser.msie||F.forceIframe)?i('<iframe class="blockUI" style="z-index:'+(B++)+';display:none;border:none;margin:0;padding:0;position:absolute;width:100%;height:100%;top:0;left:0" src="'+F.iframeSrc+'"></iframe>'):i('<div class="blockUI" style="display:none"></div>');
            var L=i('<div class="blockUI blockOverlay" style="z-index:'+(B++)+';display:none;border:none;margin:0;padding:0;width:100%;height:100%;top:0;left:0"></div>');
            var K,G;
            if(F.theme&&A){
                G='<div class="blockUI blockMsg blockPage ui-dialog ui-widget ui-corner-all" style="z-index:'+B+';display:none;position:fixed"><div class="ui-widget-header ui-dialog-titlebar blockTitle">'+(F.title||"&nbsp;")+'</div><div class="ui-widget-content ui-dialog-content"></div></div>'
            }else{
                if(F.theme){
                    G='<div class="blockUI blockMsg blockElement ui-dialog ui-widget ui-corner-all" style="z-index:'+B+';display:none;position:absolute"><div class="ui-widget-header ui-dialog-titlebar blockTitle">'+(F.title||"&nbsp;")+'</div><div class="ui-widget-content ui-dialog-content"></div></div>'
                }else{
                    if(A){
                        G='<div class="blockUI blockMsg blockPage" style="z-index:'+B+';display:none;position:fixed"></div>'
                    }else{
                        G='<div class="blockUI blockMsg blockElement" style="z-index:'+B+';display:none;position:absolute"></div>'
                    }
                }
            }
            K=i(G);
            if(w){
                if(F.theme){
                    K.css(N);K.addClass("ui-widget-content")
                }else{K.css(C)}
            }
            if(!F.applyPlatformOpacityRules||!(i.browser.mozilla&&/Linux/.test(navigator.platform))){L.css(F.overlayCSS)}
            L.css("position",A?"fixed":"absolute");
            if(i.browser.msie||F.forceIframe){M.css("opacity",0)}
            var y=[M,L,K],O=A?i("body"):i(r);
            i.each(y,function(){this.appendTo(O)});
            if(F.theme&&F.draggable&&i.fn.draggable){K.draggable({handle:".ui-dialog-titlebar",cancel:"li"})}
            var v=e&&(!i.boxModel||i("object,embed",A?null:r).length>0);
            if(f||v){
                if(A&&F.allowBodyStretch&&i.boxModel){i("html,body").css("height","100%")}
                if((f||!i.boxModel)&&!A){
                    var E=m(r,"borderTopWidth"),J=m(r,"borderLeftWidth");
                    var x=E?"(0 - "+E+")":0;
                    var D=J?"(0 - "+J+")":0
                }
                i.each([M,L,K],
                    function(t,S){
                        var z=S[0].style;z.position="absolute";
                        if(t<2){
                            A?z.setExpression("height","Math.max(document.body.scrollHeight, document.body.offsetHeight) - (jQuery.boxModel?0:"+F.quirksmodeOffsetHack+') + "px"'):z.setExpression("height",'this.parentNode.offsetHeight + "px"');
                            A?z.setExpression("width",'jQuery.boxModel && document.documentElement.clientWidth || document.body.clientWidth + "px"'):z.setExpression("width",'this.parentNode.offsetWidth + "px"');
                            if(D){z.setExpression("left",D)}
                            if(x){z.setExpression("top",x)}
                        }else{
                            if(F.centerY){
                                if(A){
                                    z.setExpression("top",'(document.documentElement.clientHeight || document.body.clientHeight) / 2 - (this.offsetHeight / 2) + (blah = document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop) + "px"')
                                }
                                z.marginTop=0
                            }else{
                                if(!F.centerY&&A){
                                    var Q=(F.css&&F.css.top)?parseInt(F.css.top):0;
                                    var R="((document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop) + "+Q+') + "px"';z.setExpression("top",R)
                                }
                            }
                        }
                    })
            }
            if(w){
                if(F.theme){
                    K.find(".ui-widget-content").append(w)
                }else{
                    K.append(w)
                }
                if(w.jquery||w.nodeType){i(w).show()}
            }
            if((i.browser.msie||F.forceIframe)&&F.showOverlay){M.show()}
            if(F.fadeIn){
                var H=F.onBlock?F.onBlock:c;
                var q=(F.showOverlay&&!w)?H:c;
                var p=w?H:c;if(F.showOverlay){L._fadeIn(F.fadeIn,q)}
                if(w){K._fadeIn(F.fadeIn,p)}
            }else{
                if(F.showOverlay){L.show()}
                if(w){K.show()}
                if(F.onBlock){F.onBlock()}
            }
            l(1,r,F);
            if(A){
                b=K[0];g=i(":input:enabled:visible",b);
                if(F.focusInput){
                    setTimeout(o,20)
                }
            }else{
                a(K[0],F.centerX,F.centerY)
            }
            if(F.timeout){
                var u=setTimeout(function(){
                        A?i.unblockUI(F):i(r).unblock(F)
                    },
                    F.timeout);i(r).data("blockUI.timeout",u)
            }
        }
        function h(s,t){
            var r=(s==window);var q=i(s);
            var u=q.data("blockUI.history");
            var v=q.data("blockUI.timeout");
            if(v){
                clearTimeout(v);
                q.removeData("blockUI.timeout")
            }
            t=i.extend({},i.blockUI.defaults,t||{});
            l(0,s,t);
            var p;
            if(r){
                p=i("body").children().filter(".blockUI").add("body > .blockUI")
            }else{
                p=i(".blockUI",s)
            }
            if(r){b=g=null}
            if(t.fadeOut){
                p.fadeOut(t.fadeOut);setTimeout(function(){k(p,u,t,s)},t.fadeOut)
            }else{
                k(p,u,t,s)
            }
        }
        function k(p,s,r,q){
            p.each(function(t,u){if(this.parentNode){this.parentNode.removeChild(this)}});
            if(s&&s.el){
                s.el.style.display=s.display;
                s.el.style.position=s.position;
                if(s.parent){s.parent.appendChild(s.el)}
                i(q).removeData("blockUI.history")
            }
            if(typeof r.onUnblock=="function"){r.onUnblock(q,r)}
        }
        function l(p,t,u){
            var s=t==window,r=i(t);
            if(!p&&(s&&!b||!s&&!r.data("blockUI.isBlocked"))){return}
            if(!s){r.data("blockUI.isBlocked",p)}
            if(!u.bindEvents||(p&&!u.showOverlay)){return}
            var q="mousedown mouseup keydown keypress";
            p?i(document).bind(q,u,n):i(document).unbind(q,n)
        }
        function n(s){
            if(s.keyCode&&s.keyCode==9){
                if(b&&s.data.constrainTabKey){
                    var r=g;
                    var q=!s.shiftKey&&s.target==r[r.length-1];
                    var p=s.shiftKey&&s.target==r[0];
                    if(q||p){setTimeout(function(){o(p)},10);return false}
                }
            }
            if(i(s.target).parents("div.blockMsg").length>0){return true}
            return i(s.target).parents().children().filter("div.blockUI").length==0
        }
        function o(p){
            if(!g){return}
            var q=g[p===true?g.length-1:0];
            if(q){q.focus()}
        }
        function a(w,q,A){
            var z=w.parentNode,v=w.style;
            var r=((z.offsetWidth-w.offsetWidth)/2)-m(z,"borderLeftWidth");
            var u=((z.offsetHeight-w.offsetHeight)/2)-m(z,"borderTopWidth");
            if(q){v.left=r>0?(r+"px"):"0"}
            if(A){v.top=u>0?(u+"px"):"0"}
        }
        function m(q,r){
            return parseInt(i.css(q,r))||0
        }
    })(jQuery);

    /*自动加载方法*/
    jQuery(function(){
        aa();
    });

    /*自动加载总重量，总价格，节省费用*/
    function aa(){
        var score=0;
        var weight=0.0;
        var market=0.0;
        var sale=0.0;
        var popularity=0.0;
        $("#[id^='total_score_items_']").each(function(){
            var ss=parseInt(jQuery(this).html());
            var h=this.id;
            var e=h.split("_")[3];
            var f=h.split("_")[4];
            if($("#chkMat_"+e+"_"+f).attr("checked")){
                score+=ss;
            }else{
                score=score;
            }
            $("#items_score").html(score);
        });
        $("#[id^='total_weight_items_']").each(function(){
            var ww=parseFloat(jQuery(this).html());
            weight =accAdd(weight,ww);
            $("#items_weight").html(weight);
        });

        $("#[id^='total_market_items_']").each(function(){
            var mk=parseFloat(jQuery(this).html());
            var h=this.id;
            var e=h.split("_")[3];
            var f=h.split("_")[4];
            if($("#chkMat_"+e+"_"+f).attr("checked")){
                market=accAdd(market,mk);
            }else{
                market=market;
            }
        });
        $("#[id^='total_sale_items_']").each(function(){
            var sl=parseFloat(jQuery(this).html());
            var h=this.id;
            var e=h.split("_")[3];
            var f=h.split("_")[4];
            if($("#chkMat_"+e+"_"+f).attr("checked")){
                sale=accAdd(sale,sl);
            }else{
                sale=sale;
            }
        });
        $("#[id^='total_popularity_']").each(function(){
            var ss=parseFloat(jQuery(this).html());
            popularity =accAdd(weight,ss);
        });
        sale=accSub(sale,popularity)
        $("#items_sale").html(sale);
        $("#total_price_bottom").html(sale);
        $("#items_spare").html(accSub(market,sale));
    }


    function accAdd(arg1,arg2){
        var r1,r2,m;
        try{r1=arg1.toString().split(".")[1].length;}catch(e){r1=0;}
        try{r2=arg2.toString().split(".")[1].length;}catch(e){r2=0;}
        m=Math.pow(10,Math.max(r1,r2));
        return (arg1*m+arg2*m)/m;

    }


    Number.prototype.add = function (arg){
        return accAdd(arg,this);
    };




    function accSub(arg1,arg2){
        var r1,r2,m,n;
        try{r1=arg1.toString().split(".")[1].length}catch(e){r1=0}
        try{r2=arg2.toString().split(".")[1].length}catch(e){r2=0}
        m=Math.pow(10,Math.max(r1,r2));
        //last modify by deeka
        //动态控制精度长度
        n=(r1>=r2)?r1:r2;
        return ((arg1*m-arg2*m)/m).toFixed(n);
    }


    //乘法函数，用来得到精确的乘法结果
    //说明：javascript的乘法结果会有误差，在两个浮点数相乘的时候会比较明显。这个函数返回较为精确的乘法结果。
    //调用：accMul(arg1,arg2)
    //返回值：arg1乘以arg2的精确结果
    function accMul(arg1,arg2)
    {
        var m=0,s1=arg1.toString(),s2=arg2.toString();
        try{m+=s1.split(".")[1].length}catch(e){}
        try{m+=s2.split(".")[1].length}catch(e){}
        return Number(s1.replace(".",""))*Number(s2.replace(".",""))/Math.pow(10,m)
    }
    //给Number类型增加一个mul方法，调用起来更加方便。
    Number.prototype.mul = function (arg){
        return accMul(arg, this);
    }


    /*数量 减法*/
    function decrement(base,itemId,j){
        var b=jQuery("#"+j).val();
        var a=/^[1-9]\d{0,2}$/g;
        if(!b.match(a)){
            alert("输入的数量有误,应为[1-99]");
            j.value="1";b=1;
        }
        var c=parseInt(b)-1;
        if(c<1){c=1;}
        var q=jQuery("#"+j).attr("oriNum");
        var d=parseInt(q);
        if(c>d){alert("该商品库存有限，您最多只能购买"+d+"件");c=d;}
        jQuery("#"+j).val(c);
        var h=jQuery("#"+j).attr("id");
        var e=h.split("_")[1];
        var index=h.split("_")[2];
        var mk=$("#market_items_"+e+"_"+index).html();
        var sl=$("#sale_items_"+e+"_"+index).html();
        var dweight=$("#weight_items_"+e+"_"+index).html();
        var score=$("#score_items_"+e+"_"+index).html();
        $("#total_market_items_"+e+"_"+index).html('');
        $("#total_market_items_"+e+"_"+index).html(accMul(mk,c));
        $("#total_sale_items_"+e+"_"+index).html('');
        $("#total_sale_items_"+e+"_"+index).html(accMul(sl,c));
        $("#total_weight_items_"+e+"_"+index).html('');
        $("#total_weight_items_"+e+"_"+index).html(accMul(dweight,c));
        $("#total_score_items_"+e+"_"+index).html('');
        $("#total_score_items_"+e+"_"+index).html(accMul(score,c));
        aa();
        $.post(base+"/cart/ajaxUpdateCartItem.jspx", {
            'cartItemId':itemId,
            'count':c
        }, function(data) {
            if(data.status==1){
                /*location.reload();*/
            }else{
                alert("更新不成功");
            }
        },'json');
    }




    /*数量 加法*/
    function increment(base,itemId,j){
        var b=jQuery("#"+j).val();
        var a=/^[1-9]\d{0,2}$/g;
        if(!b.match(a)){
            alert("输入的数量有误,应为[1-999]");
            f.value="1";b=1;
        }
        var c=parseInt(b)+1;
        if(c>999){c=999;}
        var q=jQuery("#"+j).attr("oriNum");
        var d=parseInt(q);
        if(c>d){alert("该商品库存有限，您最多只能购买"+d+"件");c=d;}
        jQuery("#"+j).val(c);
        var h=jQuery("#"+j).attr("id");
        var e=h.split("_")[1];
        var index=h.split("_")[2];
        var mk=$("#market_items_"+e+"_"+index).html();
        var sl=$("#sale_items_"+e+"_"+index).html();
        var dweight=$("#weight_items_"+e+"_"+index).html();
        var score=$("#score_items_"+e+"_"+index).html();
        $("#total_market_items_"+e+"_"+index).html('');
        $("#total_market_items_"+e+"_"+index).html(accMul(mk,c));
        $("#total_sale_items_"+e+"_"+index).html('');
        $("#total_sale_items_"+e+"_"+index).html(accMul(sl,c));
        $("#total_weight_items_"+e+"_"+index).html('');
        $("#total_weight_items_"+e+"_"+index).html(accMul(dweight,c));
        $("#total_score_items_"+e+"_"+index).html('');
        $("#total_score_items_"+e+"_"+index).html(accMul(score,c));
        aa();
        $.post(base+"/cart/ajaxUpdateCartItem.jspx", {
            'cartItemId' : itemId,
            'count':c
        }, function(data) {
            if(data.status==1){
                /*location.reload();*/
            }else{
                alert("更新不成功");
            }
        },'json');
    }

    /*input 数量*/
    function calSubTotal(base,itemId,i,h,g,score,dj,dweight){
        var f=jQuery("#"+i).val();
        var c=/^[1-9]\d{0,2}$/g;
        if(!f.match(c)){
            alert("输入的数量有误,应为[1-99]");
            i.value="1"; f=1;
        }
        var a=parseInt(f);
        if(a<1){a=1;}
        if(a>99){a=99;}
        var q=jQuery("#"+i).attr("oriNum");
        var d=parseInt(q);
        if(a>d){alert("该商品库存有限，您最多只能购买"+d+"件");a=d;}
        jQuery("#"+i).val(a);
        var b=jQuery("#"+i).attr("id");
        var e=b.split("_")[1];
        var index=b.split("_")[2];
        var mk=$("#market_items_"+e+"_"+index).html();
        var sl=$("#sale_items_"+e+"_"+index).html();
        var dweight=$("#weight_items_"+e+"_"+index).html();
        var score=$("#score_items_"+e+"_"+index).html();
        $("#total_market_items_"+e+"_"+index).html('');
        $("#total_market_items_"+e+"_"+index).html(accMul(sl,a));
        $("#total_sale_items_"+e+"_"+index).html('');
        $("#total_sale_items_"+e+"_"+index).html(accMul(sl,a));
        $("#total_weight_items_"+e+"_"+index).html('');
        $("#total_weight_items_"+e+"_"+index).html(accMul(dweight,a));
        $("#total_score_items_"+e+"_"+index).html('');
        $("#total_score_items_"+e+"_"+index).html(accMul(score,a));
        aa();
        $.post(base+"/cart/ajaxUpdateCartItem.jspx", {
            'cartItemId' : itemId,
            'count':a
        }, function(data) {
            if(data.status==1){
                /*location.reload();*/
            }else{
                alert("更新不成功");
            }
        },'json');
    }

    /*继续购物*/
    function continueShopping(){window.open(URLPrefix.url+"/");}

    /*批量删除*/
    function ajaxBatchDelete(){
        $('input[type="checkbox"][name="cart2Checkbox"]:checked').each(function(){
            $(this).parent().parent().find(".deleteButton").trigger("click");
        });
    }

    /*清空购物车*/
    function ajaxEmpty(){
        $('input[type="checkbox"][name="cart2Checkbox"]').each(function(){
            $(this).parent().parent().find(".deleteButton").trigger("click");
        });
    }

    /*删除购物车项*/
    function ajaxDeleteCartItem(base,cartItemId){
        $.post(base+"/cart/ajaxDeleteCartItem.jspx", {
            'cartItemId' : cartItemId
        }, function(data) {
            if(data.status==1){
                location.reload();
            }else{
                alert("删除不成功");
            }
        },'json');
    }

    function checksubmit(){
        var sale=0.0;
        $("#[id^='total_sale_items_']").each(function(){
            var sl=parseFloat(jQuery(this).html());
            var h=this.id;
            var e=h.split("_")[3];
            var f=h.split("_")[4];
            if($("#chkMat_"+e+"_"+f).attr("checked")){
                sale+=sl;
            }else{
                sale=sale;
            }

        });
        if(sale==0){
            alert("请勾选你需要的商品,或者您勾选的商品价格为零，不符合购买规则");
            return;
        }

        var sub=true;
        $("#[id^='item_tr_']").each(function(){
            var sl=parseFloat(jQuery(this).html());
            var h=this.id;
            var e=h.split("_")[2];
            var index=h.split("_")[3];
            var count=$("#items_"+e+"_"+index).val();
            var fashId=$("#items_fash_"+e+"_"+index).val();
            if($("#chkMat_"+e+"_"+index).attr("checked")){
                $.post(URLPrefix.url+"/cart/checkStockCount.jspx", {
                    'productId' : e,
                    'productFashionId' :fashId,
                    'count':count
                }, function(data) {
                    if(data.status==0){
                        location.href='/login.jspx?returnUrl=http://demo3.jeecms.com/cart/shopping_cart.jspx';
                    }else if(data.status==2){
                        sub=false;
                        alert(data.error);
                    }
                },'json');
            }
        });
        if(sub){
            $("#jvForm").submit();
        }
    }

    var trackerUrl=("https:"==document.location.protocol?"https://":"http://")+"tracker.yihaodian.com/tracker/info.do?1=1";
    function gotracker(j,i,f){
        var h=trackerUrl;
        alert(h);
        var g=new RegExp("&linkPosition=\\w*","g");
        h=h.replace(g,"");
        var g=new RegExp("&buttonPosition=\\w*","g");
        h=h.replace(g,"");
        var g=new RegExp("&productId=\\w*","g");
        h=h.replace(g,"");
        if(j!=null){
            if(j==2){
                h=h+"&buttonPosition="+i
            }else{
                h=h+"&linkPosition="+i
            }
        }
        if(f!=null){h=h+"&productId="+f}
        jQuery.ajax({async:true,url:h,type:"GET",dataType:"jsonp",jsonp:"jsoncallback"})
    }
    var ajaxQueue=new Array();
    ajaxQueue.workingFlag=false;
    ajaxQueue.confirmFlag=false;
    ajaxQueue.go=function(){
        if(this.workingFlag){return}
        this.workingFlag=true;
        if(this.length<=0){
            this.workingFlag=false;
            if(this.confirmFlag&&!optMan.anyTimeout()){
                this.confirmFlag=false;
                cart2.unblockUI("0");
                if(ckbMan.anyChecked()){confirmToPay()}
            }return
        }
        var a=ajaxQueue.shift();
        if(a.type==null||a.type==""){
            a.stage=3;optMan.map.remove(a.timer);
            this.workingFlag=false;
            this.go();
            return
        }
        if(!ajaxQueue.confirmFlag&&a.type=="other"){cart2.blockUI()}
        jQuery.post(a.getUrl(),a.getParam(),
            function(b){
                a.stage=3;
                optMan.map.remove(a.timer);
                ajaxQueue.workingFlag=false;
                if(!redirectIf(b)){
                    if(!ajaxQueue.confirmFlag&&a.type=="other"){cart2.unblockUI(a.showMsg)}
                    if(a.type!="check"){refreshCart2PageContent(b)}
                    ajaxQueue.go()
                }else{
                    cart2.unblockUI("0");
                    if(ajaxQueue.confirmFlag){ajaxQueue.confirmFlag=false}
                }
            })
    };
    ajaxQueue.add=function(a){a.stage=2;ajaxQueue.push(a);ajaxQueue.go()};

    ajaxQueue.confirm=function(){
        cart2.blockUI();
        ajaxQueue.confirmFlag=true;
        var a="/cart/checkCartBeforeConfirm.jspx?rd="+Math.random();
        optMan.mergeReq("check",a,"0")
    };

    var cart2={
        blockUITimer:null,
        isBlocked:false,
        ajaxSelect:function(){optMan.mergeReq("select",null,"0",1000);},
        ajaxDelete:function(b,a,c,d){optMan.mergeReq("delete",null,null,c,b,a,d);},
        ajaxNum:function(a,d,c,b,e){optMan.mergeReq("num",a,d,c,b,e);},
        ajaxLandingNum:function(b,e,d,c,f,a){optMan.mergeReq("landingNum",b,e,d,c,f,a);},
        ajaxRefresh:function(a,c,b){optMan.mergeReq("other",a,c,b);},
        showBlockUI:function(a){
            jQuery("#cart2BlockUI").block({
                message:a,
                css:{padding:0,margin:0,width:"35%",border:"1px solid #FFCC00",opacity:0.9,backgroundColor:"#FEFFDF"},
                overlayCSS:{background:"transparent",opacity:0.1,cursor:"default"}
            });
        },
        blockUI:function(){
            cart2.isBlocked=true;
            var a=(jQuery(window).width())/2-400+jQuery(window).scrollLeft();
            if(jQuery.browser.msie&&jQuery.browser.version=="6.0"){
                var b=(jQuery(window).height())/2+jQuery(window).scrollTop();
                a=(jQuery(window).width())/2+jQuery(window).scrollLeft()-300;
                jQuery("#cart2BlockUI").show().css({
                    position:"absolute",width:"60%",height:"20%",zIndex:"9999",top:b,left:a})
            }else{
                jQuery("#cart2BlockUI").show().css({
                    position:"fixed",
                    width:"60%",
                    height:"20%",
                    zIndex:"9999",
                    top:"200px",
                    left:a});
            }
            cart2.showBlockUI('<table width="100%" border="0" cellspacing="0" cellpadding="0" id="cart2BlockUIMsg"><tr><td width="100%" height="50" align="center" class="font14"><img src="${pageContext.request.contextPath}/picture/cart/wait_loading.gif"/></td></tr><tr><td height="25" align="center" class="font14">正在处理中,请稍候...</td></tr></table>')
        },
        blockUI2:function(d,b){
            cart2.isBlocked=true;
            var a=jQuery("#favorites_"+b).offset().left;
            var e=jQuery("#favorites_"+b).offset().top;
            if(jQuery.browser.msie&&jQuery.browser.version=="6.0"){
                jQuery("#cart2BlockUI").show().css({
                    position:"absolute",width:"40%",height:"20%",zIndex:"9999",top:e-32,left:a-215})
            }else{
                jQuery("#cart2BlockUI").show().css({
                    position:"absolute",width:"30%",height:"50px",zIndex:"9999",top:e-40,left:a-230})
            }
            var c="";
            if(d=="已添加入收藏夹"){c="<i></i>";}
            cart2.showBlockUI('<table width="100%" border="0" cellspacing="0" cellpadding="0" id="cart2BlockUIMsg"><tr><td height="25" class="font14 fontIco">'+c+"&nbsp;"+d+"</td></tr></table>");
        },
        unblockUI:function(a){
            cart2.isBlocked=false;
            if(a&&a=="0"){
                jQuery("#cart2BlockUI").unblock().hide();
            }else{
                cart2.showBlockUI('<table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td height="65" align="center" class="font14">您的操作已成功!</td></tr></table>');
                if(cart2.blockUITimer){
                    clearTimeout(cart2.blockUITimer);
                }
                cart2.blockUITimer=setTimeout(function(){jQuery("#cart2BlockUI").unblock().hide();},1000);
            }
        }
    };

    var optMan=new Object();
    optMan.map=new Map();
    optMan.mergeSelect=function(){
        var c=true;
        for(var a in this.map.entry){
            var b=this.map.get(a);
            if(b!=null&&b.stage==1){b.clearTimeout();b.setTimeout();c=false;break;}
        }
        return c;
    };
    optMan.mergeDelete=function(b,e,a){
        var f=true;
        for(var c in this.map.entry){
            var d=this.map.get(c);
            if(d!=null&&d.stage==1){
                if(d.type=="select"){d.clearTimeout();optMan.map.remove(c)}
                if(d.type=="delete"){d.addDeletePost(b,e,a);d.clearTimeout();d.setTimeout();f=false}
            }
        }
        return f;
    };
    optMan.mergeNum=function(a,c,f){
        var e=true;
        for(var b in this.map.entry){
            var d=this.map.get(b);
            if(d!=null&&d.stage==1){
                if(d.type=="select"){
                    d.clearTimeout();
                    optMan.map.remove(b);
                }
                if(d.type=="num"&&d.productId==c&&d.merchantId==f){d.url=a;d.clearTimeout();d.setTimeout();e=false}
            }
        }
        return e;
    };
    optMan.mergeLandingNum=function(b,d,g,a){
        var f=true;
        for(var c in this.map.entry){
            var e=this.map.get(c);
            if(e!=null&&e.stage==1){
                if(e.type=="select"){
                    e.clearTimeout();
                    optMan.map.remove(c);
                }
                if(e.type=="landingNum"&&e.productId==d&&e.merchantId==g&&e.promotionId==a){
                    e.url=b;
                    e.clearTimeout();
                    e.setTimeout();
                    f=false;
                }
            }
        }
        return f;
    };
    optMan.mergeOther=function(){
        for(var a in this.map.entry){
            var b=this.map.get(a);
            if(b!=null&&b.stage==1&&b.type=="select"){
                b.clearTimeout();
                optMan.map.remove(a);
            }
        }
        return true;
    };
    optMan.mergeReq=function(b,a,f,e,h,d,c){
        if(ajaxQueue.confirmFlag&&b!="check"){return;}
        if(this.map.size()<=0){
            this.buildReq(b,a,f,e,h,d,c);return;
        }
        var g=true;
        if(b=="select"){
            g=this.mergeSelect();
        }
        if(b=="delete"){
            g=this.mergeDelete(h,d,c);
        }
        if(b=="num"){
            g=this.mergeNum(a,h,d);
        }
        if(b=="landingNum"){
            g=this.mergeLandingNum(a,h,d,c);
        }
        if(b=="other"){
            g=this.mergeOther();
        }
        if(g){
            this.buildReq(b,a,f,e,h,d,c);
        }
    };
    optMan.buildReq=function(b,a,g,f,h,e,d){
        var c=new Object();
        c.type=b;
        c.url=a;
        c.showMsg=g;
        c.stage=0;
        c.timer=null;
        if(b=="num"){
            c.productId=h;c.merchantId=e;
        }else{
            if(b=="landingNum"){
                c.productId=h;
                c.merchantId=e;
                c.promotionId=d;
            }
        }
        if(b=="delete"){
            c.deleteRecord=new Map();
            if(d!=null){
                c.deleteRecord.put(d,1);
            }
            c.deleteQueue=new Array();
            c.deleteOverPromotionQueue=new Array();
            c.deleteWarningQueue=new Array();
            c.deleteGiftQueue=new Array();
            c.deleteErrorPromotionQueue=new Array();
            c.addDeletePost=function(k,j,i){
                switch(j){
                    case 0:this.deleteQueue.push(k);break;
                    case 1:this.deleteOverPromotionQueue.push(k);break;
                    case 2:this.deleteWarningQueue.push(k);break;
                    case 3:this.deleteGiftQueue.push(k);break;
                    case 4:this.deleteErrorPromotionQueue.push(k);break
                }
                this.deleteRecord.put(i,1);
                return true;
            };
            c.addDeletePost(h,e)
        }
        c.getParam=function(){
            var i=$('input[type="checkbox"][name="cart2Checkbox"]').map(
                function(){return $(this).val()+"="+($(this).attr("checked")?"1":"0")}).get().join(",");
            if(this.type=="delete"){
                return{
                    deleteQueue:this.deleteQueue.join(","),
                    deleteOverPromotionQueue:this.deleteOverPromotionQueue.join(","),
                    deleteWarningQueue:this.deleteWarningQueue.join(","),
                    deleteGiftQueue:this.deleteGiftQueue.join(","),
                    deleteErrorPromotionQueue:this.deleteErrorPromotionQueue.join(","),
                    cart2Checkbox:i,
                    source:1
                }
            }
            return{cart2Checkbox:i,source:1}
        };
        c.getUrl=function(){
            if(this.type=="delete"){
                return"/cart/ajax.do?action=delete&rd="+Math.random()
            }
            if(this.type=="select"){return"/cart/ajax.do?action=select&rd="+Math.random()}
            return this.url;
        };
        c.post=function(){ajaxQueue.add(this);};
        c.setTimeout=function(){
            this.timer=setTimeout(function(){c.post();},(f==null||f<0)?0:f);
            this.stage=1;
        };
        c.clearTimeout=function(){if(this.timer){clearTimeout(this.timer)}this.stage=0};
        if(c.type=="check"){
            ajaxQueue.add(c);
        }else{
            c.setTimeout();
        }
        this.map.put(c.timer,c);
    };

    optMan.reloadDelete=function(){
        $("#cart2_content .gray-box.pro-li .clear.list tr").each(function(){
            for(var a in optMan.map.entry){
                var b=optMan.map.get(a);
                if(b!=null&&b.type=="delete"&&b.stage<3&&b.deleteRecord.containsKey($(this).attr("id"))){
                    $(this).find(".deleteButton").trigger("click");
                }
            }
        });
    };
    optMan.anyTimeout=function(){
        for(var a in this.map.entry){
            var b=this.map.get(a);
            if(b!=null&&b.stage==1){return true;}
        }
        return false;
    };

    function Map(){
        var a=0;
        this.entry=new Array();
        this.put=function(b,c){
            if(!this.containsKey(b)){a++}
            this.entry[b]=c};
        this.get=function(b){if(this.containsKey(b)){return this.entry[b]}else{return null}};
        this.remove=function(b){if(delete this.entry[b]){a--}};
        this.containsKey=function(b){return(b in this.entry)};
        this.containsValue=function(b){for(var c in this.entry){if(this.entry[c]==b){return true}}return false};
        this.values=function(){var b=new Array(a);for(var c in this.entry){b.push(this.entry[c])}return b};
        this.keys=function(){var b=new Array(a);for(var c in this.entry){b.push(c)}return b};
        this.size=function(){return a};
        this.clear=function(){this.entry=new Array();this.size=0}
    }

    var ckbMan={
        map:new Map(),
        reset:function(){
            $('input[type="checkbox"][name="cart2Checkbox"]').each(
                function(){
                    var a=$(this).val();
                    var b=ckbMan.map.get(a);
                    if(b!=null){
                        $(this).attr("checked",b)
                    }else{
                        ckbMan.map.put($(this).val(),$(this).attr("checked"))
                    }
                })
        },
        click:function(a){this.map.put($(a).val(),$(a).attr("checked"))},
        remove:function(a){this.map.remove($(a).val())},
        removeByKey:function(a){this.map.remove(a)},
        loadStatusFromJs:function(){
            $('input[type="checkbox"][name="cart2Checkbox"]').each(
                function(){
                    var a=$(this).val();
                    var b=ckbMan.map.get(a)==null?true:ckbMan.map.get(a);
                    $(this).attr("checked",b)
                }
            );
            refreshCheckbox()
        },
        anyChecked:function(){
            var a=false;
            $('input[type="checkbox"][name="cart2Checkbox"]').each(
                function(){
                    if($(this).attr("checked")){
                        a=true;return false
                    }
                }
            );
            if($('input[type="hidden"][name="XYItem"]').size()>0){a=true}
            return a
        },
        alertMap:function(){
            var b="";
            for(var a in this.map.entry){
                b+=a+"=>"+this.map.get(a)+"\n"
            }
            alert(b)
        }
    };
</script>
<script type="text/javascript">
    var URLPrefix = {
        "url":""
    };
</script>

<script type="text/javascript">

        function continueShopping() {
            location.href="${pageContext.request.contextPath}/";
        }
        $(function(){

            var p = 0;
           $(".ss_price").each(function(){

                p = p + parseInt($(this).text());
            })
            $("#total").html(p);
        });
        //修改购物车中商品数量改变商品合计的数据
        function changeTotal(id){
            var re = /^[1-9]+[0-9]*]*$/; ////判断正整数
            if (!re.test($("#pt"+id).val()) || $("#pt"+id).val()>99 ) {
                alert("商品数量必须是0~99之间的整数");
                $("#pt"+id).val(1);
                return false;
            }

            var tp = $("#pt"+id).val()*$("#sp"+id).html();
            $("#tp"+id).html(tp);
            var p = 0;

            $(".s_price [type=checkbox]").each(function(){
                if($(this).prop("checked")){
                    var id = $(this).attr("id");
                    //alert(id)
                    id = id.substring(2,id.length);

                    p = p + parseInt($("#tp"+id).text());
                }

            })
            $("#total").html(p);
        }

        //单选按钮进行商品总价统计
        function cbchange(id) {
            var flg = $("#cb"+id).prop("checked");
            if(flg){
                var p = parseInt($("#total").html());
                var pd = parseInt($("#tp"+id).html());
                $("#total").html(p+pd);
            }else{
                var p = parseInt($("#total").html());
                var pd = parseInt($("#tp"+id).html());
                $("#total").html(p-pd);
            }

        }


        //从购物车中删除商品
        function deleteFromCart(id){
            if(!confirm("确定要从购物车删除吗?")){
                return;
            }
            $.ajax({
                url:"${pageContext.request.contextPath}/deletefromcart/"+id,
                dataType:"text",
                method:"post",
                data:{
                    _method:"delete",
                },
                success:function (rec) {
                    if(rec=="0"){
                        location.href="${pageContext.request.contextPath}/cart/${user.uid}";
                    }
                }
            })
        }

        //提交订单
        function commitOrder(){
            var arr = [];
            var  i = 0;
            $(".s_price [type=checkbox]").each(function(){
                if($(this).prop("checked")){
                    var id = $(this).attr("id");
                    id = id.substring(2,id.length);
                    var obj = {id:id,count:$("#pt"+id).val(),total_price:$("#tp"+id).html()};
                    arr[i] = obj;
                    i++;
                }
            })
            if(arr==false){
                alert("请选择购物车中的商品!")
                return;
            }
            $.ajax({
                method:'post',
                url:'${pageContext.request.contextPath}/editcart',
                contentType : "application/json; charset=UTF-8",
                data:JSON.stringify(arr),
                dataType:'text',
                success:function(rec){
                    $.ajax({
                        method:'post',
                        url:'${pageContext.request.contextPath}/getCart',
                        contentType : "application/json; charset=UTF-8",
                        data:JSON.stringify(arr),
                        success:function(rec){
                            location.href="${pageContext.request.contextPath}/cart2";
                        }
                    })

                }
            })

        }

</script>>
</body>
</html>