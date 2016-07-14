<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=basePath %>css/base.css" rel="stylesheet">
<script type="text/javascript" src="<%=basePath %>js/jquery-1.6.4.js"></script>
<title>京东-欢迎登录</title>
</head>
<body>
	<div class="w">
		<div id="logo1">
			<a href="#"> <img src="<%=basePath %>img/logo.png" alt="京东"
				width="170" height="60">
			</a> <b></b>
		</div>
	</div>
	<div id="content">
		<div class="login-wrap">
			<div class="w">
				<div class="login-form">
					<div class="login-box">
						<div class="mt">
							<h1>京东会员</h1>
							<div class="extra-r">
								<div class="regist-link">
									<a href="register.jsp" target="_blank"><b></b>立即注册</a>
								</div>
							</div>
						</div>
						<div class="mc">
							<div class="form">
								<form action="user/userActionlogin.action" id="formlogin" method="post" >
									<input type="hidden" id="uuid" name="uuid"
										value="b32e6d7f-925f-4d62-9836-13c535cf9a11" /> <input
										type="hidden" name="machineNet" id="machineNet" value=""
										class="hide" /> <input type="hidden" name="machineCpu"
										id="machineCpu" value="" class="hide" /> <input type="hidden"
										name="machineDisk" id="machineDisk" value="" class="hide" /> <input
										type="hidden" name="eid" id="eid" value="" class="hide" /> <input
										type="hidden" name="fp" id="sessionId" value="" class="hide" />
									<input type="hidden" name="_t" id="token" value="_nthibTa"
										class="hide" /> <input type="hidden" name="FypJWtXFSR"
										value="FOCwF" />
									<div class="item item-fore1">
										<label for="loginname" class="login-label name-label"></label>
										<input id="loginname" type="text" class="itxt"
											name="user.name" tabindex="1" autocomplete="off"
											placeholder="邮箱/用户名/已验证手机" /> <span class="clear-btn"></span>
									</div>
									<div id="entry" class="item item-fore2">
										<label class=" pwd-label" for="nloginpwd"></label> <label
											id="sloginpwd" style="display: none;"> </label> <input
											type="password" id="nloginpwd" name="user.password"
											class="itxt itxt-error" tabindex="2" autocomplete="off"
											placeholder="密码" /> <input type="hidden" name=""
											id="loginpwd" value="" class="hide" /> <span
											class="clear-btn"></span> <span class="capslock"><b></b>大小写锁定已打开</span>
									</div>
									<div class="item item-fore3">
										<div class="safe">
											<span> <input id="autoLogin" name="chkRememberMe"
												type="checkbox" class="jdcheckbox" tabindex="3"> <label
												for>自动登录</label>
											</span> <span class="forget-pw-safe"> <a
												href="//safe.jd.com/findPwd/index.action" class=""
												target="_blank" clstag="pageclick|keycount|20150112ABD|8">忘记密码?</a>
											</span>
										</div>
									</div>
									<div class="item item-fore5">
										<div class="login-btn">
											<input type="submit" value="登    陆" class="btn-img btn-entry"/>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="login-banner">
				<div class="w">
					<div id="banner-bg" class="i-inner"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="w">
		<div id="footer-2013">
			<div class="links">
				<a rel="nofollow" target="_blank" href="#"> 关于我们 </a> | <a
					rel="nofollow" target="_blank" href="#"> 联系我们 </a> | <a
					rel="nofollow" target="_blank" href="#"> 人才招聘 </a> | <a
					rel="nofollow" target="_blank" href="#"> 商家入驻 </a> | <a
					rel="nofollow" target="_blank" href="#"> 广告服务 </a> | <a
					rel="nofollow" target="_blank" href="#"> 手机京东 </a> | <a
					target="_blank" href="#"> 友情链接 </a> | <a target="_blank" href="#">
					销售联盟 </a> | <a href="#" target="_blank"> 京东社区 </a> | <a href="#"
					target="_blank"> 京东公益 </a> | <a target="_blank" href="#"
					clstag="pageclick|keycount|20150112ABD|9">English Site</a>
			</div>
			<div class="copyright">
				Copyright&copy;2004-2016&nbsp;&nbsp;京东JD.com&nbsp;版权所有</div>
		</div>
	</div>




	<script type="text/javascript" src="js/login2015.js"></script>
	<script type="text/javascript" src="js/base.js"></script>
	<script type="text/javascript" src="js/login.index.js" source="widget"></script>


	<script type="text/javascript">
		(function() {
			var ja = document.createElement('script');
			ja.type = 'text/javascript';
			ja.async = true;
			ja.src = ('https:' == document.location.protocol ? 'https://cscssl'
					: '//csc')
					+ '.jd.com/wl.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ja, s);
		})();
	</script>
	<script src="js/md5.js"></script>
	<script src="js/f.js"></script>
	<script>
		$(function() {
			getJdEid(function(eid, fpid) {
				var eValue = eid;
				var fpValue = fpid;
				var ee = $("#eid").prop("value", eValue);
				var fp = $("#sessionId").prop("value", fpValue);
			});
		});
	</script>
	<script type="text/javascript">
		var _jraq = _jraq || [];
		_jraq.push([ 'account', 'UA-J2011-12' ]);
		(function() {
			var ja = document.createElement('script');
			ja.type = 'text/javascript';
			ja.async = true;
			ja.src = ('https:' == document.location.protocol ? 'https://jrclick'
					: '//jrclick')
					+ '.jd.com/wl.dev.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ja, s);
		})();
	</script>
</body>
</html>
