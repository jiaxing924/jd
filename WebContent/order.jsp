<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html id="root61">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的京东</title>
<link href="<%=basePath%>css/base.css" rel="stylesheet">
<script type="text/javascript" src="<%=basePath%>js/jquery-1.6.4.js"></script>
</head>
<body>
<div id="shortcut-2014">
    <div class="w">
        <ul class="fr">
            <li class="fore1" id="ttbar-login" clstag="h|keycount|2015|01b"> 
              	<a href="<%=basePath%>goods/goodsActionloadGoodsTypeList.action" class="link-login  style-red">你好，
				<c:if test="${not empty sessionScope.currentUser }">
				        ${sessionScope.currentUser.name }
				    &nbsp;&nbsp;
				    <a href="<%=basePath %>login.jsp" class="link-login">退出</a>
				</c:if>
				<c:if test="${empty sessionScope.currentUser.name }">
				        请登录
					</a>&nbsp;&nbsp;
					<a href="<%=basePath %>register.jsp" class="link-regist">免费注册</a>
				</c:if> 
            <li class="spacer"></li>
            <li class="fore2" clstag="h|keycount|2015|01c">
                <div class="dt">
                    <a href="<%=basePath%>order/orderActionloadOrder.action">我的订单</a>
                </div>
            </li>
            <li class="spacer"></li>
            <li class="fore3" clstag="h|keycount|2015|01c">
                <div class="dt">
                    <a href="<%=basePath%>order/orderActionloadOrder.action">我的京东</a>
                </div>
            </li>

        </ul>
        <span class="clr"></span>
    </div>
</div>
<div id="nav">
    <div class="w">
        <div class="logo">
            <a href="<%=basePath%>goods/goodsActionloadGoodsTypeList.action" target="_blank" class="fore1" clstag="homepage|keycount|home2013|Homejdlogo"></a>
            <a href="<%=basePath%>order/orderActionloadOrder.action" target="_self" class="fore2" clstag="homepage|keycount|home2013|Homebackm">我的京东</a>
            <a href="<%=basePath%>goods/goodsActionloadGoodsTypeList.action" target="_blank" class="fore3" clstag="homepage|keycount|home2013|Homebackjd">返回京东首页</a>
        </div>
        <div class="navitems">
            <ul>
                <li class="fore-1">
                    <a target="_self" href="<%=basePath%>goods/goodsActionloadGoodsTypeList.action" clstag="homepage|keycount|home2013|Homeindex">首页</a>
                </li>
            </ul>
        </div>
        <div class="nav-r">
            <div id="settleup-2014" class="dorpdown">
                <div class="cw-icon">
                    <i class="ci-left"></i>
                    <i class="ci-right">&gt;</i><i class="ci-count" id="shopping-amount">${fn:length(sessionScope.car)}</i>
                    <a target="_blank" href="<%=basePath %>car.jsp">我的购物车</a>
                </div>
                <div class="dorpdown-layer"><div class="spacer"></div><div id="settleup-content"><span class="loading"></span></div>
                </div>
            </div>
        </div>
        <div class="clr"></div>
    </div>
