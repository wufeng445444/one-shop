<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<meta name="tp_page" content="2.0">
	<title>1号店登录</title>
	<link href="css/pc_login_new.css?1561453" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/pc_login_new.js?1561453"></script>
	
<script>
	var LOGIN_RESULT = {SUCCESS:0,FAIL:1};                  
	var REGISTER_RESULT = {SUCCESS:10,FAIL:11};             
	var DOMAIN_TYPE = {YHD:1,MALL:2,YW_111:3};              
	var LOGIN_SOURCE={NORMAL:1,FRAME:2};                    	var URLPrefix = {"mymall":"http://my.1mall.com","passport_statics":"https://passport.yhd.com/front-passport/passport","yiwangauth":"http://mall.yiwang.cn","yaowang":"http://www.111.com.cn","tracker":"tracker.yhd.com","passport":"https://passport.yhd.com","my":"http://my.yhd.com","central":"http://www.yhd.com","validCodeShowUrl":"https://captcha.yhd.com/public/validcode.do","mall":"http://www.1mall.com","passportother":"https://passport.1mall.com"}; 
	var currSiteId = 1;                         
	
	var returnUrl = "http://www.yhd.com/";               
	var autoLoginFlag= "1";        
	var valid_code_service_flag="1"; 
	var showValidCode = "0"; 
	var mUrl = "http://m.yhd.com"; 
	
	var no3wUrl = "yhd.com";
	var imgPath = "images";
	var fromDomain = "";         
	var resetIframeUrl = fromDomain + "/login/callback.do";       
	
	var yhdUrl="http://www.yhd.com";
    var yhdPassportUrl="https://passport.yhd.com";
	var ywPassportUrl="https://passport.111.com.cn";
	var pubkey = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDXQG8rnxhslm+2f7Epu3bB0inrnCaTHhUQCYE+2X+qWQgcpn+Hvwyks3A67mvkIcyvV0ED3HFDf+ANoMWV1Ex56dKqOmSUmjrk7s5cjQeiIsxX7Q3hSzO61/kLpKNH+NE6iAPpm96Fg15rCjbm+5rR96DhLNG7zt2JgOd2o1wXkQIDAQAB";
	
	
	$(function () {
		$("#loginButton").click(function () {
			var phone =$("#phoneid").val();
			var pwd =$("#pwd").val();
			var hiddenCode = $("#hiddenCode").val();
			var Code = $("#vcd").val();
			if(Code==""||Code==" "){
				alert("验证码不能为空");
				return false;
			}
			if(hiddenCode != Code){
				alert("验证码不正确！");
				return false;
			}
			if(phone =="" || pwd==""){
				alert("手机号和密码密码不能为空！");
				return false;
			}
			
			location.href='<%=request.getContextPath()%>/user/login?pwd='+pwd+'&phone='+phone;
			/* ?pwd='+pwd+'&phone='+phone */
		})
	
	})
</script></head>

