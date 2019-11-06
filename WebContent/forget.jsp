<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>找回密码</title>
<link href="<%=request.getContextPath()%>/css/find_paswd.css?1561453" rel="stylesheet" type="text/css"/>
<script src="<%=request.getContextPath()%>/js/find_paswd.js?1561453" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/js/register_new.js"></script>
</head>

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
	<script type="text/javascript" src="<%=request.getContextPath()%>js/jquery.cookie.js?1561453"></script>
  <script type="text/javascript">
  
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
		
		
		$("#loginButton").click(function () {
			var yzm = $("#vcd").val();
			var hiddyzm = $("#hiddenCode").val();
			var phone = $("#login_account").val();
			
			if(yzm==""||yzm==" "){
				alert("验证码不能为空");
				return false;
			}
			if(yzm != hiddyzm){
				alert("验证码不正确！");
				return false;
			}
			if(phone =="" || phone.length != 11){
				alert("手机号不正确");
				return false;
			}
			$.post("<%=request.getContextPath()%>/user/isExist",
					"phone="+phone,
				function(data){
					if(data){
						location.href='<%=request.getContextPath()%>/user/changePwd?phone='+phone;
					}else{
						alert("手机号还未注册，请先注册！");
						return false;
					}
				}
			)
			
			<%-- location.href='<%=request.getContextPath()%>/user/login?pwd='+pwd+'&phone='+phone; --%>
			/* ?pwd='+pwd+'&phone='+phone */
		})

  }
  )
  </script>


<div class="find_wrap">
	<div class="find_step">
    	<ul class="clearfix">
        	<!--完成给li加done,当前状态加cur -->
        	<li class="cur">
            	<em>1</em>
                <p>填写用户名</p>
                <i></i>
            </li>
        	<li>
            	<em>2</em>
                <p>验证身份</p>
                <i></i>
            </li>
        	<li>
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
            <ul class="clearfix">
            	<input id="validateSig" type="hidden"/>
                <!--判断正确给li加class  “ipt_right”,错误给li加class  “ipt_wrong” -->
                <li>
                    <div class="y_same_item">
                        <input class="ysame_input" type="text" name="phone" value="" id="login_account"/>
                        <span class="y_same_label">手机号</span>
                        <input id="hiddenCode" type="hidden" name="hiddenCode" value=""/>
                    </div>
                    <!--提示信息begin -->
                    <i class="item_icon_sure"></i>
                    <div class="y_regist_tips y_regist_tips_black">
                        <div class="y_regtip_rel"> 
                            <i></i>
                            <div class="y_tips_words">
                        	    请输入手机号/邮箱/用户名
                            </div>
                        </div> 
                    </div>
                    <!--提示信息end -->
                </li>
                
                <li class="ishort_li clearfix">
                     <div class="fl y_same_item">
                         <input class="ysame_input" type="text" value="" id="vcd"/>
                         <span class="y_same_label">验证码</span>
                     </div>
                    <!--  <a class="fl r_yzm_code" href="javascript:;" id="changevalidate">
                         <img id="validateImg" width="124" height="50">
                         <span class="yzm_change_mask"><em></em><i>换一张</i></span>                             
                     </a> -->
                     
                     
                     <a class="fl r_yzm_code" id="huacode"  title="点击刷新验证码" style="color: red;
							text-align: center;
							font-size: 17px;
							line-height: 52px;
							background-color:darkgray;" 
							href="javascript:void(0)" >
                           <!--  <img id="valid_code_pic" name="valid_code_pic">
                            <i tabindex="-1" class="btn_change">换一张</i> -->
                            	点击获取验证码
                         </a>
                     
                     <!-- -->
                     <div class="y_regist_tips y_regist_tips_black">
                       <div class="y_regtip_rel"> 
                          <i></i>
                          <div class="y_tips_words">
                              	请输入正确的验证码
                          </div>
                       </div> 
                     </div>
                 </li>
                 <li>
                     <a href="javascript:void(0)" class="y_agreement_btn" id="loginButton">下一步</a> 
                       
                 </li>
            </ul>
        </div>
    </div>
</div>


	<div id="simplefooter"><a href="http://www.miibeian.gov.cn/" target="_blank">沪ICP备13044278号</a>|<a>合字B1.B2-20130004</a>|<a href="http://d7.yihaodianimg.com/N01/M04/14/0D/CgQCr1KgLjGAM5w3AAQiJTyDkdw48000.jpg" data-ref="YHD_Footer_Licence" target="_blank">营业执照</a><p>Copyright &copy; 1号店网上超市 2007-2014，All Rights Reserved</p></div><div>
<span style="color: #FFFFFF">
				70!$
				24%&
				4#@
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