</div>
<div class="w">
    <div id="chunjie" class="mb10"></div>
    <div class="mod-main mod-comm mod-order" id="order01">
        <div class="mt">
            <h3>我的订单</h3>
            <div class="extra-r"></div>
        </div>
    </div>
    <div class="mod-main mod-comm lefta-box" id="order02">
        <div class="mt">
            <ul class="extra-l">
                <li class="fore1"><a href="#" class="txt curr">全部订单</a></li>
                <li><a href="#?s=1" id="ordertoPay" clstag="click|keycount|orderinfo|waitPay" class="txt">待付款</a></li>
                <li><a href="#?s=128" id="ordertoReceive" clstag="click|keycount|orderinfo|waitReceive" class="txt">待收货</a></li>
                <li><a href="#" id="ordertoComment" target="_blank" class="txt" clstag="click|keycount|orderinfo|daipingjia">待评价</a></li>
            </ul>
            <div class="extra-r">
                <div class="search">
                    <input id="ip_keyword" type="text" class="itxt" value="商品名称/商品编号/订单号" style="color: rgb(204, 204, 204);">
                    <a href="javascript:;" class="search-btn" clstag="click|keycount|orderinfo|search">搜索<b></b></a>
                    <a href="#none" clstag="click|keycount|orderlist|gaoji" class="default-btn high-search">高级<b></b></a>
                </div>
            </div>
        </div>

        <div class="mc">


            <div class="top-search hide">
                <div class="dl">
                    <span class="label">订单类型：</span>
                    <div class="dd">
                        
                    </div>
                </div>
                <div class="dl">
                    <a href="#none" clstag="click|keycount|orderlist|fanhui" class="btn-9">返回</a>
                </div>
                <a href="#none" clstag="click|keycount|orderlist|closehighserach" class="ts-del"></a>
            </div>
            
            <c:forEach items="${orderMainList }" var="orderMain">
            
            <table class="td-void order-tb">
                <colgroup>
                    <col class="number-col">
                    <col class="consignee-col">
                    <col class="amount-col">
                    <col class="status-col">
                    <col class="operate-col">
                </colgroup>
                <tbody id="tb-18010090538">
                <tr class="sep-row"><td colspan="5"></td></tr>

                <tr class="tr-th">
                    <td colspan="5">
                        <span class="gap"></span>
                        <span class="dealtime" title="2016-05-05 10:32:21">
                        ${orderMain.confirmTime}
                        </span>
                        <input type="hidden" id="datasubmit-18010090538" value="2016-05-05 10:32:21">

                <span >
                                                         订单号：  ${orderMain.orderCode}

	                                </span>

                        <div class="tr-operate">
                	                        <span class="order-shop">
                            <a href="<%=basePath%>goods/goodsActionloadGoodsDetails.action?goodsCode=${sessionScope.car[0].goodsCode}" target="_blank" class="shop-txt venderName117760" clstag="click|keycount|orderlist|117760">
                             ${sessionScope.car[0].producer}</a>
                        </span>

                        <span class="tel">
                            <i class="tel-icon venderTel117760" style="display: none;"></i>
                        </span>
                            <a href="#none" clstag="click|keycount|orderlist|dingdanshanchu" class="order-del" _orderid="18010090538" _passkey="41D691B43F1B29128EAF0F037C2D7069" title="删除" style="display: none;"></a>
                        </div>
                    </td>
                </tr>

                <c:forEach items=""></c:forEach>
                
                <tr class="tr-bd" id="track18010090538" oty="22,4,70">
                    <td>
                        <div class="goods-item p-10253396315">
                            <div class="p-img">
                                <a href="goodsdetails.html" clstag="click|keycount|orderinfo|order_product" target="_blank">
                                    <img class="" src="<%=basePath%>imgs/.jpg" title="" data-lazy-img="done" width="60" height="60">

                                </a>
                            </div>
                            <div class="p-msg">
                                <div class="p-name"><a href="goodsdetails.html" class="a-link" clstag="click|keycount|orderinfo|order_product" target="_blank" title="#">
                                   ${sessionScope.car[0].goodsName}</a>
                                </div>
                                <div class="p-extra">
                                    <ul class="o-info">
                                        <li><span class="o-match J-o-match" data-sku="10253396315"></span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="goods-number">
                            ×${sessionScope.car[0].quantity}
                        </div>


                        <div class="goods-repair">
                            <a href="#" target="_blank" clstag="click|keycount|orderinfo|order_repair">返修/退换货</a>
                        </div>
                        <div class="clr"></div>
                    </td>

                    <td rowspan="1">
                        <div class="consignee tooltip">
                            <span class="txt">${sessionScope.currentUser.name}</span><b></b>
                            <div class="prompt-01 prompt-02">
                                <div class="pc">
                                    <strong>
                                    ${sessionScope.currentUser.name}                                                                    
                                   </strong>
                                    <p>${sessionScope.currentUser.address } </p>
                                    <p>${sessionScope.currentUser.phone } </p>
                                </div>
                                <div class="p-arrow p-arrow-left"></div>
                            </div>
                        </div>
                    </td>
                    <td rowspan="1">
                        <div class="amount">
                            <span>总额 ￥${orderMain.total } </span> <br>
                            <span class="ftx-13">在线支付</span>
                        </div>
                    </td>
                    <td rowspan="1">
                        <div class="status">
                    <span class="order-status ftx-03">
                    </span>
                            <br>
                            <a href="#" clstag="click|keycount|orderlist|dingdanxiangqing" target="_blank">订单详情</a>
                        </div>
                    </td>
                    <td rowspan="1" id="operate18010090538">
                        <div class="operate">

                            <div id="pay-button-18010090538" _baina="0"></div>

                            <a href="jiesuan.html" class="btn-again" target="_blank" clstag="click|keycount|orderlist|buy"><b></b>立即购买</a><br>

                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
            
            </c:forEach>

            <div class="mt20">
                <div class="pagin fr">

                    <!--  <span class="text">共1条记录</span>    <span class="text">共1页</span> -->
                    <span class="prev-disabled">上一页<b></b></span>

                    <!-- <span class="prev-disabled">首页</span> -->
                    <a class="current">1</a>                                                                                       	<!-- <span class="next-disabled">末页</span>  -->
                    <span class="next-disabled">下一页<b></b></span>

                </div>
                <div class="clr"></div>
            </div>


        </div>
    </div>
