<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>京东</title>
<link href="css/base.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.6.4.js"></script>

</head>
<body>
	<div id="shortcut-2014">
	<div class="w1">
		<ul class="fr">
			<li class="fore1" id="ttbar-login" clstag="h|keycount|2015|01b">
				<a href="login.jsp" class="link-login  style-red">请登录</a>&nbsp;&nbsp;<a
				href="register.html" class="link-regist">免费注册</a>
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
	<div>
		<img src=img/top_img.png width="1898" height="80">
	</div>
	<div class="w1">
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
	<div id="nav-2014">
		 <div class="w1">
        <div class="w-spacer"></div>
        <div id="categorys-2014" class="dorpdown">
            <div class="dt" clstag="h|keycount|2015|05a">
                <a target="_blank" href="//www.jd.com/allSort.aspx">全部商品分类</a>
            </div>
            <div class="dd">
                <div class="dd-inner">
                <c:forEach items="${requestScope.goodsTypeList}" var="goodsType">
                    <div class="item fore1" data-index="1" clstag="h|keycount|2015|0501a">
                        <h3>
                        <a target="_blank" href="goods/goodsActionsearchGoodsInfoList.action?typeCode=${goodsType.typeCode}">
                        	${goodsType.typeName}	
                        </a></h3>
                        <i>&gt;</i>
                    </div>
               </c:forEach>
                </div>
            </div>
        </div>
			<!--index_ok-->
			<div id="navitems-2014">
				<ul id="navitems-group1">
					<li clstag="h|keycount|2015|06a" class="fore1"><a
						target="_blank" href="#">服装城</a></li>
					<li clstag="h|keycount|2015|06b" class="fore2"><a
						target="_blank" href="#">美妆馆</a></li>
					<li clstag="h|keycount|2015|06c" class="fore3"><a
						target="_blank" href="#">京东超市</a></li>
					<li clstag="h|keycount|2015|06d" class="fore4"><a
						target="_blank" href="#">生鲜</a></li>
				</ul>
				<div class="spacer"></div>
				<ul id="navitems-group2">
					<li clstag="h|keycount|2015|06e" class="fore1"><a
						target="_blank" href="#">全球购</a></li>
					<li clstag="h|keycount|2015|06f" class="fore2"><a
						target="_blank" href="#">闪购</a></li>
					<li clstag="h|keycount|2015|06g" class="fore3"><a
						target="_blank" href="#">团购</a></li>
					<li clstag="h|keycount|2015|06h" class="fore4"><a
						target="_blank" href="#">拍卖</a></li>
					<li clstag="h|keycount|2015|06i" class="fore5"><a
						target="_blank" href="#">金融</a></li>
				</ul>
			</div>
			<!--index_ok-->
			<div id="treasure"></div>
			<span class="clr"></span>
		</div>
	</div>
	<div id="focus">
		<div class="slider">
			<ul class="slider-main" style="position: relative;">
				<li class="slider-panel" style="position: absolute; z-index: 0;">
					<div class="inner">
						<a href="showgoods.html"> <img src="img/banner1.jpg">
						</a>
					</div>
				</li>
		</div>
	</div>
	<!--index_ok-->
	<div class="w1" id="focus-extra">
		<div id="news" class="m">
			<div class="mt">
				<h2>京东快报</h2>
				<div class="extra">
					<a target="_blank" href="//headline.jd.com/"
						clstag="h|keycount|2015|09a">更多 &gt;</a>
				</div>
			</div>
			<div class="mc">
				<ul>
					<li clstag="h|keycount|2015|09b1"><a target="_blank" href="#"><span>[特惠]</span>个护清洁限量抢神券159减147</a></li>
					<li clstag="h|keycount|2015|09b2"><a target="_blank" href="#"><span>[公告]</span>京东&middot;无锡馆正式启动</a></li>
					<li clstag="h|keycount|2015|09b3"><a target="_blank" href="#"><span>[特惠]</span>大牌洗护明星私藏
							不止五折</a></li>
					<li clstag="h|keycount|2015|09b4"><a target="_blank" href="#"><span>[公告]</span>阅读指数帮您选好书好碟</a></li>
					<li clstag="h|keycount|2015|09b5"><a target="_blank" href="#"><span>[特惠]</span>机械键盘99元抢！</a></li>
				</ul>
			</div>
		</div>
		<!--index_ok-->
		<div id="lifeserv" class="m">
			<div class="mt">
				<h2>生活服务</h2>
				<div class="extra"></div>
			</div>
			<div class="mc">
				<ul>
					<li class="fore1" data-iframe="#" clstag="h|keycount|2015|10b01">
						<a class="cw-icon" target="_blank" href="#"> <i
							class="ci-left"
							style="background-image: url(img/57620a6fN77b2b8af.png); _background-image: url(img/57620a6fN77b2b8af.png);"></i><span>话费</span>
					</a>
					</li>
					<li class="fore2" data-iframe="#" clstag="h|keycount|2015|10b02">
						<a class="cw-icon" target="_blank" href="#"> <i
							class="ci-left"
							style="background-image: url(img/57620a6fN77b2b8af.png); _background-image: url(img/57620a6fN77b2b8af.png);"></i><span>机票</span>
					</a>
					</li>
					<li class="fore3" data-iframe="#" clstag="h|keycount|2015|10b03">
						<a class="cw-icon" target="_blank" href="#"> <i
							class="ci-left"
							style="background-image: url(img/57620a6fN77b2b8af.png); _background-image: url(img/57620a6fN77b2b8af.png));"></i><span>电影票</span>
					</a>
					</li>
					<li class="fore4" data-iframe="#" clstag="h|keycount|2015|10b04">
						<a class="cw-icon" target="_blank" href="#"> <i
							class="ci-left"
							style="background-image: url(img/57620a6fN77b2b8af.png); _background-image: url(img/57620a6fN77b2b8af.png));"></i><span>游戏</span>
					</a>
					</li>
					<li class="fore5" clstag="h|keycount|2015|10b05"><a
						class="cw-icon" target="_blank" href="#"> <i class="ci-left"
							style="background-image: url(img/57620a6fN77b2b8af.png); _background-image: url(img/57620a6fN77b2b8af.png);"></i><span>彩票</span>
					</a></li>
					<li class="fore6" clstag="h|keycount|2015|10b06"><a
						class="cw-icon" target="_blank" href="#"> <i class="ci-left"
							style="background-image: url(img/57620a6fN77b2b8af.png); _background-image: url(img/57620a6fN77b2b8af.png);"></i><span>加油卡</span>
					</a></li>
					<li class="fore7" clstag="h|keycount|2015|10b07"><a
						class="cw-icon" target="_blank" href="#"> <i class="ci-left"
							style="background-image: url(img/57620a6fN77b2b8af.png); _background-image: url(img/57620a6fN77b2b8af.png);"></i><span>酒店</span>
					</a></li>
					<li class="fore8" clstag="h|keycount|2015|10b08"><a
						class="cw-icon" target="_blank" href="#"> <i class="ci-left"
							style="background-image: url(img/57620a6fN77b2b8af.png); _background-image: url(img/57620a6fN77b2b8af.png));"></i><span>火车票</span>
							<i class="ci-tip"
							style="width: 12px; height: 15px; top: 0px; right: 3px; background: url(//img10.360buyimg.com/da/jfs/t2161/29/277121102/1033/bb98ca5d/55fa836fN29b00ae8.png); _background: url(//img30.360buyimg.com/da/jfs/t2239/157/257074274/1022/fffbd45c/55fa837fNa1b41ba4.png);"></i>
					</a></li>
					<li class="fore11" clstag="h|keycount|2015|10b11"><a
						class="cw-icon" target="_blank" href="#"> <i class="ci-left"
							style="background-image: url(img/57620a6fN77b2b8af.png); _background-image: url(img/57620a6fN77b2b8af.png);"></i><span>众筹</span>
					</a></li>
					<li class="fore9" clstag="h|keycount|2015|10b09"><a
						class="cw-icon" target="_blank" href="#"> <i class="ci-left"
							style="background-image: url(img/57620a6fN77b2b8af.png); _background-image: url(img/57620a6fN77b2b8af.png);"></i><span>理财</span>
					</a></li>
					<li class="fore12" clstag="h|keycount|2015|10b12"><a
						class="cw-icon" target="_blank" href="#"> <i class="ci-left"
							style="background-image: url(img/57620a6fN77b2b8af.png); _background-image: url(img/57620a6fN77b2b8af.png);"></i><span>礼品卡</span>
					</a></li>
					<li class="fore10" clstag="h|keycount|2015|10b10"><a
						class="cw-icon" target="_blank" href="#"> <i class="ci-left"
							style="background-image: url(img/57620a6fN77b2b8af.png); _background-image: url(img/57620a6fN77b2b8af.png);"></i><span>白条</span>
							<i class="ci-tip"
							style="width: 12px; height: 15px; top: 0px; right: 3px; background: url(//img20.360buyimg.com/da/jfs/t1846/133/242813052/1036/6c6870b5/55fa839eN26693625.png); _background: url(//img12.360buyimg.com/da/jfs/t1825/232/1615277983/1024/5563be62/55fa83c5N4fd4c19d.png);"></i>
					</a></li>
				</ul>
			</div>
		</div>
		<!--@TODO ad 新增右侧广告位 开始-->
		<div id="right-pic" class="m">
			<div class="mc">
				<script>
					/**RTB test*/
					var focusRTBTimes = [ {
						s : '2016/04/08 10:00:00',
						e : '2016/04/18 00:00:00'
					} ];
					(function() {
						var adList = [
								'<a href="#" target="_blank" clstag="h|keycount|2015|10b13"><img src="img/5768ac0fNac933f9c.jpg" alt="" width="250" height="75" /></a>',
								'<a href="#" target="_blank" clstag="h|keycount|2015|10b13"><img src="img/5767a0c6N57f3a9b5.jpg" alt="" width="250" height="75" /></a>'

						];
						if (adList.length) {
							document.write(adList[Math.floor(Math.random()
									* adList.length)]);
						}
					})();
				</script>
			</div>
		</div>
		<!--@TODO ad 新增右侧广告位 结束-->

		<footer style="position: absolute; top: 485px">
		<div id="service-2014" clstag="h|keycount|2015|32a">
			<div class="slogen">
				<span class="item fore1"> <img src="img/service_items_1.png"
					style="margin-left: 40px">
				</span> <span class="item fore2"> <img src="img/service_items_2.png"
					style="margin-left: 80px">
				</span> <span class="item fore3"> <img src="img/service_items_3.png"
					style="margin-left: 80px">
				</span> <span class="item fore4"> <img src="img/service_items_4.png"
					style="margin-left: 80px">
				</span>
			</div>
		</div>
		<div id="footer-2014" clstag="h|keycount|2015|33a">
			<div class="links">
				<a rel="nofollow" target="_blank" href="#">关于我们</a>|<a
					rel="nofollow" target="_blank" href="#">联系我们</a>|<a rel="nofollow"
					target="_blank" href="#">商家入驻</a>|<a rel="nofollow" target="_blank"
					href="#">营销中心</a>|<a rel="nofollow" target="_blank" href="#">手机京东</a>|<a
					target="_blank" href="#">友情链接</a>|<a target="_blank" href="#">销售联盟</a>|<a
					href="//club.jd.com/" target="_blank">京东社区</a>|<a href="#"
					target="_blank">京东公益</a>|<a href="#" target="_blank">English
					Site</a>|<a href="#" target="_blank">Contact Us</a>
			</div>
			<div class="copyright">
				<a target="_blank" href="img/56a0a994Nf1b662dc.png"> 京公网安备
					11000002000088号</a>&nbsp;&nbsp;|&nbsp;&nbsp;京ICP证070359号&nbsp;&nbsp;|&nbsp;&nbsp;<a
					target="_blank" href="#">互联网药品信息服务资格证编号(京)-经营性-2014-0008</a>&nbsp;&nbsp;|&nbsp;&nbsp;新出发京零&nbsp;字第大120007号<br>互联网出版许可证编号新出网证(京)字150号&nbsp;&nbsp;|&nbsp;&nbsp;<a
					rel="nofollow" href="#" target="_blank">出版物经营许可证</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
					href="#" target="_blank">网络文化经营许可证京网文[2014]2148-348号</a>&nbsp;&nbsp;|&nbsp;&nbsp;违法和不良信息举报电话：4006561155<br>Copyright&nbsp;?&nbsp;2004&nbsp;-&nbsp;2016&nbsp;&nbsp;京东JD.com&nbsp;版权所有&nbsp;&nbsp;|&nbsp;&nbsp;消费者维权热线：4006067733<br>京东旗下网站：<a
					href="#" target="_blank">京东钱包</a>
			</div>
			<div class="authentication">
				<a rel="nofollow" target="_blank" href="#"> <img width="103"
					height="32" alt="经营性网站备案中心" src="img/54b8871eNa9a7067e.png"
					class="err-product">
				</a> <a rel="nofollow" target="_blank" id="urlknet" tabindex="-1"
					href="#"> <img border="true" width="103" height="32" alt="可信网站"
					src="img/54b8872dNe37a9860.png" class="err-product">
				</a> <a rel="nofollow" target="_blank" href="#"> <img width="103"
					height="32" alt="网络警察" src="img/56a89b8fNfbaade9a.jpg"
					class="err-product">
				</a> <a rel="nofollow" target="_blank" href="#"> <img width="103"
					height="32" src="img/54b8875fNad1e0c4c.png" class="err-product">
				</a> <a target="_blank" href="#"><img width="103" height="32"
					src="img/5698dc03N23f2e3b8.jpg"></a> <a target="_blank" href="#"><img
					width="103" height="32" src="img/5698dc16Nb2ab99df.jpg"></a>
			</div>
		</div>
		</footer>
</body>
</html>