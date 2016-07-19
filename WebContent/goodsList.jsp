<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>京东</title>
<link href="../css/base.css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery-1.6.4.js"></script>
</head>
<body>
	<div id="shortcut-2014">
		<div class="w">
			<ul class="fr">
				<li class="fore1" id="ttbar-login" clstag="h|keycount|2015|01b">
					<a href="myjd.html" class="link-login  style-red">
					    <c:if test="${not empty sessionScope.currentUser.name }">
					                       你好，${sessionScope.currentUser.name }&nbsp;&nbsp;
					       <a href="<%=basePath%>login.jsp" > 退出</a>&nbsp;&nbsp;
					    </c:if>
					     <c:if test="${empty sessionScope.currentUser.name }">
					        <a href="<%=basePath%>login.jsp" style="color: red;">请登录&nbsp;&nbsp;
					    </c:if>
					</a>
				</li>
				<li class="spacer"></li>
				<li class="fore2" clstag="h|keycount|2015|01c">
					<div class="dt">
						<a href="myjd.html">我的订单</a>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore3" clstag="h|keycount|2015|01c">
					<div class="dt">
						<a href="myjd.html">我的京东</a>
					</div>
				</li>

			</ul>
			<span class="clr"></span>
		</div>
	</div>
	<div class="w">
		<div id="logo-2014" clstag="h|keycount|2015|02a">
			<a href="index.html" class="logo">京东</a>
		</div>
		<div id="search-2014">
			<ul id="shelper" class="hide"></ul>
			<div class="form">
				<input clstag="h|keycount|2015|03a" type="text"
					onkeydown="javascript:if(event.keyCode==13) search('key');"
					autocomplete="off" id="key" accesskey="s" class="text" />
				<button clstag="h|keycount|2015|03c"
					onclick="search('key');return false;" class="button cw-icon">
					<i></i>搜索
				</button>
			</div>
		</div>
		<div id="settleup-2014" class="dorpdown" clstag="h|keycount|2015|04a">
			<div class="cw-icon">
				<i class="ci-left"></i> <i class="ci-right">&gt;</i> <i
					class="ci-count" id="shopping-amount">${fn:length(sessionScope.car)}</i> <a target="_blank"
					href="<%=basePath%>car.jsp">我的购物车</a>
			</div>
			<div class="dorpdown-layer">
				<div class="spacer"></div>
				<div id="settleup-content">
					<span class="loading"></span>
				</div>
			</div>
		</div>
		<div id="hotwords-2014"></div>
		<span class="clr"></span>
	</div>
	<div class="w">
		<div id="J_goodsList" class="goods-list-v1 gl-type-2 J-goods-list">
			<ul class="gl-warp clearfix" data-tpl="3">

				<c:forEach items="${requestScope.goodsInfoList }" var="goods">

					<li data-sku="10060424165" data-spu="10060424154" class="gl-item">
						<div class="gl-i-wrap">
							<div class="p-img">
								<a target="_blank" href="goodsActionloadGoodsDetails.action?goodsCode=${goods.goodsCode }"
									onclick="searchlog(1,10060424165,0,2,'','flagsClk=4194952')"
									> <img width="220"
									height="282" class="err-product" data-img="1"
									src="<%=basePath %>imgs/${goods.img }.jpg">
								</a>
								<div data-ico="0" data-venid="88670"></div>
							</div>
							
							<div class="p-price">
								<strong class="J_10060424165" data-price="69.00" data-done="1"><em>￥</em><i>${goods.price}</i></strong>
								<div class="p-icons" id="J_pro_10060424165">
									<i class="goods-icons-s1" title="该商品支持货到付款">货到付款</i>
								</div>
							</div>
							<div class="p-name p-name-type-2">
								<a target="_blank" title="" href="goodsdetails.html"
									onclick="searchlog(1,10060424165,0,1,'','flagsClk=4194952')">
									<em>${goods.goodsName }</em>
								</a>
							</div>
							<div class="p-commit">
								<strong>已有<a id="J_comment_10060424165" href="#"
									onclick="searchlog(1,10060424165,0,3,'','flagsClk=4194952')">
										${goods.commentCount}</a>人评价
								</strong>
							</div>
							<div class="p-focus">
								<a class="J_focus" data-sku="10080734940" href="#" title="点击关注"
									onclick="searchlog(1,10060424165,0,5,'','flagsClk=4194952')"><i></i>关注</a>
							</div>
							<div class="p-shop" data-selfware="0" data-score="5"
								data-reputation="92" data-done="1">
								<span class="J_im_icon"><a target="_blank"
									onclick="searchlog(1,85859,0,58)" href="#"
									title="${goods.producer }">${goods.producer }</a><b
									class="im-01" title="联系第三方卖家进行咨询"
									onclick="searchlog(1,85859,0,61)"></b></span>
							</div>
							<div class="p-addtocart hide">
								<a data-stock-val="1" data-presale="0" data-parallel="0"></a>
							</div>
						</div>
					</li>
				</c:forEach>
			</ul>
			<span class="clr"></span>
		</div>
		<div class="page clearfix">
			<div id="J_bottomPage" class="p-wrap">
				<span class="p-num"> <a class="pn-prev disabled"> <i>&lt;</i>
						<em>上一页</em>
				</a> <a href="javascript:;" class="curr"> 1 </a> <a
					onclick="SEARCH.page(3, true)" href="javascript:;"> 2 </a> <a
					onclick="SEARCH.page(5, true)" href="javascript:;"> 3 </a> <a
					onclick="SEARCH.page(7, true)" href="javascript:;"> 4 </a> <a
					onclick="SEARCH.page(9, true)" href="javascript:;"> 5 </a> <a
					onclick="SEARCH.page(11, true)" href="javascript:;"> 6 </a> <a
					onclick="SEARCH.page(13, true)" href="javascript:;"> 7 </a> <b
					class="pn-break">...</b> <a class="pn-next"
					onclick="SEARCH.page(3, true)" href="javascript:;"
					title="使用方向键右键也可翻到下一页哦！"> <em>下一页</em> <i>&gt;</i>
				</a>
				</span> <span class="p-skip"> <em>共 <b>100</b> 页&nbsp;&nbsp;到第
				</em> <input class="input-txt" type="text" value="1"
					onkeydown="javascript:if(event.keyCode==13){SEARCH.page_jump(100,1);return false;}">
					<em>页</em> <a class="btn btn-default"
					onclick="SEARCH.page_jump(100,1)" href="javascript:;">确定</a>
				</span>
			</div>
		</div>
	</div>
	<footer style="position: relative; bottom: 0">
	<div id="service-2014" clstag="h|keycount|2015|32a">
		<div class="slogen">
			<span class="item fore1"> <img src="<%=basePath %>img/service_items_1.png"
				style="margin-left: 40px">
			</span> <span class="item fore2"> <img src="<%=basePath %>img/service_items_2.png"
				style="margin-left: 80px">
			</span> <span class="item fore3"> <img src="<%=basePath %>img/service_items_3.png"
				style="margin-left: 80px">
			</span> <span class="item fore4"> <img src="<%=basePath %>img/service_items_4.png"
				style="margin-left: 80px">
			</span>
		</div>
	</div>
	<div id="footer-2014" clstag="h|keycount|2015|33a">
		<div class="links">
			<a rel="nofollow" target="_blank" href="#">关于我们</a>|<a rel="nofollow"
				target="_blank" href="#">联系我们</a>|<a rel="nofollow" target="_blank"
				href="#">商家入驻</a>|<a rel="nofollow" target="_blank" href="#">营销中心</a>|<a
				rel="nofollow" target="_blank" href="#">手机京东</a>|<a target="_blank"
				href="#">友情链接</a>|<a target="_blank" href="#">销售联盟</a>|<a
				href="//club.jd.com/" target="_blank">京东社区</a>|<a href="#"
				target="_blank">京东公益</a>|<a href="#" target="_blank">English
				Site</a>|<a href="#" target="_blank">Contact Us</a>
		</div>
		<div class="copyright">
			<a target="_blank" href="<%=basePath %>img/56a0a994Nf1b662dc.png"> 京公网安备
				11000002000088号</a>&nbsp;&nbsp;|&nbsp;&nbsp;京ICP证070359号&nbsp;&nbsp;|&nbsp;&nbsp;<a
				target="_blank" href="#">互联网药品信息服务资格证编号(京)-经营性-2014-0008</a>&nbsp;&nbsp;|&nbsp;&nbsp;新出发京零&nbsp;字第大120007号<br>互联网出版许可证编号新出网证(京)字150号&nbsp;&nbsp;|&nbsp;&nbsp;<a
				rel="nofollow" href="#" target="_blank">出版物经营许可证</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
				href="#" target="_blank">网络文化经营许可证京网文[2014]2148-348号</a>&nbsp;&nbsp;|&nbsp;&nbsp;违法和不良信息举报电话：4006561155<br>Copyright&nbsp;?&nbsp;2004&nbsp;-&nbsp;2016&nbsp;&nbsp;京东JD.com&nbsp;版权所有&nbsp;&nbsp;|&nbsp;&nbsp;消费者维权热线：4006067733<br>京东旗下网站：<a
				href="#" target="_blank">京东钱包</a>
		</div>
		<div class="authentication">
			<a rel="nofollow" target="_blank" href="#"> <img width="103"
				height="32" alt="经营性网站备案中心" src="<%=basePath %>img/54b8871eNa9a7067e.png"
				class="err-product">
			</a> <a rel="nofollow" target="_blank" id="urlknet" tabindex="-1"
				href="#"> <img border="true" width="103" height="32" alt="可信网站"
				src="<%=basePath %>img/54b8872dNe37a9860.png" class="err-product">
			</a> <a rel="nofollow" target="_blank" href="#"> <img width="103"
				height="32" alt="网络警察" src="<%=basePath %>img/56a89b8fNfbaade9a.jpg"
				class="err-product">
			</a> <a rel="nofollow" target="_blank" href="#"> <img width="103"
				height="32" src="<%=basePath %>img/54b8875fNad1e0c4c.png" class="err-product">
			</a> <a target="_blank" href="#"><img width="103" height="32"
				src="<%=basePath %>img/5698dc03N23f2e3b8.jpg"></a> <a target="_blank" href="#"><img
				width="103" height="32" src="<%=basePath %>img/5698dc16Nb2ab99df.jpg"></a>
		</div>
	</div>
	</footer>
</body>
</html>