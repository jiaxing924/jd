<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="root61">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>产品详情页</title>
<link href="<%=basePath%>css/base.css" rel="stylesheet">
<script type="text/javascript" src="<%=basePath%>js/jquery-1.6.4.js"></script>

<script type="text/javascript">
	function changerBuyQuantity(obj) {
		if (obj === 1) {
			$("#buy-num").val(parseInt($("#buy-num").val()) + 1);
		} else {
			if ($("#buy-num").val() <= 1)
				$("#buy-num").val(1);
			else
				$("#buy-num").val($("#buy-num").val() - 1);
		}
	}
	function addGoodsCar() {
		var goodsCode = $("#goodsCode").val();//获取商品编号
		var buyNum = $("#buy-num").val();//获取购买数量

		location.href = "../car/carActionaddOrUpdateGoods.action?goodsCode ="
				+ goodsCode + "&quantity=" + buynum + "";
	}
</script>


</head>
<body>
	<div id="shortcut-2014">
		<div class="w">
			<ul class="fr">
				<li class="fore1" id="ttbar-login" clstag="h|keycount|2015|01b">
					<a href="myjd.html" class="link-login  style-red"> <c:if
							test="${not empty sessionScope.name }">
					                       你好，${sessionScope.name }&nbsp;&nbsp;
					    <a href="<%=basePath%>login.jsp"> 退出</a>&nbsp;&nbsp;
					    </c:if>
					    <c:if test="${empty sessionScope.name }">
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
					class="ci-count" id="shopping-amount">0</i> <a target="_blank"
					href="car.html">我的购物车</a>
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
		<div class="product-intro clearfix">
			<div class="preview-wrap">
				<div class="preview" id="preview">
					<div id="spec-n1" class="jqzoom main-img"
						onclick="window.open('#')"
						clstag="shangpin|keycount|product|mainpic_fz">
						<img id="spec-img" width="350"
							data-origin="<%=basePath %>imgs/${requestScope.goodsInfo.img }.jpg"
							alt="${requestScope.goodsInfo.goodsName }"
							src="<%=basePath %>imgs/${requestScope.goodsInfo.img }.jpg">
						<i></i>
					</div>
					<script>
						(function(doc, cfg) {
							var img = doc.getElementById('spec-img');
							var src = img.getAttribute('data-origin');
							var nsz = 300;

							if ((!cfg.wideVersion || !cfg.compatible)
									&& !cfg.product.ctCloth) {
								img.setAttribute('width', nsz);
								/*img.setAttribute('height', nsz);*/
								img.setAttribute('src', src.replace('s450x450',
										's' + nsz + 'x' + nsz));
							} else {
								img.setAttribute('src', src);
							}

							if (cfg.product.ctCloth) {
								if (!cfg.wideVersion || !cfg.compatible) {
									img.setAttribute('width', nsz);
								}
							}
						})(document, pageConfig);
					</script>
				</div>
			</div>
			<div class="itemInfo-wrap">
				<div class="sku-name">${requestScope.goodsInfo.goodsName}</div>
				<div class="summary summary-first" style="padding: 20px 0">
					<div class="summary-price-wrap">
						<div class="summary-price J-summary-price">
							<div class="dt">京 东 价</div>
							<div class="dd">
								<span class="p-price"><span>￥</span><span
									class="price J-p-10080734940">${requestScope.goodsInfo.price}</span></span>
								<a class="notice J-notify-sale" data-type="1"
									data-sku="10080734940" href="#none"
									clstag="shangpin|keycount|product|jiangjia_2">降价通知</a>
							</div>
						</div>

						<div id="summary-quan" class="li p-choose hide"
							clstag="shangpin|keycount|product|lingquan"></div>
					</div>
				</div>
				<div style="padding: 20px 0">
					<span>上架时间${requestScope.goodsInfo.putaway}</span>
				</div>
				<div style="padding: 20px 0">
					<span>货到付款</span>
				</div>
				<div style="padding: 20px 0">
					<span> </span>
					<c:if test="${requestScope.goodsInfo.storeCount!=0 }">
					                    有货
					                    库存:${requestScope.goodsInfo.storeCount}件
					     </c:if>
					<c:if test="${requestScope.goodsInfo.storeCount==0 }">无货</c:if>
				</div>

				<div id="choose-btns" class="choose-btns clearfix">
					<div class="choose-amount"
						clstag="shangpin|keycount|product|goumaishuliang_2">
						<div class="wrap-input">
							<input class="text buy-num"
								onkeyup="setAmount.modify('#buy-num');" id="buy-num" value="1"
								readonly="readonly"> <input type="hidden"
								name="goodsCode" value="${requestScope.goodsInfo.goodsCode }"
								id="goodsCode" /> <a class="btn-reduce"
								onclick="changerBuyQuantity(0)" href="javascript:;">-</a> <a
								class="btn-add" onclick="changerBuyQuantity(1)"
								href="javascript:;">+</a>
						</div>
					</div>
					<a href="javascript:;" onclick="addGoodsToCar()" id="InitCartUrl"
						class="btn-special1 btn-lg"
						clstag="shangpin|keycount|product|加入购物车_2">加入购物车</a>
				</div>
			</div>

		</div>
	</div>
	<div class="w">
		<div class="m m-content comment" id="comment">
			<div class="mt">
				<h3>商品评价</h3>
			</div>
			<div class="mc">
				<div class="J-comments-list comments-list ETab">
					<div class="tab-main small">
						<ul>
							<li data-tab="trigger"
								clstag="shangpin|keycount|product|allpingjia_2" class="current"
								data-num="4602"><a href="javascript:;">全部评论<em>(${requestScope.all})</em></a>
							</li>
							<li data-tab="trigger"
								clstag="shangpin|keycount|product|haoping_2" data-num="4216">
								<a href="javascript:;">好评<em>(${requestScope.a})</em></a>
							</li>
							<li data-tab="trigger"
								clstag="shangpin|keycount|product|zhongping_2" data-num="235">
								<a href="javascript:;">中评<em>(${requestScope.b})</em></a>
							</li>
							<li data-tab="trigger"
								clstag="shangpin|keycount|product|chaping_2" data-num="151">
								<a href="javascript:;">差评<em>(${requestScope.c})</em></a>
							</li>
					</div>
					<div class="tab-con">
						<div id="comment-0" data-tab="item">
							<div class="com-table-main">

								<!-- 开始处理评价-->
								<c:forEach items="${requestScope.commentList }" var="comment">
									<div class="comments-item"
										data-guid="3aff98bd-9930-4d57-a3fe-c97b568a0065" data-top="">
										<div class="com-item-main clearfix">
											<div class="column column1">
												<c:choose>
													<c:when test="${comment.star eq 5 }">
														<div class="grade-star g-star5"></div>
													</c:when>
													<c:when test="${comment.star eq 4 }">
														<div class="grade-star g-star4">
															<img src="../img/star4.png" />
														</div>
													</c:when>
													<c:when test="${comment.star eq 3 }">
														<div class="grade-star g-star3">
															<img src="../img/star3.png" />
														</div>
													</c:when>
													<c:when test="${comment.star eq 2 }">
														<div class="grade-star g-star2">
															<img src="../img/star2.png" />
														</div>
													</c:when>
													<c:when test="${comment.star eq 1 }">
														<div class="grade-star g-star1">
															<img src="../img/star1.png" />
														</div>
													</c:when>

												</c:choose>

												<div class="comment-time type-item">${comment.releaseDate }</div>
											</div>
											<div class="column column2"
												data-guid="3aff98bd-9930-4d57-a3fe-c97b568a0065">
												<div class="p-comment">${comment.comments }</div>
												<div class="p-otherFeatures">
													<ul class="clearfix">
													</ul>
												</div>

												<div class="comment-replylist"></div>
											</div>
											<div class="column column3">
												<div class="user-item clearfix">
													<div class="user-name">匿名评论</div>
												</div>
												<div class="type-item">
													<img src="<%=basePath%>img/b56.gif" width="25px"
														height="25px" alt="j***a" class="user-ico"> <span
														class="u-vip-level" style="color:">京东会员</span>
												</div>
												<div class="user-item" data-cid="2">
													<span></span>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>

								<!--评价处理结束-->
								<div id="comment-1" data-tab="item" class="hide">
									<div class="iloading">正在加载中，请稍候...</div>
								</div>
								<div id="comment-2" data-tab="item" class="hide">
									<div class="iloading">正在加载中，请稍候...</div>
								</div>
								<div id="comment-3" data-tab="item" class="hide">
									<div class="iloading">正在加载中，请稍候...</div>
								</div>
								<div id="comment-4" data-tab="item" class="hide">
									<div class="iloading">正在加载中，请稍候...</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<footer style="position: relative; bottom: 0">
			<div id="service-2014" clstag="h|keycount|2015|32a">
				<div class="slogen">
					<span class="item fore1"> <img
						src="<%=basePath%>img/service_items_1.png"
						style="margin-left: 40px">
					</span> <span class="item fore2"> <img
						src="<%=basePath%>img/service_items_2.png"
						style="margin-left: 80px">
					</span> <span class="item fore3"> <img
						src="<%=basePath%>img/service_items_3.png"
						style="margin-left: 80px">
					</span> <span class="item fore4"> <img
						src="<%=basePath%>img/service_items_4.png"
						style="margin-left: 80px">
					</span>
				</div>
			</div>
			<div id="footer-2014" clstag="h|keycount|2015|33a">
				<div class="links">
					<a rel="nofollow" target="_blank" href="#">关于我们</a>|<a
						rel="nofollow" target="_blank" href="#">联系我们</a>|<a rel="nofollow"
						target="_blank" href="#">商家入驻</a>|<a rel="nofollow"
						target="_blank" href="#">营销中心</a>|<a rel="nofollow"
						target="_blank" href="#">手机京东</a>|<a target="_blank" href="#">友情链接</a>|<a
						target="_blank" href="#">销售联盟</a>|<a href="//club.jd.com/"
						target="_blank">京东社区</a>|<a href="#" target="_blank">京东公益</a>|<a
						href="#" target="_blank">English Site</a>|<a href="#"
						target="_blank">Contact Us</a>
				</div>
				<div class="copyright">
					<a target="_blank" href="<%=basePath%>img/56a0a994Nf1b662dc.png">
						京公网安备 11000002000088号</a>&nbsp;&nbsp;|&nbsp;&nbsp;京ICP证070359号&nbsp;&nbsp;|&nbsp;&nbsp;<a
						target="_blank" href="#">互联网药品信息服务资格证编号(京)-经营性-2014-0008</a>&nbsp;&nbsp;|&nbsp;&nbsp;新出发京零&nbsp;字第大120007号<br>互联网出版许可证编号新出网证(京)字150号&nbsp;&nbsp;|&nbsp;&nbsp;<a
						rel="nofollow" href="#" target="_blank">出版物经营许可证</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
						href="#" target="_blank">网络文化经营许可证京网文[2014]2148-348号</a>&nbsp;&nbsp;|&nbsp;&nbsp;违法和不良信息举报电话：4006561155<br>Copyright&nbsp;?&nbsp;2004&nbsp;-&nbsp;2016&nbsp;&nbsp;京东JD.com&nbsp;版权所有&nbsp;&nbsp;|&nbsp;&nbsp;消费者维权热线：4006067733<br>京东旗下网站：<a
						href="#" target="_blank">京东钱包</a>
				</div>
				<div class="authentication">
					<a rel="nofollow" target="_blank" href="#"> <img width="103"
						height="32" alt="经营性网站备案中心"
						src="<%=basePath%>img/54b8871eNa9a7067e.png" class="err-product">
					</a> <a rel="nofollow" target="_blank" id="urlknet" tabindex="-1"
						href="#"> <img border="true" width="103" height="32"
						alt="可信网站" src="<%=basePath%>img/54b8872dNe37a9860.png"
						class="err-product">
					</a> <a rel="nofollow" target="_blank" href="#"> <img width="103"
						height="32" alt="网络警察"
						src="<%=basePath%>img/56a89b8fNfbaade9a.jpg" class="err-product">
					</a> <a rel="nofollow" target="_blank" href="#"> <img width="103"
						height="32" src="<%=basePath%>img/54b8875fNad1e0c4c.png"
						class="err-product">
					</a> <a target="_blank" href="#"><img width="103" height="32"
						src="<%=basePath%>img/5698dc03N23f2e3b8.jpg"></a> <a
						target="_blank" href="#"><img width="103" height="32"
						src="<%=basePath%>img/5698dc16Nb2ab99df.jpg"></a>
				</div>
			</div>
			</footer>
</body>
</html>