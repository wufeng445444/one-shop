<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>找回密码</title>
<link href="<%=request.getContextPath()%>/css/find_paswd.css?1561453"
	rel="stylesheet" type="text/css" />
<script src="<%=request.getContextPath()%>/js/find_paswd.js?1561453"
	type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/register_new.js"></script>
</head>
<body>
	<link rel="shortcut icon"
		href="<%=request.getContextPath()%>/images/yhd_favicon.ico" />

	<div class="regist_header clearfix">
		<div class="wrap">
			<a href="<%=request.getContextPath()%>/index.jsp" class="logo"><img
				src="<%=request.getContextPath()%>/images/loginlogo.jpg" height="55"
				alt="1号店" /></a>
			<div class="regist_header_right clearfix">
				<!--<a href="#" class="english_edition" id="edition" style="display:none">English</a>-->
				<div class="help_wrap">
					<a class="hd_menu" href="help.html"><s class="help_ico"></s>帮助中心</a>
					<div class="hd_menu_list">
						<ul>
							<li><a href="member_order.html">包裹跟踪</a></li>
							<li><a href="help.html">常见问题</a></li>
							<li><a href="http://my.yhd.com/return/returnApplyList.do">在线退换货</a></li>
							<li><a href="http://my.yhd.com/opinion/opinionList.do">在线投诉</a></li>
							<li><a
								href="http://www.yhd.com/deliveryinfo/deliveryInfo.do">配送范围</a></li>
						</ul>
					</div>
				</div>
				<span class="fr">您好，欢迎光临1号店！ <a
					href="<%=request.getContextPath()%>/login.jsp" class="blue_link">请登录</a></span>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		var no3wUrl="yhd.com";
		var currSiteId = 1;
		var URLPrefix = {"mymall":"http://my.1mall.com","passport_statics":"https://passport.yhd.com/front-passport/passport","yiwangauth":"http://mall.yiwang.cn","yaowang":"http://www.111.com.cn","tracker":"tracker.yhd.com","passport":"https://passport.yhd.com","my":"http://my.yhd.com","central":"http://www.yhd.com","validCodeShowUrl":"https://captcha.yhd.com/public/validcode.do","mall":"http://www.1mall.com","passportother":"https://passport.1mall.com"};
		var yhdUrl="http://www.yhd.com";
        var yhdPassportUrl="https://passport.yhd.com";
        var ywPassportUrl="https://passport.111.com.cn";
        var loli = window['loli'] || {};
        var valid_code_service_flag="1"; 
	</script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/js/jquery.cookie.js?1561453"></script>

	<script type="text/javascript">
  
  
  	$(function () {
  		
  		$("#zphone").click(function () {
  			RemainTime();
  			$.post("<%=request.getContextPath()%>/user/sendNote",
					"phoneid=${phone}",
				function(data){
					if(data){
						alert("发送成功，请注意查收！");	
					}else{
						alert("服务器繁忙，请稍后重试！");
					}
				}
			)
		})
		
		$("#but").click(function() {
			var code = $("#validPhoneCode").val();
			if(code=="" || code.length<4){
				alert("请输入验证码有效");
				return false;
			}
			location.href='<%=request.getContextPath()%>/user/isCodeTrue?phone=${phone}';
		})
		
  	})
  </script>
	<!--找回密码第二步 -->
	<div class="find_wrap">
		<div class="find_step">
			<ul class="clearfix">
				<!--完成给li加done,当前状态加cur -->
				<li class="done"><em>1</em>
					<p>填写用户名</p> <i></i></li>
				<li class="cur"><em>2</em>
					<p>验证身份</p> <i></i></li>
				<li><em>3</em>
					<p>设置新密码</p> <i></i></li>
				<li><em>4</em>
					<p>完成</p></li>
			</ul>
		</div>
		<div class="find_detail">
			<div class="y_regist_form">
				<p class="find_tips">请点击获取验证码并在手机：HUA ${phone}中查看短信，并填写验证码</p>
				<ul class="clearfix">
					<!--判断正确给li加class  “ipt_right”,错误给li加class  “ipt_wrong” -->
					<li class="ishort_li clearfix">
						<div class="fl y_same_item">
							<input class="ysame_input" type="text" value=""
								id="validPhoneCode" /> <span class="y_same_label">短信验证码</span>
						</div> <!--    <a class="receive_code fl same_code_btn r_require_code " href="javascript:;">获取验证码</a> -->
						<input id="zphone" type="button" value=" 获取手机验证码 "
						style="width: 138px; float: left; height: 53px; margin-left: 5px;">
						<!--
                     <a class="fr same_code_btn r_resend_code" href="javascript:;">重新发送（56）</a>
                     <a class="fr same_code_btn r_require_code" href="javascript:;">获取验证码</a>
                     --> <!--错误提示 begin -->
						<div class="y_regist_tips y_regist_tips_red">
							<div class="y_regtip_rel">
								<i></i>
								<div class="y_tips_words">
									如无法接受验证码，请重启手机并确认短信未被拦截！4G用户请关闭4G网络进行接收</div>
							</div>
						</div>
					</li>
					<li>
					<!-- <a href="#" class="y_agreement_btn" id="checkPhoneCode">下一步</a> -->
					
					<input style="font: normal 16px/52px 'microsoft yahei'; border-radius: 2px;color:white;background-color:#ff3c3c;width:330px;height: 52px;margin-top: 6px;" type="button" id="but" value="下一步"/>   
					</li>
				</ul>
			</div>
		</div>
	</div>

	<div id="simplefooter">
		<a href="http://www.miibeian.gov.cn/" target="_blank">沪ICP备13044278号</a>|<a>合字B1.B2-20130004</a>|<a
			href="http://d7.yihaodianimg.com/N01/M04/14/0D/CgQCr1KgLjGAM5w3AAQiJTyDkdw48000.jpg"
			data-ref="YHD_Footer_Licence" target="_blank">营业执照</a>
		<p>Copyright &copy; 1号店网上超市 2007-2014，All Rights Reserved</p>
	</div>
	<div>
		<span style="color: #FFFFFF"> 14!$ 53%& 17#@ 10!$ , </span> <span
			style="color: #FFFFFF">1561453</span>
	</div>
	<script type="text/javascript"
		src="https://passport.yhd.com/front-homepage/global/js/global_tracker.js?1561453"></script>
</body>
<script>
    var subMobile = "180****1538";
    jFindPw.init();
</script>
<script type="text/javascript">
//读秒的方法
var iTime = 59;
var Account;
function RemainTime(){
	document.getElementById('zphone').disabled = true;
	var iSecond,sSecond="",sTime="";
	if (iTime >= 0){
		iSecond = parseInt(iTime%60);
		iMinute = parseInt(iTime/60)
		if (iSecond >= 0){
			if(iMinute>0){
				sSecond = iMinute + "分" + iSecond + "秒";
			}else{
				sSecond = iSecond + "秒";
			}
		}
		sTime=sSecond;
		if(iTime==0){
			clearTimeout(Account);
			sTime='获取手机验证码';
			iTime = 59;
			document.getElementById('zphone').disabled = false;
		}else{
			Account = setTimeout("RemainTime()",1000);
			iTime=iTime-1;
		}
	}else{
		sTime='没有倒计时';
	}
	document.getElementById('zphone').value = sTime;
}
</script>
</html>