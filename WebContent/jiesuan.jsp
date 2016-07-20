<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ssh.jd.model.car.pojo.Car" %>
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
<title>结算中心</title>
<link href="css/base.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-1.6.4.js"></script>
  <script type="text/javascript">

		function saveOrder(){

			var desc = $("#remarkText").val(); 
			location.href = "<%=basePath%>order/orderActionaddOrder.action?description="+desc;
		}
    </script>
</head>
<body>
<div id="shortcut-2014">
    <div class="w">
        <ul class="fr">
            <li class="fore1" id="ttbar-login" clstag="h|keycount|2015|01b">你好， 
            	<a href="<%=basePath%>goods/goodsActionloadGoodsTypeList.action" class="link-login  style-red">${sessionScope.currentUser.name}&nbsp;</a>
            	<c:if test="${not empty sessionScope.currentUser}">
            		&nbsp;&nbsp;<a href="<%=basePath%>login.jsp" class="link-regist">退出</a> 
            	</c:if>
            	<c:if test="${empty sessionScope.currentUser}">
            		<a href="<%=basePath%>login.jsp" >请登录</a>&nbsp;&nbsp;
            		<a href="<%=basePath%>register.jsp" class="link-regist">免费注册</a>  
            	</c:if>
            
            </li>
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
<div class="w header clearfix">
    <div id="logo">
        <a href="<%=basePath%>goods/goodsActionloadGoodsTypeList.action" class="link1"><img src="img/logo-201305.png" alt="京东商城"></a>
        <a href="#none" class="link3"><b></b></a>	</div>
    <div class="cart-search">
        <div class="form">
            <input id="key" type="text" class="itxt" autocomplete="off" accesskey="s" style="color: rgb(153, 153, 153);">
            <input type="button" class="button" value="搜索" clstag="clickcart|keycount|xincart|cart_search" onclick="javascript:void(0);">
        </div>
    </div>
</div>