</div>
<footer  style="position: relative; top: 90px">
    <div id="service-2014" clstag="h|keycount|2015|32a">
        <div class="slogen">
		<span class="item fore1">
			<img src="<%=basePath%>img/service_items_1.png" style="margin-left: 40px">
		</span>
		<span class="item fore2">
			<img src="<%=basePath%>img/service_items_2.png" style="margin-left: 80px" >
		</span>
		<span class="item fore3">
			<img src="<%=basePath%>img/service_items_3.png" style="margin-left: 80px">
		</span>
		<span class="item fore4">
			<img src="<%=basePath%>img/service_items_4.png" style="margin-left: 80px">
		</span>
        </div>
    </div>
    <div id="footer-2014" clstag="h|keycount|2015|33a">
        <div class="links"><a rel="nofollow" target="_blank" href="#">关于我们</a>|<a rel="nofollow" target="_blank" href="#">联系我们</a>|<a rel="nofollow" target="_blank" href="#">商家入驻</a>|<a rel="nofollow" target="_blank" href="#">营销中心</a>|<a rel="nofollow" target="_blank" href="#">手机京东</a>|<a target="_blank" href="#">友情链接</a>|<a target="_blank" href="#">销售联盟</a>|<a href="//club.jd.com/" target="_blank">京东社区</a>|<a href="#" target="_blank">京东公益</a>|<a href="#" target="_blank">English Site</a>|<a href="#" target="_blank">Contact Us</a></div>
        <div class="copyright"><a target="_blank" href="<%=basePath%>img/56a0a994Nf1b662dc.png"> 京公网安备 11000002000088号</a>&nbsp;&nbsp;|&nbsp;&nbsp;京ICP证070359号&nbsp;&nbsp;|&nbsp;&nbsp;<a target="_blank" href="#">互联网药品信息服务资格证编号(京)-经营性-2014-0008</a>&nbsp;&nbsp;|&nbsp;&nbsp;新出发京零&nbsp;字第大120007号<br>互联网出版许可证编号新出网证(京)字150号&nbsp;&nbsp;|&nbsp;&nbsp;<a rel="nofollow" href="#" target="_blank">出版物经营许可证</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#" target="_blank">网络文化经营许可证京网文[2014]2148-348号</a>&nbsp;&nbsp;|&nbsp;&nbsp;违法和不良信息举报电话：4006561155<br>Copyright&nbsp;?&nbsp;2004&nbsp;-&nbsp;2016&nbsp;&nbsp;京东JD.com&nbsp;版权所有&nbsp;&nbsp;|&nbsp;&nbsp;消费者维权热线：4006067733<br>京东旗下网站：<a href="#" target="_blank">京东钱包</a>
        </div>
        <div class="authentication">
            <a rel="nofollow" target="_blank" href="#">
                <img width="103" height="32" alt="经营性网站备案中心" src="<%=basePath%>img/54b8871eNa9a7067e.png" class="err-product">
            </a>

            <a rel="nofollow" target="_blank" id="urlknet" tabindex="-1" href="#">
                <img border="true" width="103" height="32" alt="可信网站" src="<%=basePath%>img/54b8872dNe37a9860.png" class="err-product">
            </a>
            <a rel="nofollow" target="_blank" href="#">
                <img width="103" height="32" alt="网络警察" src="<%=basePath%>img/56a89b8fNfbaade9a.jpg" class="err-product">
            </a>
            <a rel="nofollow" target="_blank" href="#">
                <img width="103" height="32" src="<%=basePath%>img/54b8875fNad1e0c4c.png" class="err-product">
            </a>
            <a target="_blank" href="#"><img width="103" height="32" src="<%=basePath%>img/5698dc03N23f2e3b8.jpg"></a>
            <a target="_blank" href="#"><img width="103" height="32" src="<%=basePath%>img/5698dc16Nb2ab99df.jpg"></a>
        </div>
    </div>
</footer>
</body>
</html>