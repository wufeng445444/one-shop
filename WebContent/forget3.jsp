<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>找回密码</title>
<link href="<%=request.getContextPath()%>/css/find_paswd.css?1561453" rel="stylesheet" type="text/css"/>
<script src="<%=request.getContextPath()%>/js/find_paswd.js?1561453" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/register_new.js"></script>
</head>
<script type="text/javascript">
	$(function () {
		$("#but").click(function () {
			var pwd = $("#password").val();
			var pwd2 = $("#password2").val();
			if(pwd == "" || pwd.length < 6){
				alert("请输入最少6位数密码");
				return false;
			}
			if(pwd != pwd2){
				alert("两次输入的密码不一致！");
				return false;
			}
			location.href='<%=request.getContextPath()%>/user/updatePwd?phoneid=${phone}&upwd='+pwd;
		})
	})
</script>

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
            <span class="fr">您好，欢迎光临1号店！ <a href="login.html" class="blue_link">请登录</a></span>
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
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.cookie.js?1561453"></script>
  
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
        	<li class="cur">
            	<em>3</em>
                <p>设置新密码</p>
                <i></i>
            </li>
        	<li>
            	<em>4</em>
                <p>完成</p>
            </li>
        </ul>
    </div>
    <div class="find_detail">
    	<div class="y_regist_form">
            <form action="/passport/updatePwdJustForFindPwdByMobile.do" method="post" id="updatapwdform">
			<input type="hidden" id="findPwdState" name="findPwdState" value="0663f48841f50e7c23e923c49e18c815"/>
			<input type="password" style="display:none">
			<input type="hidden" name="password" id="rpassword">
			<input type="hidden" name="password2"id="rpassword2">
        	<ul class="clearfix">
                <li>
                     <div class="y_same_item">
                         <input class="ysame_input y_set_password" type="password" oncopy="return false;" oncut="return false;" onpaste="return false;" id="password" autocomplete="off"/>
                         <span class="y_same_label">设置密码</span>
                     </div>
                     <!--错误提示 begin -->
                     <div class="y_regist_tips y_regist_tips_red">
                        <div class="y_regtip_rel"> 
                          <i></i>
                          <div class="y_tips_words">
                              6-20个大小写英文字母、符号或数字的组合
                          </div>
                        </div> 
                    </div>
                   <div class="y_regist_tips_keywords strength_l">
                       <div class="y_regtip_rel"> 
                          <i></i>
                          <div class="y_tips_words y_tips_words_key">
                              <em class="em_redA"></em>
                              <em></em>
                              <em></em>
                              <b class="em_words">低</b>  
                          </div>
                       </div> 
                   </div>       
                   
                   <div class="y_regist_tips_keywords strength_m">
                       <div class="y_regtip_rel"> 
                          <i></i>
                          <div class="y_tips_words y_tips_words_key">
                              <em class="em_yellowA1"></em><em class="em_yellowA1"></em><em></em><b class="em_words">中</b>  
                          </div>
                       </div> 
                   </div>       
                   
                   <div class="y_regist_tips_keywords strength_h">
                       <div class="y_regtip_rel"> 
                          <i></i>
                          <div class="y_tips_words y_tips_words_key">
                              <em class="em_greenA1"></em><em  class="em_greenA1"></em><em  class="em_greenA1"></em><b class="em_words">高</b>  
                          </div>
                       </div> 
                   </div>
                 </li>
                 <li>
                     <div class="y_same_item">
                         <input class="ysame_input" type="password" oncopy="return false;" oncut="return false;" onpaste="return false;" id="password2" autocomplete="off"/>
                         <span class="y_same_label">确认密码</span>
                     </div>
	                 <div class="y_regist_tips y_regist_tips_red">
                            <div class="y_regtip_rel"> 
                                <i></i>
                                <div class="y_tips_words">
                                  	 请再次输入密码
                                </div>
                            </div> 
	                  </div>
                     <!--正确-->
                     <div class="y_regist_right"></div>
                 </li>
                 <li>
                     <!-- <a id="updatePwdByPhone" class="y_agreement_btn">下一步</a>  -->  
                	<input style="font: normal 16px/52px 'microsoft yahei'; border-radius: 2px;color:white;background-color:#ff3c3c;width:330px;height: 52px;margin-top: 6px;" type="button" id="but" value="同意协议并注册"/>   
                 </li>
            </ul>
            </from>
        </div>
    </div>
</div>

	<div id="simplefooter"><a href="http://www.miibeian.gov.cn/" target="_blank">沪ICP备13044278号</a>|<a>合字B1.B2-20130004</a>|<a href="http://d7.yihaodianimg.com/N01/M04/14/0D/CgQCr1KgLjGAM5w3AAQiJTyDkdw48000.jpg" data-ref="YHD_Footer_Licence" target="_blank">营业执照</a><p>Copyright &copy; 1号店网上超市 2007-2014，All Rights Reserved</p></div><div>
<span style="color: #FFFFFF">
				14!$
				53%&
				17#@
				10!$
		,
</span> 
<span style="color: #FFFFFF">1561453</span>
</div>	 <script type="text/javascript" src="https://passport.yhd.com/front-homepage/global/js/global_tracker.js?1561453"></script>
</body>
<script>
jFindPw.init();
</script>
</html>