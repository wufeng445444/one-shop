/* SVN.committedRevision=1559019 */
(function(a){a.fn.jQSelect=function(e){var f="",d="",c="",e=a.extend({},{hover:"hover",hide:"hide",selected:"selected",menu:".hd_order_menu",listname:"hd_order_list",typeList:".hd_order_list",bodyList:".cell_select",hd_bo:".hd_bo",hd_bo_p:".hd_bo p",border_top:".border_top",border_bttom:".border_bttom",border_top_T:"border_top_T",border_bttom_T:"border_bttom_T",hd_order_listHover:"hd_order_listHover",hd_menu_span:".hd_order_menu span",dateId:"_dateId"});e.element=a(this);d=e.element.find(e.menu);c=e.element.find(e.typeList);var b={zIndex:function(){alert("aaaaaaaaaaaaa");var h=0,g=e.element.length;while(h<e.element.length){g--;e.element.eq(h).css({"z-index":g});e.element.eq(h).find(e.typeList).css({"z-index":g+1});h++}},selectListAutoWidth:function(j){var g={j_conp:a(e.bodyList).eq(j).find(".btyp"),j_menu:a(e.menu).eq(j),j_size:8*2,j_font_size:12,j_scrollWidth:20,j_array:new Array(),j_width:0,j_hdboInd:a(e.hd_bo).eq(j),j_hd_order_list:a(e.typeList).eq(j)};
for(var h=0;h<g.j_conp.length;h++){g.j_array.push(g.j_conp.eq(h).text().length)}Array.prototype.max=function(){var l=this[0];var k=this.length;for(var m=1;m<k;m++){if(this[m]>l){l=this[m]}}return l};g.j_width=g.j_array.max()*g.j_font_size+g.j_size+g.j_scrollWidth;g.j_hd_order_list.css("width",g.j_width+"px");g.j_hdboInd.css("width",(g.j_width)+"px");g.j_hdboInd.prev().css("width",(g.j_width-10)+"px");g.j_hdboInd.next().css("width",(g.j_width-10)+"px");g.j_menu.css("width",g.j_width+"px");g.j_menu.parent().css("width",g.j_width+"px")},selectRange:function(k){var o=k,q=253,h=90,l=o.height(),i=o.next(),m=i.height(),g=l+m,j=o.offset().top,p=i.find(e.hd_bo),n=a(window).height()-j-l-3;m=m>q?q:m-4;b.zIndex();if(n<h){i.find(e.border_top).addClass(e.border_top_T);i.find(e.border_bttom).addClass(e.border_bttom_T);
p.addClass("hd_bo_T");if(g<q){p.css("height",m+"px");i.css({top:"-"+m+"px"});return}p.css("height",j+"px");i.css({top:"-"+m+"px"});return}if(n>=h){i.find(e.border_top).removeClass(e.border_top_T);i.find(e.border_bttom).removeClass(e.border_bttom_T);p.removeClass("hd_bo_T");return}},ie6Compatible:function(h,g){if(a.browser.msie&&(a.browser.version=="6.0")){if(h.find(e.hd_bo).eq(g).find("p.btyp").length>=10){h.find(e.hd_bo).eq(g).css({height:"253px","overflow-y":"scroll"})}h.find(e.typeList).delegate(e.hd_bo_p,"mouseover mouseout",function(i){var j=a(this);if(i.type==="mouseover"){j.addClass(e.hover)}if(i.type==="mouseout"){j.removeClass(e.hover)}i.stopPropagation();i.preventDefault()})}},domClick:function(){a(document).click(function(h){var g=a(h.target);if(a(e.menu).is(":visible")&&g.attr("class")!=e.listname){f="";
c.addClass(e.hide);d.removeClass(e.hover)}})}};d.removeClass(e.hover);c.addClass(e.hide);a(e.element).undelegate(e.menu,"click").delegate(e.menu,"click",function(i){if(i.type=="click"){var g=a(this).parent().find(e.typeList);c.addClass(e.hide);d.removeClass(e.hover);a(this).addClass(e.hover);g.addClass(e.hd_order_listHover).removeClass(e.hide);if(f===""){f=a(this).attr(e.dateId);a(this).addClass(e.hover);g.addClass(e.hd_order_listHover).removeClass(e.hide)}else{if(f==a(this).attr(e.dateId)){f="";c.addClass(e.hide);d.removeClass(e.hover)}else{f=a(this).attr(e.dateId);a(this).addClass(e.hover);g.addClass(e.hd_order_listHover).removeClass(e.hide)}}}var h=a(this).index(e.menu);b.ie6Compatible(e.element,h);i.stopPropagation();i.preventDefault()});c.undelegate(e.hd_bo_p,"click").delegate(e.hd_bo_p,"click",function(h){if(h.type=="click"){f="";
var g=a(this).parents(".cell_select");a(this).addClass(e.selected).siblings().removeClass(e.selected);g.find(e.typeList).addClass(e.hide);g.find(e.menu).removeClass(e.hover);g.find(e.hd_menu_span).text(a.trim(a(this).text()))}h.stopPropagation();h.preventDefault()});this.each(function(g){b.selectListAutoWidth(g)});b.domClick();return this}})(jQuery);var _personalObject={resizeTimer:null,screenWidthInit:function(){var b=$(window).width()>=1280;if(b){document.getElementById("layout_main").className="layout_w1200_g22";if(!!$("#gridContent").length>0){document.getElementById("gridContent").className="grid_18"}if(!!$("#gridHeader").length>0){document.getElementById("gridHeader").className="grid_22"}if(!!$("#gridMain").length>0){document.getElementById("gridMain").className="grid_22"}if(!!$("#gridFooter").length>0){document.getElementById("gridFooter").className="grid_22"}document.getElementsByTagName("body")[0].className="w1200";if(document.getElementById("order_top_bannel")){var a=document.getElementById("order_top_bannel").getAttribute("advImageUrlWide");document.getElementById("order_top_bannel").setAttribute("src",a)}if(jQuery(".order_item_wideScreen_list").length>0&&jQuery(".order_item_narrowScreen_list").length>0){jQuery(".order_item_wideScreen_list").show();
jQuery(".order_item_narrowScreen_list").hide()}}else{document.getElementById("layout_main").className="layout_w980_g18";if(!!$("#gridContent").length>0){document.getElementById("gridContent").className="grid_14"}if(!!$("#gridHeader").length>0){document.getElementById("gridHeader").className="grid_18"}if(!!$("#gridMain").length>0){document.getElementById("gridMain").className="grid_18"}if(!!$("#gridFooter").length>0){document.getElementById("gridFooter").className="grid_18"}document.getElementsByTagName("body")[0].className="w980";if(document.getElementById("order_top_bannel")){var a=document.getElementById("order_top_bannel").getAttribute("advImageUrl");document.getElementById("order_top_bannel").setAttribute("src",a)}if(jQuery(".order_item_wideScreen_list").length>0&&jQuery(".order_item_narrowScreen_list").length>0){jQuery(".order_item_wideScreen_list").hide();
jQuery(".order_item_narrowScreen_list").show()}}_personalObject.resizeTimer=null}};_personalObject.screenWidthInit();window.onresize=function(){if(_personalObject.resizeTimer==null){_personalObject.resizeTimer=setTimeout(function(){_personalObject.screenWidthInit()},300)}};$(document).ready(function(){if($(window).width()>=1280){document.getElementsByTagName("body")[0].className="w1200"}});(function(h,m){var i=h.document,k=i.documentElement;var n=function(){var u=i.body,b=!-[1,],v=b&&/msie 6/.test(navigator.userAgent.toLowerCase()),d=1,f="cache"+(+new Date()+"").slice(-8),e={};var s=function(){};s.prototype={getOptions:function(r){var p,q={},o={container:null,overlay:true,drag:true,fixed:true,follow:null,followX:0,followY:0,autoClose:0,lock:false,callback:null};for(p in o){q[p]=r[p]!==m?r[p]:o[p]}s.data("options",q);return q},setBodyBg:function(){if(u.currentStyle.backgroundAttachment!=="fixed"){u.style.backgroundImage="url(about:blank)";u.style.backgroundAttachment="fixed"}},appendIframe:function(o){o.innerHTML='<iframe style="position:absolute;left:0;top:0;width:100%;height:100%;z-index:-1;border:0 none;filter:alpha(opacity=0)"></iframe>'},setFollow:function(p,r,x,o){r=typeof r==="string"?i.getElementById(r):r;
var q=p.style;q.position="absolute";q.left=s.getOffset(r,"left")+x+"px";q.top=s.getOffset(r,"top")+o+"px"},setPosition:function(o,p){var q=o.style;q.position=v?"absolute":p?"fixed":"absolute";if(p){if(v){q.setExpression("top",'fuckIE6=document.documentElement.scrollTop+document.documentElement.clientHeight/2+"px"')}else{q.top="50%"}q.left="50%"}else{if(v){q.removeExpression("top")}q.top=k.clientHeight/2+s.getScroll("top")+"px";q.left=k.clientWidth/2+s.getScroll("left")+"px"}},createOverlay:function(){var p=i.createElement("div"),o=p.style;o.cssText="margin:0;padding:0;border:none;width:100%;height:100%;background:#333;opacity:0.6;filter:alpha(opacity=60);z-index:9999;position:fixed;top:0;left:0;";if(v){u.style.height="100%";o.position="absolute";o.setExpression("top",'fuckIE6=document.documentElement.scrollTop+"px"')
}p.id="overlay";return p},createDialogBox:function(){var o=i.createElement("div");o.style.cssText="margin:0;padding:0;border:none;z-index:10000;";o.id="easyDialogBox";return o},createDialogWrap:function(C){var D=C.header?'<h4 class="easyDialog_title" id="easyDialogTitle"><a href="javascript:void(0)" title="关闭窗口" class="close_btn" id="closeBtn">&times;</a>'+C.header+"</h4>":"",p=typeof C.yesFn==="function"?'<button class="btn_highlight" id="easyDialogYesBtn">'+(typeof C.yesText==="string"?C.yesText:"确定")+"</button>":"",r=typeof C.noFn==="function"||C.noFn===true?'<button class="btn_normal" id="easyDialogNoBtn">'+(typeof C.noText==="string"?C.noText:"取消")+"</button>":"",o=p===""&&r===""?"":'<div class="easyDialog_footer">'+r+p+"</div>",A=['<div class="easyDialog_content">',D,'<div class="easyDialog_text">'+C.content+"</div>",o,"</div>"].join(""),q=i.getElementById("easyDialogWrapper"),B=/<[\/]*script[\s\S]*?>/ig;
if(!q){q=i.createElement("div");q.id="easyDialogWrapper";q.className="easyDialog_wrapper"}q.innerHTML=A.replace(B,"");return q}};s.data=function(r,o,p){if(typeof r==="string"){if(o!==m){e[r]=o}return e[r]}else{if(typeof r==="object"){var x=r===h?0:r.nodeType===9?1:r[f]?r[f]:(r[f]=++d),q=e[x]?e[x]:(e[x]={});if(p!==m){q[o]=p}return q[o]}}};s.removeData=function(p,o){if(typeof p==="string"){delete e[p]}else{if(typeof p==="object"){var x=p===h?0:p.nodeType===9?1:p[f];if(x===m){return}var r=function(z){var w;for(w in z){return false}return true},q=function(){delete e[x];if(x<=1){return}try{delete p[f]}catch(w){p.removeAttribute(f)}};if(o){delete e[x][o];if(r(e[x])){q()}}else{q()}}}};s.event={bind:function(o,p,q){var r=s.data(o,"e"+p)||s.data(o,"e"+p,[]);r.push(q);if(r.length===1){var x=this.eventHandler(o);
s.data(o,p+"Handler",x);if(o.addEventListener){o.addEventListener(p,x,false)}else{if(o.attachEvent){o.attachEvent("on"+p,x)}}}},unbind:function(B,o,q){var z=s.data(B,"e"+o);if(!z){return}if(!q){z=m}else{for(var p=z.length-1,r=z[p];p>=0;p--){if(r===q){z.splice(p,1)}}}if(!z||!z.length){var A=s.data(B,o+"Handler");if(B.addEventListener){B.removeEventListener(o,A,false)}else{if(B.attachEvent){B.detachEvent("on"+o,A)}}s.removeData(B,o+"Handler");s.removeData(B,"e"+o)}},eventHandler:function(o){return function(r){r=s.event.fixEvent(r||h.event);var y=r.type,p=s.data(o,"e"+y);for(var q=0,z;z=p[q++];){if(z.call(o,r)===false){r.preventDefault();r.stopPropagation()}}}},fixEvent:function(o){if(o.target){return o}var p={},q;p.target=o.srcElement||document;p.preventDefault=function(){o.returnValue=false};
p.stopPropagation=function(){o.cancelBubble=true};for(q in o){p[q]=o[q]}return p}};s.capitalize=function(o){var p=o.charAt(0);return p.toUpperCase()+o.replace(p,"")};s.getScroll=function(p){var o=this.capitalize(p);return k["scroll"+o]||u["scroll"+o]};s.getOffset=function(r,z){var p=this.capitalize(z),o=k["client"+p]||u["client"+p]||0,q=this.getScroll(z),y=r.getBoundingClientRect();return Math.round(y[z])+q-o};s.drag=function(o,p){var L="getSelection" in h?function(){h.getSelection().removeAllRanges()}:function(){try{i.selection.empty()}catch(w){}},I=this,H=I.event,r=false,K=b?o:i,F=p.style.position==="fixed",q=s.data("options").fixed;var J=function(z){r=true;var w=I.getScroll("top"),y=I.getScroll("left"),x=F?0:y,A=F?0:w;s.data("dragData",{x:z.clientX-I.getOffset(p,"left")+(F?y:0),y:z.clientY-I.getOffset(p,"top")+(F?w:0),el:x,et:A,er:x+k.clientWidth-p.offsetWidth,eb:A+k.clientHeight-p.offsetHeight});
if(b){if(v&&q){p.style.removeExpression("top")}o.setCapture()}H.bind(K,"mousemove",G);H.bind(K,"mouseup",E);if(b){H.bind(o,"losecapture",E)}z.stopPropagation();z.preventDefault()};H.bind(o,"mousedown",J);var G=function(B){if(!r){return}L();var C=s.data("dragData"),D=B.clientX-C.x,y=B.clientY-C.y,x=C.et,w=C.er,z=C.eb,N=C.el,A=p.style;A.marginLeft=A.marginTop="0px";A.left=(D<=N?N:(D>=w?w:D))+"px";A.top=(y<=x?x:(y>=z?z:y))+"px";B.stopPropagation()};var E=function(w){r=false;if(b){H.unbind(o,"losecapture",arguments.callee)}H.unbind(K,"mousemove",G);H.unbind(K,"mouseup",arguments.callee);if(b){o.releaseCapture();if(v&&q){var x=parseInt(p.style.top)-I.getScroll("top");p.style.setExpression("top","fuckIE6=document.documentElement.scrollTop+"+x+'+"px"')}}w.stopPropagation()}};var c,a=function(o){if(o.keyCode===27){t.close()
}},g=function(){if(c){clearTimeout(c);c=m}};var t={open:function(){var aa=new s(),ac=aa.getOptions(arguments[0]||{}),T=s.event,N=k.clientWidth,r=k.clientHeight,W=this,S,U,O,Y;g();if(ac.overlay){S=i.getElementById("overlay");if(!S){S=aa.createOverlay();u.appendChild(S);if(v){aa.appendIframe(S)}}S.style.display="block"}if(v){aa.setBodyBg()}U=i.getElementById("easyDialogBox");if(!U){U=aa.createDialogBox();u.appendChild(U)}if(ac.follow){var o=function(){aa.setFollow(U,ac.follow,ac.followX,ac.followY)};o();T.bind(h,"resize",o);s.data("follow",o);if(S){S.style.display="none"}ac.fixed=false}else{aa.setPosition(U,ac.fixed)}U.style.display="block";O=typeof ac.container==="string"?i.getElementById(ac.container):aa.createDialogWrap(ac.container);Y=U.getElementsByTagName("*")[0];if(!Y){U.appendChild(O)
}else{if(Y&&O!==Y){Y.style.display="none";u.appendChild(Y);U.appendChild(O)}}O.style.display="block";var V=O.offsetWidth,p=O.offsetHeight,Q=V>N,ad=p>r;O.style.marginTop=O.style.marginRight=O.style.marginBottom=O.style.marginLeft="0px";if(!ac.follow){U.style.marginLeft="-"+(Q?N/2:V/2)+"px";U.style.marginTop="-"+(ad?r/2:p/2)+"px"}else{U.style.marginLeft=U.style.marginTop="0px"}if(v&&!ac.overlay){U.style.width=V+"px";U.style.height=p+"px"}var X=i.getElementById("closeBtn"),q=i.getElementById("easyDialogTitle"),ab=i.getElementById("easyDialogYesBtn"),Z=i.getElementById("easyDialogNoBtn");if(ab){T.bind(ab,"click",function(w){if(ac.container.yesFn.call(W,w)!==false){W.close()}})}if(Z){var R=function(w){if(ac.container.noFn===true||ac.container.noFn.call(W,w)!==false){W.close()}};T.bind(Z,"click",R);
if(X){T.bind(X,"click",R)}}else{if(X){T.bind(X,"click",W.close)}}if(!ac.lock){T.bind(i,"keyup",a)}if(ac.autoClose&&typeof ac.autoClose==="number"){c=setTimeout(W.close,ac.autoClose)}if(ac.drag&&q&&!Q&&!ad){q.style.cursor="move";s.drag(q,U)}if(!ac.follow&&!ac.fixed){var P=function(){aa.setPosition(U,false)};if(!Q&&!ad){T.bind(h,"resize",P)}s.data("resize",P)}s.data("dialogElements",{overlay:S,dialogBox:U,closeBtn:X,dialogTitle:q,dialogYesBtn:ab,dialogNoBtn:Z})},close:function(){var q=s.data("options"),o=s.data("dialogElements"),p=s.event;if(!q||typeof q=="undefined"){s.removeData("options");return}if(!o||typeof o=="undefined"){s.removeData("dialogElements");return}g();if(q.overlay&&o.overlay){o.overlay.style.display="none"}o.dialogBox.style.display="none";if(v){o.dialogBox.style.removeExpression("top")
}if(o.closeBtn){p.unbind(o.closeBtn,"click")}if(o.dialogTitle){p.unbind(o.dialogTitle,"mousedown")}if(o.dialogYesBtn){p.unbind(o.dialogYesBtn,"click")}if(o.dialogNoBtn){p.unbind(o.dialogNoBtn,"click")}if(!q.follow&&!q.fixed){p.unbind(h,"resize",s.data("resize"));s.removeData("resize")}if(q.follow){p.unbind(h,"resize",s.data("follow"));s.removeData("follow")}if(!q.lock){p.unbind(i,"keyup",a)}if(typeof q.callback==="function"){q.callback.call(t)}s.removeData("options");s.removeData("dialogElements")}};return t};var j=function(){h.easyDialog=n()},l=function(){if(i.body){return}try{k.doScroll("left")}catch(a){setTimeout(l,1);return}j()};(function(){if(i.body){j()}else{if(i.addEventListener){i.addEventListener("DOMContentLoaded",function(){i.removeEventListener("DOMContentLoaded",arguments.callee,false);
j()},false);h.addEventListener("load",j,false)}else{if(i.attachEvent){i.attachEvent("onreadystatechange",function(){if(i.readyState==="complete"){i.detachEvent("onreadystatechange",arguments.callee);j()}});h.attachEvent("onload",j);var b=false;try{b=h.frameElement==null}catch(a){}if(k.doScroll&&b){l()}}}}})()})(window,undefined);var _addressObj={orderListHover:function(){$(".mod_address li").bind("mouseenter",function(){var a=$(this).index("li");$(this).addClass("hover");if($.browser.msie&&parseInt($.browser.version)<9){$(this).css("border-color","#cfcfcf")}$(this).find(".li_p_del").css("display","block")});$(".mod_address li").bind("mouseleave",function(){var a=$(this).index("li");$(this).removeClass("hover");if($.browser.msie&&parseInt($.browser.version)<9){$(this).css("border-color","#EAEAEA")}$(this).find(".li_p_del").css("display","none");$(this).find(".del_con").css({display:"none",width:"0",opacity:"0"})});$(".mod_address").delegate(".li_p_del","click",function(){$(this).next().show().animate({width:"227px",right:"0",opacity:"1"},"fast")});$(".mod_address").delegate(".close_window,.cancelAddress","click",function(){$(this).parents("li").find(".del_con").show().animate({width:"0",right:"0",opacity:"0"},"fast")
})},checkboxClick:function(b,d){var c=b,a=d;if(c.attr("name")==="checkbox"){if(c.hasClass("checkbox_c")){c.removeClass("checkbox_c").addClass("checkbox_c_sed")}else{if(c.hasClass("checkbox_c_sed")){c.removeClass("checkbox_c_sed").addClass("checkbox_c")}}if(c.next(".check_txt").text()==="设为一键下单地址"&&c.hasClass("checkbox_c_sed")){$(".cell_tip_msg8").removeClass("hide")}else{if(d==="family"){if($("#"+d+" a.input").eq($("#"+d+" a.input").length-1).hasClass("checkbox_c_sed")){return}$(".cell_tip_msg8").addClass("hide")}}if(c.next(".check_txt").text()==="是"&&c.hasClass("checkbox_c_sed")){$("#"+d+" .user_ddtxt").removeClass("hide");if($(".noInvoice").hasClass("checkbox_c_sed")){$(".noInvoice").removeClass("checkbox_c_sed").addClass("checkbox_c")}}else{if($(".noInvoice").hasClass("checkbox_c_sed")){$(".useInvoice").removeClass("checkbox_c_sed").addClass("checkbox_c")
}if(d==="old_new"){if($("#"+d+" a.input").eq(0).hasClass("checkbox_c_sed")){return}$("#"+d+" .user_ddtxt").addClass("hide")}}}},add_address:function(){$(".my_or_dialog").delegate(".close_window,.btn_cancel","click",function(){easyDialog.close()})},initFun:function(){this.orderListHover();$("#family a.input").bind("click",function(){_obj=$(this);_addressObj.checkboxClick(_obj,"family")});$("#old_new a.input").bind("click",function(){_obj=$(this);_addressObj.checkboxClick(_obj,"old_new")});this.add_address();$("input:text[name='goodReceiver.mobil']").hide();mobilStr=$("input[name='mobileStr']").val()}};var mobilStr="";$(document).ready(function(){_loadMyYihaodianLeftMenu.loadLeftDiv();_addressObj.initFun();loadAddressInfo(1)});function loadAddressInfo(a){jQuery("#addressListDiv").html("<div><p class='mt10'>正在处理中，请稍后...</p></div>");
window.scroll(0,0);jQuery.ajax({type:"post",url:"/member/address/ajaxNewAddressBookList.do?pagenationVO.currentPage="+a,success:function(b){if(b.indexOf("notLogin")>=0){yhdLogin();return false}else{if(b==""){document.getElementById("addressListDiv").innerHTML=""}else{document.getElementById("addressListDiv").innerHTML=b;_addressObj.initFun()}}}})}function popWinAddressDivEdit(b,a){sethide();jQuery.ajax({type:"post",url:"/member/address/popWinAddressDivEdit.do?goodReceiverId="+b+"&typeEdit="+a,success:function(e){if(e.indexOf("notLogin")>=0){yhdLogin();return false}$("#ajaxPopMsg").html(e);_addressObj.initFun();$(".cell_h3").text("编辑地址");easyDialog.open({container:"my_or_dialog",isOverlay:true,fixed:true});var d='<form  name="editAddress" method="post" >'+e+"</form>";$("#ajaxPopMsg").html(d);
setDefaultLi("editAddress",jQuery("#edit_provinceId").val());new YHDaddressSelector("editAddress").setPlace(jQuery("#edit_provinceId").val(),jQuery("#edit_cityId").val(),jQuery("#edit_countyId").val());_addressObj.initFun();var c=document.getElementById("goodReceiverInvoiceType").options[document.getElementById("goodReceiverInvoiceType").selectedIndex].value;if(c==1){$("#cell_select").next().removeClass("hide")}else{$("#cell_select").next().addClass("hide")}}});mobilStr=$("input[name='mobileStr']").val()}function popWinAddressDiv(){sethide();var a=jQuery("#totalAddressNum").val();if(a>=20){jQuery.ajax({type:"post",url:"/member/address/popWinForAddressNotAddOrEdit.do?&type=1",success:function(b){if(b.indexOf("notLogin")>=0){yhdLogin();return false}yhdLib.popwin({popcontentstr:b});$(".close_window").click(function(){yhdLib.popclose()
});$(".btn_cancel").click(function(){yhdLib.popclose()})}});jQuery(".cancel_order_pop_close").click()}else{jQuery.ajax({type:"post",url:"/member/address/popWinAddressDivAdd.do",success:function(b){if(b.indexOf("notLogin")>=0){yhdLogin();return false}$("#ajaxPopMsg").html(b);_addressObj.initFun();$(".cell_h3").text("添加新地址");easyDialog.open({container:"my_or_dialog",isOverlay:true,fixed:true});$("input:text[name='goodReceiver.mobil']").show();setDefaultLi("addAddress");new YHDaddressSelector("addAddress").init()}})}}function submitAddressInfo(){sethide();var e=jQuery("#goodReceiverId").val();var k="";var b=1;if(e!=null&&e>0){k="form[name='editAddress']";b=2}else{k="form[name='addAddress']";b=1}var p=true;if(jQuery(k+" :text[name='goodReceiver.goodReceiverName']").val()==""||jQuery(k+" :text[name='goodReceiver.goodReceiverName']").val().length>20){p=false;
jQuery("#receiverNameDesc").show();return}else{if(!checkTextValid(jQuery(k+" :text[name='goodReceiver.goodReceiverName']").val())){p=false;jQuery("#receiverNameDesc").hide();jQuery("#receiverNameInputDesc").show();return}else{jQuery("#receiverNameInputDesc").hide();jQuery("#receiverNameDesc").hide()}}if(jQuery("#commenUserAddress").hasClass("checkbox_c_sed")){jQuery("#goodReceiverisCommenUserAddress").val(1)}else{jQuery("#goodReceiverisCommenUserAddress").val(0)}if(jQuery("#secKillAddress").hasClass("checkbox_c_sed")){jQuery("#goodReceiverisSecKillAddress").val(1);if(jQuery("#useInvoiceIsNeed").hasClass("checkbox_c_sed")){jQuery("#goodReceiverisNeedInvoice").val(1)}else{jQuery("#goodReceiverisNeedInvoice").val(0)}}else{jQuery("#goodReceiverisSecKillAddress").val(0)}var m=jQuery(k+" select[name='goodReceiver.county.id']").find("option:selected").text();
var l=jQuery(k+"  select[name='goodReceiver.city.id']").find("option:selected").text();var a=jQuery(k+" select[name='goodReceiver.province.id']").find("option:selected").text();var n=jQuery(k+" :text[name='goodReceiver.address1']").val();var f=document.getElementById("goodReceiverInvoiceType").options[document.getElementById("goodReceiverInvoiceType").selectedIndex].value;var q=jQuery(k+" :text[name='goodReceiver.invoiceContext']").val();var r=jQuery("input[name='goodReceiver.companyName']").val();var d=$.trim($("input[name='mobileStr']").val());var i=$.trim(jQuery(k+" :text[name='goodReceiver.phone1']").val());var h=$.trim(jQuery(k+" :text[name='goodReceiver.phone2']").val());var g=$.trim(jQuery(k+" :text[name='goodReceiver.phone3']").val());var c=$("#address_type").val();if(h==""&&d==""){p=false;
jQuery("#cellDesc").show();return}else{if(h==""){if(d!=""&&/^\d{11}$/.test(d)){if(!/^1\d{10}$/.test(d)){p=false;jQuery("#cellDesc").hide();jQuery("#errorPhone2Desc").hide();jQuery("#errorMobilDesc").show();return}}else{if((!/^\d{11}$/.test(d))&&d!=mobilStr){jQuery("#cellDesc").hide();jQuery("#errorPhone2Desc").hide();jQuery("#errorMobilDesc").show();return}}}else{if(d==""){if(h!=""&&(!(i).match(/^(0\d{2,3})$/)||!(h).match(/^\d{7,8}$/)||!(g).match(/^\d{0,6}$/))){p=false;jQuery("#cellDesc").hide();jQuery("#errorMobilDesc").hide();jQuery("#errorPhone2Desc").show();return}}else{if(h!=""&&d!=""){if((!/^\d{11}$/.test(d))&&d!=mobilStr){jQuery("#cellDesc").hide();jQuery("#errorPhone2Desc").hide();jQuery("#errorMobilDesc").show();return}if(h!=""&&(!(i).match(/^(0\d{2,3})$/)||!(h).match(/^\d{7,8}$/)||!(g).match(/^\d{0,6}$/))){p=false;
jQuery("#cellDesc").hide();jQuery("#errorMobilDesc").hide();jQuery("#errorPhone2Desc").show();return}}}}}if((jQuery("#goodReceiverisSecKillAddress").val()==1)&&(jQuery("#goodReceiverisNeedInvoice").val()==1)&&f==1){if(jQuery.trim(r)==""||jQuery.trim(r)=="填写公司名称"){p=false;jQuery("#invoiceInputDesc").hide();jQuery("#invoiceNameDesc").show();return}else{if(r.length>30){p=false;jQuery("#invoiceInputDesc").show();jQuery("#invoiceNameDesc").hide();return}else{jQuery("#invoiceInputDesc").hide();jQuery("#invoiceNameDesc").hide()}}}if(p){var s=jQuery.trim(a)+jQuery.trim(l)+jQuery.trim(m)+jQuery.trim(n);if(n==""){p=false;jQuery("#detailAddressDesc").show();return}else{if(n.length>50){p=false;jQuery("#detailAddressDesc").hide();jQuery("#detailAddressLong").show();return}else{if(s.length>68){p=false;jQuery("#detailAddressDesc").hide();
jQuery("#detailAddressLong").show();return}else{if(jQuery.trim(a)=="请选择省"){p=false;jQuery("#detailAddressLong").hide();jQuery("#errorProvinceDesc").show();return}else{if(jQuery.trim(l)=="请选择市/区"){p=false;jQuery("#errorProvinceDesc").hide();jQuery("#errorCityDesc").show();return}else{if(jQuery.trim(m)=="请选择区/县/街道"){p=false;jQuery("#errorCityDesc").hide();jQuery("#errorCountyDesc").show();return}else{if(!checkTextValid(n)){p=false;jQuery("#errorCountyDesc").hide();jQuery("#detailAddressInputDesc").show();return}else{if(!checkTextValid(s)){p=false;jQuery("#detailAddressInputDesc").hide();jQuery("#errorCountyDesc").html("请检查您的地址");jQuery("#errorCountyDesc").show();return}else{jQuery("#detailAddressDesc").hide();jQuery("#detailAddressLong").hide();jQuery("#errorProvinceDesc").hide();jQuery("#errorCityDesc").hide();
jQuery("#errorCountyDesc").hide();jQuery("#detailAddressInputDesc").hide()}}}}}}}}if(p){var o={"goodReceiver.goodReceiverName":jQuery(k+" :text[name='goodReceiver.goodReceiverName']").val(),"goodReceiver.address1":jQuery(k+" :text[name='goodReceiver.address1']").val(),"goodReceiver.province.id":jQuery(k+" select[name='goodReceiver.province.id']").find("option:selected").val(),"goodReceiver.county.id":jQuery(k+" select[name='goodReceiver.county.id']").find("option:selected").val(),"goodReceiver.city.id":jQuery(k+" select[name='goodReceiver.city.id']").find("option:selected").val(),"goodReceiver.postCode":"","goodReceiver.mobil":d,"goodReceiver.phone1":i,"goodReceiver.phone2":h,"goodReceiver.phone3":g,"goodReceiver.isDefault":jQuery("#goodReceiverisCommenUserAddress").val(),"goodReceiver.isDefaultSeckill":jQuery("#goodReceiverisSecKillAddress").val(),"goodReceiver.isNeedInvoice":jQuery("#goodReceiverisNeedInvoice").val(),"goodReceiver.invoiceType":f,"goodReceiver.companyName":jQuery(k+" :text[name='goodReceiver.companyName']").val(),"goodReceiver.invoiceContext":jQuery(k+" select[name='goodReceiver.invoiceContext']").find("option:selected").val(),"goodReceiver.id":jQuery("#goodReceiverId").val(),"goodReceiver.addressType":c};
if(b==2){var j="/member/address/updateAddress.do?"}else{var j="/member/address/addAddress.do?"}jQuery.post(j,o,function(t){if(t.code==0){easyDialog.close();window.location.reload()}else{if(t.code==1){jQuery("#errorCountyDesc").hide();jQuery("#receiverNameInputDesc").show()}else{if(t.code==2){jQuery("#errorCountyDesc").hide();jQuery("#detailAddressInputInfo").show()}else{if(t.code==-2){jQuery("#errorTipsForUser").html("您已达到20条地址记录的上限");jQuery("#errorTipsForUser").show()}else{jQuery("#errorTipsForUser").html("出错啦，请重试下");jQuery("#errorTipsForUser").show()}}}}})}}}function showInvoiceType(){var a=$("#goodReceiverInvoiceType").val();if(a==1){$("#Text2").removeClass("hide")}else{$("#Text2").addClass("hide")}}function clickDeleteAdderss(b,d){$(b).parent().parent().hide();var a="/member/address/deleteAddress.do";
var c="goodReceiver.id="+d;jQuery.post(a,c,function(e){if(e.code==-1){yhdLogin();return false}else{if(e.code==0){window.location.reload()}else{jQuery.ajax({type:"post",url:"/member/address/popWinForAddressNotAddOrEdit.do?&type=4",success:function(f){yhdLib.popwin({popcontentstr:f});$(".close_window").click(function(){yhdLib.popclose()});$(".btn_cancel").click(function(){yhdLib.popclose()})}});jQuery(".cancel_order_pop_close").click()}}})}function defaultAddress(c){var a="/member/address/defaultAddress.do";var b="goodReceiver.id="+c;jQuery.post(a,b,function(d){if(d.code==-1){yhdLogin();return false}else{if(d.code==0){window.location.reload()}else{jQuery.ajax({type:"post",url:"/member/address/popWinForAddressNotAddOrEdit.do?&type=3",success:function(e){yhdLib.popwin({popcontentstr:e});$(".close_window").click(function(){yhdLib.popclose()
});$(".btn_cancel").click(function(){yhdLib.popclose()})}});jQuery(".cancel_order_pop_close").click()}}})}function YHDaddressSelector(formName){var url="/member/userinfo/address.do?type=";var addressSelector="form[name='"+formName+"'] span[name='addressSelector']";this.init=function(){jQuery(addressSelector).children().remove();addProviceSelector(function(){})};this.setPlace=function(pid,cid,coid,aid,post){jQuery(addressSelector).children().remove();addProviceSelector(function(p){jQuery(p).val(pid);addCitySelector(pid,function(c){jQuery(c).val(cid);addCountySelector(cid,function(co){jQuery(co).val(coid)})})})};var addCountySelector=function(cityId,initCounty){var countySelector=jQuery("<select>");jQuery(countySelector).attr("name","goodReceiver.county.id");jQuery(countySelector)[0].options.add(new Option("请选择区/县/街道","0"));
jQuery.get(url+"county&cityId="+cityId,function(countyList){jQuery.each(eval(countyList),function(entryIndex,entry){jQuery(countySelector)[0].options.add(new Option(entry.cnname,entry.id))});jQuery(addressSelector).append("<div id='selectCountyinit' class='cell_select'><div class='select'><div id='selectCounty'></div></div></div>");jQuery("#selectCounty").append(countySelector);initCounty(countySelector);jQuery(countySelector).change(function(){jQuery(this).nextAll("select").remove()})})};var addCitySelector=function(provId,initCity){var citySelector=jQuery("<select>");jQuery(citySelector).attr("name","goodReceiver.city.id");jQuery(citySelector)[0].options.add(new Option("请选择市/区","0"));jQuery.get(url+"city&provId="+provId,function(cityList){jQuery.each(eval(cityList),function(entryIndex,entry){jQuery(citySelector)[0].options.add(new Option(entry.cnname,entry.id))
});jQuery(addressSelector).append("<div id='selectCityinit' class='cell_select'><div class='select'><div id='selectCity'></div></div></div>");jQuery("#selectCity").append(citySelector);initCity(citySelector);jQuery(citySelector).change(function(){jQuery("#selectCountyinit").remove();jQuery(this).nextAll("select").remove();if(jQuery(this).val()!="0"){addCountySelector(jQuery(this).val(),function(c){})}})})};var addProviceSelector=function(initProv){var proviceSelector=jQuery("<select>");jQuery(proviceSelector).attr("name","goodReceiver.province.id");jQuery(proviceSelector)[0].options.add(new Option("请选择省","0"));jQuery(proviceSelector).change(function(){setDefaultLi(formName,jQuery(this).val())});jQuery.get(url+"province&countryID=1",function(provinceList){jQuery.each(eval(provinceList),function(entryIndex,entry){jQuery(proviceSelector)[0].options.add(new Option(entry.cnname,entry.id))
});jQuery(addressSelector).append("<div id='selectProvinceinit' class='cell_select'><div class='select'><div id='selectProvince'></div></div></div>");jQuery("#selectProvince").append(proviceSelector);initProv(proviceSelector);jQuery(proviceSelector).change(function(){jQuery("#selectCityinit").remove();jQuery("#selectCountyinit").remove();jQuery(this).nextAll("select").remove();if(jQuery(this).val()!="0"){addCitySelector(jQuery(this).val(),function(p){})}})})}}function setDefaultLi(a,b){jQuery("form[name="+a+"] .setDefaultAddressLi").hide()}function sethide(){jQuery("#receiverNameInputDesc").hide();jQuery("#receiverNameDesc").hide();jQuery("#cellDesc").hide();jQuery("#errorMobilDesc").hide();jQuery("#errorPhone2Desc").hide();jQuery("#invoiceInputDesc").hide();jQuery("#invoiceNameDesc").hide();
jQuery("#detailAddressDesc").hide();jQuery("#detailAddressLong").hide();jQuery("#errorProvinceDesc").hide();jQuery("#errorCityDesc").hide();jQuery("#errorCountyDesc").hide();jQuery("#detailAddressInputDesc").hide();jQuery("#errorTipsForUser").hide();jQuery("#detailAddressInputInfo").hide()}function checkTextValid(c){if(c==null||c.length==0){return false}var b=/[\"\'<>\/&*^%@!?\\\\]/;var a=b.exec(c);if(a!=null){return false}else{return true}}function isChinese(b){var a=/[^\u4e00-\u9fa5]/;if(a.test(b)){return false}else{return true}};function yhdLogin(){yhdPublicLogin.showLoginDivNone(URLPrefix.passport,false,false,function(){location.reload()})};