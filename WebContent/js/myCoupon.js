/* SVN.committedRevision=1554871 */
var jsVouchersFun={voucherScopeTypeHover:function(){var a=$(".hd_type_menu");_handle=null,_flag=false,_hdVoucherTypeList=$("#hd_voucher_type_list"),_hdScopeUseList=$("#hd_scope_use_list");a.bind("mouseenter",function(b){_flag=true;$(this).parent().find("div").removeClass("none");b.stopPropagation()});a.bind("mouseleave",function(b){if(_flag){$(this).parent().find("div").addClass("none")}b.stopPropagation()});_hdVoucherTypeList.bind("mouseenter",function(b){_flag=true;if(_flag){$(this).parent().find("a").addClass("selected");$(this).removeClass("none")}b.stopPropagation()});_hdVoucherTypeList.bind("mouseleave",function(b){_flag=false;$(this).parent().find("a").removeClass("selected");$(this).addClass("none");b.stopPropagation()});_hdScopeUseList.bind("mouseenter",function(b){_flag=true;if(_flag){$(this).parent().find("a").addClass("selected");
$(this).removeClass("none")}b.stopPropagation()});_hdScopeUseList.bind("mouseleave",function(b){_flag=false;$(this).parent().find("a").removeClass("selected");$(this).addClass("none");b.stopPropagation()})},voucherScopeTypeClick:function(){var b=$("#hd_voucher_type_list p"),a=$("#hd_scope_use_list p");b.bind("click",function(c){filteUnusedCoupons($(this).attr("value"),$(".hd_scope_use_list .hover").attr("value"))});a.bind("click",function(c){filteUnusedCoupons($(".hd_voucher_type_list .hover").attr("value"),$(this).attr("value"))})},voucherTypeHover:function(){if($.browser.msie&&($.browser.version=="6.0")){var b=$("#hd_voucher_type_list p"),a=$("#hd_scope_use_list p");b.bind("mouseenter",function(c){var d=$(this);d.addClass("hover");c.stopPropagation()});b.bind("mouseleave",function(c){var d=$(this);
d.removeClass("hover");c.stopPropagation()});a.bind("mouseenter",function(c){var d=$(this);d.addClass("hover");c.stopPropagation()});a.bind("mouseleave",function(c){var d=$(this);d.removeClass("hover");c.stopPropagation()})}},voucherListHover:function(){var b=$(".instructions_use"),c=$(".mod_float_lyout"),a=null,d=false;b.bind("mouseenter",function(h){var k=$(this),i=k.offset().top,g=k.offset().left,j=g-$(".mod_voucher_nUsed_bg").offset().left,f=i-$(".mod_voucher_nUsed_bg").offset().top+37;d=true;k.parent().parent().find(".voucher_nUsed_layout").css({"border-color":"#D4D4D4","box-shadow":"0px 0px 3px -1px #D4D4D4"});k.parent().parent().find(".instructions_use").css({color:"#cc0000"});k.parent().parent().find(".instructions_use span").addClass("selected");k.parent().parent().find(".mod_float_lyout").css({height:"auto",left:(j-276)+"px",top:(f+41)+"px","padding-top":"10px","padding-bottom":"15px"}).stop().slideDown("fast").removeClass("none");
h.stopPropagation()});b.bind("mouseleave",function(g){if(d){var i=$(this),h=i.offset().top,f=i.offset().left;i.parent().parent().find(".voucher_nUsed_layout").css({"border-color":"#EEEEEE","box-shadow":"0px 0px 0px 0px #D4D4D4"});i.parent().parent().find(".instructions_use").css({color:"#666666"});i.parent().parent().find(".instructions_use span").removeClass("selected");i.parent().parent().find(".mod_float_lyout").stop().slideUp("fast").addClass("none")}g.stopPropagation()});c.bind("mouseenter",function(f){var g=$(this);d=false;g.parent().find(".voucher_nUsed_layout").css({"border-color":"#D4D4D4","box-shadow":"0px 0px 3px -1px #D4D4D4"});g.parent().find(".instructions_use").css({color:"#cc0000"});g.parent().find(".instructions_use span").addClass("selected");g.parent().find(".mod_float_lyout").stop().slideDown("fast").removeClass("none");
f.stopPropagation()});c.bind("mouseleave",function(f){var g=$(this);d=true;if(d){g.parent().find(".voucher_nUsed_layout").css({"border-color":"#EEEEEE","box-shadow":"0px 0px 0px 0px #D4D4D4"});g.parent().find(".instructions_use").css({color:"#666666"});g.parent().find(".instructions_use span").removeClass("selected");g.parent().find(".mod_float_lyout").stop().slideUp("fast").addClass("none")}f.stopPropagation()})},loadFun:function(){this.voucherScopeTypeHover();this.voucherScopeTypeClick();this.voucherTypeHover();this.voucherListHover()}};jQuery(document).ready(function(){_loadMyYihaodianLeftMenu.loadLeftDiv()});