<div id="container" class="w">
    <div id="content">
        <!-- <div class="m"> -->
        <div class="checkout-tit">
            <span class="tit-txt">填写并核对订单信息</span>
        </div>
        <!--<div class="mc">-->
        <div class="checkout-steps">
            <!--  /widget/consignee-step/consignee-step.tpl -->
            <div class="step-tit">
                <h3>收货人信息</h3>
               
            </div>
            <div class="step-cont">
                <div id="consignee-addr" class="consignee-content">
                    <div class="consignee-scrollbar">
                        <div class="ui-scrollbar-main">
                            <div class="consignee-scroll">
                                <div class="consignee-cont" id="consignee1" style="height: 42px;">
                                    <ul id="consignee-list">

                                        <li class="ui-switchable-panel ui-switchable-panel-selected li-hover" style="display: list-item;" id="consignee_index_138212367" selected="selected">
                                            <!-- 这个div处理用户名称 -->
                                            <div class="consignee-item item-selected" style="display: inline-block">
                                                <span limit="8" title="username">${sessionScope.currentUser.name}</span><b></b>
                                            </div>

                                               <span>
                                               	  <!-- 用户名称 -->
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.currentUser.name}
                                                  <!-- 收货地址 -->
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.currentUser.address}
                                                  <!-- 联系电话 -->
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${sessionScope.currentUser.phone}
                                               </span>

                                        </li>
                                        <!---->
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="addr-switch switch-on" id="consigneeItemAllClick" onclick="show_ConsigneeAll()" clstag="pageclick|keycount|trade_201602181|2">
                    <span>更多地址</span><b></b>
                </div>
                <div class="addr-switch switch-off hide" id="consigneeItemHideClick" onclick="hide_ConsigneeAll()">
                    <span>收起地址</span><b></b>
                </div>

              

                <input type="hidden" id="consigneeList_giftSenderConsigneeMobile" value="">
                <input type="hidden" id="consigneeList_giftSenderConsigneeName" value="">
            </div>
            <!--/ /widget/consignee-step/consignee-step.tpl -->
            <div class="hr"></div>
            <!--/ /widget/shopping-list/shopping-list.tpl -->
            <div id="shipAndSkuInfo">
                <div id="payShipAndSkuInfo">
                    <div class="step-tit">
                        <h3>支付方式</h3>
                    </div>
                    <div class="step-cont">
                        <div class="payment-list" id="">
                            <div class="list-cont">
                                <ul id="payment-list">
                                    <input type="hidden" id="instalmentPlan" value="false">



                                    <li style="cursor: pointer;" onclick="
									 save_Pay(1,0,1); 				" clstag="pageclick|keycount|trade_201602181|8">

                                        <div class=" payment-item  online-payment " for="pay-method-1" payname="货到付款" payid="1" onlinepaytype="0"><b></b>
                                            货到付款<span class="qmark-icon qmark-tip" data-tips="送货上门后再收款，支持现金、POS机刷卡、支票支付 <a href='//help.jd.com/user/issue/103-983.html' target='_blank' class='ftx-05'>查看服务及配送范围</a>"></span>					                    													                                																</div>
                                    </li>


                                    <li style="cursor: pointer;" onclick="
				save_Pay(4,2,1);" clstag="pageclick|keycount|PaymentLead__2016030411|3">

                                        <div class=" payment-item  online-payment " for="pay-method-4" payname="微信支付" payid="4" onlinepaytype="2"><b></b>
                                            微信支付                    													                                				<span class="qmark-icon qmark-tip" data-tips="提交订单之后，使用微信扫描二维码完成支付"></span>												</div>
                                    </li>


                                    <li style="cursor: pointer;" onclick="
				save_Pay(4,3,1);" clstag="pageclick|keycount|PaymentLead__2016030411|2">

                                        <div class=" payment-item  online-payment " for="pay-method-4" payname="京东支付" payid="4" onlinepaytype="3"><b></b>
                                            京东支付                    													                                								<span class="qmark-icon qmark-tip" data-tips="绑定银行卡，支付更快捷 <a href='//help.jd.com/user/issue/list-173-228.html' target='_blank' class='ftx-05'>了解京东支付</a>"></span>								</div>
                                    </li>


                                    <li style="cursor: pointer;" onclick="
				save_Pay(4,0,1);" clstag="pageclick|keycount|trade_201602181|7">

                                    <div class=" payment-item item-selected online-payment " for="pay-method-4" payname="在线支付" payid="4" onlinepaytype="0"><b></b>
                                            在线支付                    													                <span id="cod" class="qmark-icon qmark-tip" data-tips="即时到账，支持绝大数银行借记卡及部分银行信用卡 <a href='//help.jd.com/user/issue/223-562.html' target='_blank' class='ftx-05'> 查看银行及限额</a>"></span>                 																</div>
                                    </li>


                                    <li style="cursor: pointer;" onclick="
				save_Pay(5,0,1);" clstag="pageclick|keycount|trade_201602181|9">

                                        <div class="hide payment-item  online-payment " for="pay-method-5" payname="公司转账" payid="5" onlinepaytype="0"><b></b>
                                            公司转账                    													                                												<span class="qmark-icon qmark-tip" data-tips="通过快钱平台转账 转账后1-3个工作日内到账 <a href='//help.jd.com/user/issue/list-175.html' target='_blank' class='ftx-05'>查看账户信息</a>"></span> 				</div>
                                    </li>


                                    <li style="cursor: pointer;" onclick="
				save_Pay(2,0,1);" clstag="pageclick|keycount|trade_201602181|10">

                                        <div class="hide payment-item  online-payment " for="pay-method-2" payname="邮局汇款" payid="2" onlinepaytype="0"><b></b>
                                            邮局汇款                    													<span class="qmark-icon qmark-tip" data-tips="通过快钱平台收款 汇款后1-3个工作日到账 <a href='//help.jd.com/user/issue/list-174.html' target='_blank' class='ftx-05'>查看帮助</a>"></span>                                																</div>
                                    </li>


                                    <li id="payment-less" class="hide">
                                        <div class="payment-item-on" clstag="pageclick|keycount|PaymentLead__2016030411|10">
                                            <span>收起</span><b></b>
                                        </div>
                                    </li>
                                    <li id="payment-more">
                                        <div class="payment-item-off" clstag="pageclick|keycount|PaymentLead__2016030411|9">
                                            <span>更多</span><b></b>
                                        </div>
                                    </li>


                                    <script>
                                        $('.online-payment')
                                            .hover(function(){
                                                $(this).addClass('payment-item-hover');
                                            },function(){
                                                $(this).removeClass('payment-item-hover');
                                            });
                                        if($("#payment-list li").length<=7){
                                            $('#payment-less').hide();
                                            $('#payment-more').hide();
                                            var payid=[5,2,8];
                                            for(var i in payid){
                                                $("#payment-list div[payid="+payid[i]+"]").show();
                                            }
                                        }
                                        $('.payment-item-on').click(function(){
                                            $('#payment-less').hide();
                                            $('#payment-more').show();
                                            var payid=[5,2,8];
                                            for(var i in payid){
                                                var payment = $("#payment-list div[payid="+payid[i]+"]");
                                                if(!payment.hasClass("item-selected")){
                                                    payment.hide(100);
                                                }
                                            }
                                        });
                                        $('.payment-item-off').click(function(){
                                            $('#payment-less').show();
                                            $('#payment-more').hide();
                                            var payid=[5,2,8];
                                            for(var i in payid){
                                                var payment = $("#payment-list div[payid="+payid[i]+"]");
                                                if(!payment.hasClass("item-selected")){
                                                    payment.show(100);
                                                }
                                            }
                                        });
                                    </script>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="hr"></div>
                    <!--/ /widget/payment-step/payment-step.tpl -->
                    
                    
                    <div class="step-tit">
                        <h3>送货清单</h3>
                        <div class="extra-r">
                            <a class="price-desc" id="price-desc" href="#none" data-tips="因可能存在系统缓存、页面更新导致价格变动异常等不确定性情况出现，商品售价以本结算页商品价格为准；如有疑问，请您立即联系销售商咨询。">
                                <i></i>&nbsp;价格说明
                            </a>
                            <a href="<%=basePath%>car.jsp" id="cartRetureUrl" class="return-edit ftx-05" clstag="pageclick|keycount|trade_201602181|15">返回修改购物车</a>
                        </div>
                    </div>
                    <div class="step-cont" id="skuPayAndShipment-cont">
                        <!--添加商品清单  zhuqingjie -->
                        <div class="shopping-lists" id="shopping-lists">
                            <!--定义大商品清单LIST-->
                            <div class="shopping-list ABTest">
                                <div class="goods-list">
                                    <div class="goods-tit">
                                        <h4 class="vendor_name_h" id="66621">${goods.producer}</h4>
                                    </div>

                                    <!--单品开始-->
                                    <div class="goods-items">
                                    	<c:forEach items="${sessionScope.car}" var="goods">
                                    	<!-- 生产商 -->
                                    	${goods.producer}
                                        <div class="goods-item" goods-id="10124630019">
											<!-- 商品图片 -->
                                            <div class="p-img">
                                                <a target="_blank" href="http://item.jd.com/10124630019.html">
                                                <img src="<%=basePath%>imgs/${goods.img}.jpg" alt="">
                                                </a>
                                            </div>
                                            
                                            <div class="goods-msg">
                                                <div class="goods-msg-gel">
                                                    <div class="p-name">
                                                        <a href="http://item.jd.com/10124630019.html" target="_blank">
                                                           	${goods.goodsName}
                                                        </a>
                                                    </div>
                                                    <div class="p-price">

                                                        <strong class="jd-price">
                                                        	￥${goods.price}
                                                        </strong>
                                                        <!--增加预售金额显示 end-->
				              							<span class="p-num">×${goods.quantity}</span>         
                                                        <span id="pre-state" class="p-state" skuid="10124630019">有货</span>

                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <i class="p-icon p-icon-w"></i><span class="ftx-04">7天无理由退货</span>
                                            </div>

                                            <div class="clr"></div>
                                        </div>
										</c:forEach>
                                      
                                    </div>
                                </div><!--goods-list 结束-->
                                <div class="dis-modes">
                                    <div class="mode-item mode-tab">
                                        <h4>配送方式</h4>
                                        <div class="mode-tab-nav">
                                            <ul>
                                                <li class="mode-tab-item curr tips-hover">
            			<span class="m-txt">快递运输<i class="qmark-icon qmark-tip" data-tips="由商家选择合作快递为您配送"></i>
                  </span>
                                                    <b></b>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="mode-tab-con hide">
                                            <div class="mode-promise">
                                                <span id="promise-ico"><a href="javascript:void(0)" class="pop_FreightInsurance" title="">　</a></span>
                                                <div class="promise-txt yfx_div_remark" id="66621"> 为您购买了运费险，最高赔付20.00元/单</div>
                                            </div>
                                        </div>
                                    </div>
                                </div><!--dis-modes 结束-->
                                <div class="clr"></div>
                            </div><!--shopping-list 结束-->
                            <br><br>
                            <div id="trade-nostock-recommendation-render" style="display:none"></div>
                              <div class="clr"></div>
                        </div>
                        <!--shopping-lists 结束-->
                    </div>	                        </div>
                <div class="clr"></div>
            </div>
            <div class="clr"></div>
            <!--添加商品清单结束-->
            <!--添加备注信息-->
            <div class="order-remarks hide" id="orderRemarkItem" style="display: block;"><div class="remark-tit">添加订单备注</div><div id="remarkId" style="margin-bottom:7px">  
            <div class="form remark-cont">    
            <input type="text" name="desc" id="remarkText" maxlength="45" size="15" class="itxt itxt01" placeholder="定制类商品，请在备注中做详细说明" 
            onblur="if(this.value==''||this.value=='定制类商品，请在备注中做详细说明'){this.value='定制类商品，请在备注中做详细说明';this.style.color='#cccccc'}" 
            onfocus="if(this.value=='定制类商品，请在备注中做详细说明') {this.value='';};this.style.color='#000000';">    
             <span class="ftx-03 ml10">&nbsp;&nbsp;提示：请勿填写有关支付、收货、发票方面的信息</span>  </div></div></div>
            <div class="hr"></div>
            <!--  /widget/invoice-step/invoice-step.tpl -->
            <div class="clr"></div>
            <!--/ /widget/invoice-step/invoice-step.tpl -->
            <div class="hr"></div>
            <!--  /widget/order-coupon/order-coupon.tpl -->
            <div class="step-tit step-toggle-on" id="virtualdiv" onclick="vertualHidOrShow()" clstag="pageclick|keycount|xunizichan__2016031015|1">
            </div>
            <div class="step-cont order-virtual" style="display: none;">
                <div class="order-virtual-tabs">
                    <ul>
                      
                    </ul>
                </div>
                <div class="ui-switchable-panel-main" id="">
                    <div class="ftx01 virtual-warning ml20 hide" id="safeBalancePart">
              
                    </div>
                    <div class="hr hide"></div>
                    <!-- coupon -->
                    <div class="coupon-main ui-switchable-panel ui-switchable-panel-selected" style="display: block;">
                        <div class="coupon-optimal ml20" id="bestCouponDiv" style="display: none;">
                            <label clstag="pageclick|keycount|xunizichan__2016031015|13">
                                <input id="bestCouponCheck" type="checkbox" onclick="getBastCouponList(this)">
                                <span id="bestCoupon">使用最优组合</span>
                            </label>
                        </div>
                        <div class="hr" id="couponsplit" style="display: none;"></div>
                        <div class="coupon-cont">
                            <div class="coupon-tab ml20">
                                <ul>
                                </ul>
                            </div>
                            <div class="coupon-tab-panel-main ml20" id="coupons">
                                <!--coupon tab-->
                                </div>
                                </div>
                        </div>
                    </div>
                    <!-- giftcard -->
                    <div class="giftcard-main ui-switchable-panel" id="gift" style="display: none;">
                    </div>
                    <!-- jdbean-->
                    <div class="jdbean-main ui-switchable-panel" style="display: none;">
                        <div class="beans-2015 ml20" id="jdBeans-new">
                        </div>
                    </div>
                    <!-- balance -->
                    <div class="balance-main ui-switchable-panel" style="display: none;">
                        <div class="form v-balance ml20" id="jdBalance" clstag="pageclick|keycount|xunizichan__2016031015|12">
                            <input id="selectOrderBalance" type="checkbox" class="jdcheckbox" value="" onclick="useOrCancelBalance(this)" disabled="disabled">
                            <label id="canUsedBalanceId" for="selectOrderBalance">使用余额（账户当前余额： <span class="ftx-01">0.00</span>元）</label>
                            <div class="ftx01 safeLpkPart hide" id="safeBalancePart">
                                为保障您的账户资金安全，余额暂不可用，请先
                                <a target="_blank" href="//safe.jd.com/user/paymentpassword/safetyCenter.action">[开启支付密码]</a>
                            </div>

                        </div>
                    </div>
                    <div class="virtual-usedcont">
                        <span class="virtual-usedcont-price">金额抵用<em id="total">￥0.00</em></span>
                        <ul>
                            <li id="couponTotalShow" style="display: none;">使用优惠券<em></em>张，优惠<em></em>元 </li>
                            <li id="freeFreightShow" style="display: none;">| 使用免运费券<em></em>1张，抵用运费<em></em>元 </li>
                            <li id="giftCardShow" style="display: none;">| 使用京东E卡<em></em>张，抵用<em></em>元</li>
                            <li id="jdBeanShow" style="display: none;">| 使用京豆，抵用<em></em>元</li><li>
                        </li><li id="balanceShow" style="display: none;">| 使用余额，抵用<em></em>元</li>
                        </ul>
                    </div>
                </div>
            </div>

            <!--/  /widget/order-coupon/order-coupon.tpl -->
        </div>
        <!-- </div> -->
        <!-- </div> -->
        <!--  /widget/order-summary/order-summary.tpl -->
        <div class="order-summary">
            <!--  预售 计算支付展现方式 begin -->
            <div class="statistic fr">
                <div class="list">
                    <span>
                    <em class="ftx-01">
						<%=((Car)session.getAttribute("car")).getCount()%>
					</em> 件商品，总商品金额：</span>
                    <em class="price" id="warePriceId" v="156">
                    		￥<%=((Car)session.getAttribute("car")).getTotal()%>
                    </em>
                </div>
                
               
            </div>
            <div class="clr"></div>
        </div>
        <!--/ /widget/order-summary/order-summary.tpl -->
        <!-- 运费弹窗显示 -->
        <div id="tooltip-box06" class="hide">
            <div class="summary-freight-tips">
                <div class="freight-tit">
                    店铺运费明细
                </div>
                <div class="freight-con">
                    <!--yanwenqi 只包含延保商品的商家不显示 -->
                    <div class="freight-item">
                        <div class="merchant-tit">
                            <div>
                                <span>商家：</span>
                                <span class="vendor_name_freight" id="66621">海澜之家京东旗舰店</span>
                            </div>
                            <!--yanwenqi 超限运费按照SKU展示 -->
                            <div><span class="ftx-01" freightbyvenderid="66621" popjdshipment="false">免运费</span></div>

                        </div>

                        <ul class="goods-list">
                            <!--yanwenqi 延保商品不显示在列表里 -->
                            <span id="66621" class="hide"></span>
                            <li id="10124630019" class="goods-item">
                                <a href="#"><img height="50" width="50" src="//img12.360buyimg.com/n3/jfs/t2437/115/2968396609/173392/9e2bc611/5721a68eN0a053f3d.jpg" alt=""></a>
                                <!--yanwenqi 加上超限运费 -->
                            </li>
                            <!--yanwenqi 延保商品不显示在列表里 -->
                            <span id="66621" class="hide"></span>
                            <li id="10124632023" class="goods-item">
                                <a href="#"><img height="50" width="50" src="//img12.360buyimg.com/n3/jfs/t2755/203/494641002/277177/2f246ac0/5715b71eN7498b3d5.jpg" alt=""></a>
                                <!--yanwenqi 加上超限运费 -->
                            </li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>
        <!-- 运费弹窗结束-->
        <!--  /widget/checkout-floatbar/checkout-floatbar.tpl -->
        <div class="trade-foot">
            <div class="trade-foot-detail-com">
                <div class="fc-price-info">
                    <span class="price-tit">应付总额：</span>
                    <span class="price-num" id="sumPayPriceId">
                    	￥<%=((Car)session.getAttribute("car")).getTotal()%>
                    </span>
                </div>
                <div class="fc-baitiao-info" style="display: none;">
                    <span>白条支付：<em>30天免息</em>（不使用优惠）<i class="bt-edit-icon" onclick="javascript:btDetail();" clstag="pageclick|keycount|PaymentLead__2016030411|5"></i></span>
                </div>
                <label class="noShowMoney hide" id="giftBuyHidePriceDiv">
                    <input type="checkbox" id="giftBuyHidePrice" checked="">包装内不显示礼品价格
                </label>

                <div class="fc-consignee-info">
                    <span class="mr20" id="sendAddr">寄送至： ${sessionScope.currentUser.address}</span>
                    <span id="sendMobile">收货人：${sessionScope.currentUser.name}&nbsp;  ${sessionScope.currentUser.phone}&nbsp;</span>
                </div>
            </div>
            <!-- 支付密码 -->
            <div class="pay-pwd hide" id="paypasswordPanel" style="display: none;">
                <div class="pay-pwd-cont">
                    <span class="label">支付密码： </span>
                    <input class="itxt" id="txt_paypassword" type="password" placeholder="为保证资产安全请输入支付密码">
                  <span class="forgot-password">
                    <a target="_blank" href="//safe.jd.com/user/paymentpassword/getBackPassword.action">忘记密码？</a>
                  </span>
                </div>
                <div id="no-pwd-error" class="pay-pwd-error hide">
                    <label class="error-msg" for="">请输入支付密码</label>
                </div>
                <div id="pwd-error" class="pay-pwd-error hide" style="margin-right:16px;">
                    <label class="error-msg" for=""></label>
                </div>
                <div class="payment-bt-tips hide">
                    <span class="bt-tips-cont">结算金额变动，请重新选择白条分期以及白条优惠</span><i class="bt-tips-close" onclick="closebtErrorTip();">×</i>
                </div>
            </div>
            <!-- 预售 -->

            <!---->
            <div class="pay-pwd" id="paypasswordPanel" style="display: none">
                <div class="pay-pwd-cont">
                <span class="label">
                  支付密码
                </span>
                    <input type="password" class="itxt" id="txt_paypassword">
                <span class="forgot-password">
                  <a target="_blank" href="http://safe.jd.com/user/paymentpassword/getBackPassword.action">
                      忘记支付密码？
                  </a>
                </span>
                </div>
            </div>
            <!-- 支付密码 -->
            <div class="clr"></div>

            <div id="checkout-floatbar" class="group">
                <div class="ui-ceilinglamp checkout-buttons">
                    <div class="sticky-placeholder hide" style="display: none;">
                    </div>
                    <div class="clr"></div>
                    <div class="sticky-wrap">
                        <div class="inner">
                           <!--  <button type="submit" class="checkout-submit" id="order-submit" onclick="javascript:submit_Order();">
                                提交订单<b></b> 
                            </button>
                           -->
                            <button onclick="saveOrder()"  class="checkout-submit" id="order-submit" >
                                提交订单<b></b>
                            </button>

                            <span id="checkCodeDiv"></span>

                            <div class="checkout-submit-tip" id="changeAreaAndPrice" style="display: none;">
                                由于价格可能发生变化，请核对后再提交订单
                            </div>
                            <!--div style="display:none" id="factoryShipCodShowDivBottom" class="dispatching">
                              部分商品货到付款方式：先由京东配送“提货单”并收款，然后厂商发货。
                            </div-->
                        </div>
                        <span id="submit_message" style="display:none" class="submit-error"></span>

                        <div class="submit-check-info" id="submit_check_info_message" style="display:none"></div>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>

        </div>
        <!--/ /widget/checkout-floatbar/checkout-floatbar.tpl -->

        <!--  /widget/backpanel/backpanel.tpl -->
        <div id="backpanel">
            <div id="backpanel-inner" class="hide" style="right: 284px;">
                <div class="bp-item bp-item-survey">
                    <a href="http://surveys.jd.com/index.php?r=survey/index/sid/416587/lang/zh-Hans" class="survey" target="_blank">我要反馈</a>
                </div>
                <div class="bp-item bp-item-backtop" data-top="0">
                    <a href="#none" class="backtop" target="_self">返回顶部</a>
                </div>
            </div>
        </div>
        <!--/ /widget/backpanel/backpanel.tpl -->

    </div>

</div>

<div class="clr"></div>
</body>
</html>