<body>
		    <link rel="shortcut icon" href="images/yhd_favicon.ico"/>
	
  <div class="regist_header clearfix">
	<div class="wrap">
        <a href="index.html" class="logo"><img src="images/loginlogo.jpg" height="55" alt="1号店" /></a>
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
            <span class="fr">您好，欢迎光临1号店！     
            
            
          <!--     	     <form action="login.jsp">
            	<input type="submit" value="请登录">
            </form> -->
              <a href="login.jsp" class="blue_link">请登录</a> 
         </span> 
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
        
        $(function () {
        	// 登录验证码
        	$("#huacode").click(function () {
        		$.get("<%=request.getContextPath()%>/user/newCode",
        				function(data){
        					/* alert(data); */
        					$("#huacode").html(data);
        					$("#hiddenCode").val(data);
        				}		
        			)
			})
        	
        	
		})
	</script>
	<script type="text/javascript" src="js/jquery.cookie.js?1561453"></script>
  
   
	<input type="hidden" id="isAutoLogin" value="0"/>
	<input type="hidden" id="autoLoginFlag" value="1"/>
	<div class="login_wrap">
		<div class="wrap clearfix">
			<div class="mod_login_wrap">
				
					<p id="error_tips" class="error_tips" style="display:none">您填写的账户名不存在请核对后重新填写</p>
	            	<div class="clearfix">
            		<h3>1号店用户登录</h3>
            		<a  href='reg.jsp'  class="regist_new blue_link">注册新账号</a>
            		</div>
	      
				<div class="login_form">
					<!-- <input id="login_source" type="hidden" value="1"/>
					<input id="login_pc_home_page" type="hidden" value="1"/> -->
	
					
					<div class="form_item_wrap">
					    <div class="form_item">
					        <label class="user_ico">&nbsp;</label>
					        <input id="phoneid" type="text" name="phoneid" spellcheck="false" tabIndex="1" class="ipt ipt_username" 
					        style="outline: none;" value="" />
					    </div>
					    <div class="form_item">
					        <label class="paswd_ico">&nbsp;</label>
					        <!-- style="outline:none;" -->
					        <input id="pwd" type="password" oncopy="return false" onpaste="return false" oncut="return false" oncontextmenu="return false" name="pwd" tabIndex="2" class="ipt ipt_password gay_text" placeholder="密码 " />
							<input id="hiddenCode" type="hidden" name="hiddenCode" value=""/>
					    </div>
					    <!-- id='vcd_div' -->
					   <div   class="verify_code clearfix">
					  <!--  	<input id="validateSig" type="hidden"/> -->
                    	 <div class="form_item cur_right">
                        	<label class="verify_ico">&nbsp;</label>
                        	
                        	
                        	
                        	<!-- onblur="javascript: jsLoginValidatCode.checkValidCodeOnBlur()" 
                        	onkeyup="javascript: jsLoginValidatCode.login_param_validate();" -->
                            <input id="vcd" type="text" name="validCode" maxlength="4" tabindex="1" value="验证码" class="ipt ipt_code gay_text"
                            
					        >
                            <span tabindex="-1" class="code_right" id="code_right"></span>
                            <span tabindex="-1" class="code_wrong" id="code_wrong"></span>
                         </div>
                    	<a class="verify_code_box" id="huacode"  title="点击刷新验证码" style="color: red;
							text-align: center;
							font-size: 17px;
							line-height: 52px;
							background-color:darkgray;" 
							href="javascript:void(0)" >
                           <!--  <img id="valid_code_pic" name="valid_code_pic">
                            <i tabindex="-1" class="btn_change">换一张</i> -->
                            	点击获取验证码
                         </a>
                      </div>
					    
					 <div class="auto_login clearfix" >
					 	<p class="clearfix">
                    	<a id="check_agreement" href="#" class="uncheck_agreement">自动登录</a>
                    	<input id="autoLoginCheck" type="hidden" />
                    	<span id="agreement_tips" class="auto_tips"  style="display: none;">请勿在公用电脑上启用</span>
                        </p>
                         <p class="service_agreement">点击登录，表示您同意1号店<a href="http://cms.yhd.com/cms/view.do?topicId=24110" class="blue_link" target="_blank">《服务协议》</a></p>
                        <a href="forget.jsp" target="_blank" class="forget_pswd" tabIndex="-1">忘记密码？</a>
                    </div>
					    <!-- onclick="javascript:double_submit();return false;" -->
					    <button id="loginButton" type="button" class="login_btn">登录</button>
					
					</div>
					
					<div class="joint_landing_wrap">
						<p>更多合作网站账号登录</p>
		<div class="clearfix">
						<ul class="account_list clearfix">
		<li><a href="https://passport.yhd.com/qq/login.do" target="_blank" class="iconfont" title="QQ">&#xe606;</a></li> 
		<li><a href="https://passport.yhd.com/sina/login.do" target="_blank" class="iconfont" title="新浪微博">&#xe608;</a></li> 
		<li><a href="https://passport.yhd.com/alipay/login.do" target="_blank" class="iconfont" title="支付宝">&#xe601;</a></li> 
		<li><a href="https://passport.yhd.com/wechat/login.do" target="_blank" class="iconfont" title="微信">&#xe609;</a></li> 
						</ul>
						<a href="javascript:void(0);" class="unfold" title="展开">更多合作网站<i></i></a>
						
					</div>
						<ul class="more_landing clearfix">
							<li><a href="https://passport.yhd.com/netease/login.do" target="_blank"><i class="iconfont">&#xe600;</i>网易</a></li>
							<li><a href="https://passport.yhd.com/baidu/login.do" target="_blank"><i class="iconfont">&#xe602;</i>百度</a></li>
								<li><a href="javascript:alert('现已终止与139邮箱合作，请您采用其他方式登录。已绑定手机用户可通过手机号和密码登录。账号相关问题可致电客服电话400-007-1111。给您带来不便，表示抱歉！');"><i class="iconfont">&#xe60a;</i>中国移动</a></li>
							<li><a href="https://passport.yhd.com/kaixin/login.do" target="_blank"><i class="iconfont">&#xe603;</i>开心网</a></li>
							<li><a href="https://passport.yhd.com/renren/login.do" target="_blank"><i class="iconfont">&#xe607;</i>人人网</a></li>
							<li><a href="https://passport.yhd.com/wanlitong/login.do" target="_blank"><i class="iconfont">&#xe605;</i>平安万里通</a></li>
							<li><a href="https://passport.yhd.com/mogujie/login.do" target="_blank"><i class="iconfont">&#xe604;</i>蘑菇街</a></li>
						</ul>
					</div>
					<!--
					-->
				</div>
			</div>
			<div class="mod_left_banner"><a id="imgLink" target="_blank"><img id="img" src="images/CgQDsFbYC-GASWzbAADDGtrKi4k66400.jpg" /></a></div>
		</div>
	</div>
	
	<div class="mod_login_bindmb_point"></div>
	
	
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
 
	
		<script type="text/javascript" src='https://captcha.yhd.com/captcha/js/api.js?0.1566162793'></script>
</body>

<script>	
pageInit();

$(document).ready(function(){
		jsLoginFed.loadImageUrl("1","Passport_Login_Ad_Click");
	});
	
</script>

</html>