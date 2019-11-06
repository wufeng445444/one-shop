<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>找回密码</title>
<link href="<%=request.getContextPath()%>/css/find_paswd.css?1561453" rel="stylesheet" type="text/css"/>
</head>
<body>
	    <link rel="shortcut icon" href="<%=request.getContextPath()%>/images/yhd_favicon.ico"/>
	
  <div class="regist_header clearfix">
	<div class="wrap">
        <a href="index.html" class="logo"><img src="<%=request.getContextPath()%>/images/loginlogo.jpg" height="55" alt="1号店" /></a>
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
                        <li><a href="http://www.yhd.com/deliveryinfo/deliveryInfo.do">配送范围</a></li>
                    </ul>
                </div>
            </div>
            <span class="fr">您好，欢迎光临1号店！ <a href="<%=request.getContextPath()%>/login.jsp" class="blue_link">请登录</a></span>
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
	<script type="text/javascript" src="js/jquery.cookie.js?1561453"></script>
  

<div class="find_wrap">
	<div class="find_step">
    	<ul class="clearfix">
        	<!--完成给li加done,当前状态加cur -->
        	<li class="done">
            	<em>1</em>
                <p>填写用户名</p>
                <i></i>
            </li>
        	<li class="done">
            	<em>2</em>
                <p>验证身份</p>
                <i></i>
            </li>
        	<li class="done">
            	<em>3</em>
                <p>设置新密码</p>
                <i></i>
            </li>
        	<li class="cur">
            	<em>4</em>
                <p>完成</p>
            </li>
        </ul>
    </div>
    <div class="find_detail">
    	<div class="new_pswd_success">
        <!-- 	<div class="success_tips">
                <em></em>
                <p>新密码设置成功！</p>
                <p>请您牢记新密码</p>
            </div> -->
            <c:if test="${success == true}">
            	<div class="success_tips">
                <em></em>
                <p>新密码设置成功！</p>
                <p>请您牢记新密码</p>
            </div>
            </c:if>
            
              <c:if test="${success == false}">
            	<div class="success_tips">
                <em></em>
                <p>新密码设置失败！</p>
                <p>请您稍后重试！</p>
            </div>
            </c:if>
            
            
            <div class="buy_box"><a href="<%=request.getContextPath()%>/index.jsp">立刻购物</a></div>
        </div>
    </div>
</div>

	<div id="simplefooter"><a href="http://www.miibeian.gov.cn/" target="_blank">沪ICP备13044278号</a>|<a>合字B1.B2-20130004</a>|<a href="http://d7.yihaodianimg.com/N01/M04/14/0D/CgQCr1KgLjGAM5w3AAQiJTyDkdw48000.jpg" data-ref="YHD_Footer_Licence" target="_blank">营业执照</a><p>Copyright &copy; 1号店网上超市 2007-2014，All Rights Reserved</p></div><div>
<span style="color: #FFFFFF">
				67!$
				23%&
				4#@
				10!$
		,
</span> 
<span style="color: #FFFFFF">1561453</span>
</div>	 <script type="text/javascript" src="https://passport.yhd.com/front-homepage/global/js/global_tracker.js?1561453"></script>
</body>
</html>