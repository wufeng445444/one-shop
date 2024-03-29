<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<meta content="IE=Edge" http-equiv="X-UA-Compatible">
<meta content="app-id=550780860" name="apple-itunes-app">
<meta content="webkit" name="renderer">
<meta content="YHD_HOMEPAGE.1" name="tp_page">
<meta content="format=html5; url=http://m.yhd.com" name="mobile-agent">
<meta content="no-transform" http-equiv="Cache-Control">
<meta content="no-siteapp" http-equiv="Cache-Control">
<title>一号店商城</title>
<meta name="keywords" content="一号店商城" />
<meta name="description"
	content="一号店商城" />


<link href="css/global_site_index_new.css?1560110" rel="stylesheet"
	type="text/css">
<script src="js/global_event_notify_js_error.js?1560110"
	type="text/javascript"></script>
<script src="js/register_new.js"></script>	

<script type="text/javascript">
	try {
		(function() {
			var b = window.HomePage || (window.HomePage = {});
			var a = function(f) {
				var c = document.cookie;
				var d = c.split("; ");
				for (var g = 0; g < d.length; g++) {
					var e = d[g].split("=");
					if (e[0] == f) {
						return e[1]
					}
				}
				return null
			};
			b.mobileJump = function() {
				var d = (typeof indexMobileJumpFlag != "undefined" && indexMobileJumpFlag == "1") ? 1
						: 0;
				var x = (typeof indexMobileJumpRegex != "undefined") ? indexMobileJumpRegex
						: "Android|iPod|iTouch|iPhone|iPad|BlackBerry|SymbianOS|SymbOS|Windows Phone OS|WAP|Kindle|pad|pod";
				var c = (typeof indexDefaultMobileJumpURL != "undefined") ? indexDefaultMobileJumpURL
						: "http://m.yhd.com";
				var r = (typeof indexDefaultMobileJumpTracker != "undefined") ? indexDefaultMobileJumpTracker
						: "10735511443";
				var o = (typeof indexSpecialMobileJumpURL != "undefined") ? indexSpecialMobileJumpURL
						: {};
				var A = (typeof indexSpecialMobileJumpRate != "undefined") ? indexSpecialMobileJumpRate
						: {};
				var s = (typeof indexSpecialMobileJumpTracker != "undefined") ? indexSpecialMobileJumpTracker
						: {};
				if (!d) {
					return
				}
				var y = window.navigator.userAgent;
				var p = new RegExp(x, "i");
				if (!p.test(y)) {
					return
				}
				var v = window.localStorage;
				if (window.location.search != ""
						&& window.location.search.indexOf("from=") > 0) {
					if (v) {
						var l = v.getItem("yhd_from_date");
						if (!l) {
							v.setItem("yhd_from_date", new Date().getTime())
						} else {
							v.removeItem("yhd_from_date");
							v.setItem("yhd_from_date", new Date().getTime())
						}
					}
					return
				} else {
					if (v) {
						var l = v.getItem("yhd_from_date");
						if (l) {
							var m = new Date().getTime() - parseInt(l);
							if (m >= 0 && m < 24 * 3600 * 1000) {
								return
							}
						}
					}
				}
				var n = c;
				var w = r;
				var k = o;
				var f = A;
				var i = s;
				var u = "yhd.com";
				var z = p.exec(y)[0].toLowerCase();
				var h = k[z] || n;
				var q = f[z] || -1;
				var g = i[z] || w;
				if (q != -1) {
					var e = a("abtest");
					if (!e || isNaN(e) || parseInt(e) < 0 || parseInt(e) >= 100) {
						e = Math.floor(Math.random() * 100);
						var j = new Date();
						j.setTime(new Date().getTime() + 30 * 24 * 60 * 60
								* 1000);
						document.cookie = "abtest=" + e + ";path=/;domain=."
								+ u + ";expires=" + j.toGMTString()
					}
					if (e <= q) {
						window.location.href = h + "?tracker_u=" + g
					} else {
						return
					}
				} else {
					window.location.href = h + "?tracker_u=" + g
				}
			};
			b.hideProWin = function() {
				var d = (typeof indexHideProWinFlag != "undefined" && indexHideProWinFlag == "1") ? 1
						: 0;
				if (!d) {
					return
				}
				var i = location.href;
				if (i.indexOf("forceId=") > 0) {
					var j = new RegExp("(\\?|&)forceId=([^&]*)(\\s|&|$)", "i");
					if (j.test(i)) {
						var f = RegExp.$1;
						var g = RegExp.$2;
						var e = RegExp.$3 || "";
						if (f == "?") {
							i = i.replace(f + "forceId=" + g + e, "?")
						} else {
							i = i.replace(f + "forceId=" + g + e, e)
						}
						var h = i.length;
						if (i.charAt(h - 1) == "?" || i.charAt(h - 1) == "&") {
							i = i.substring(0, h - 1)
						}
						if (history.replaceState) {
							history.replaceState({}, "", i)
						} else {
							var c = a("provinceId");
							if (c) {
								location.replace(i)
							}
						}
					}
				}
			};
			b.lunboAjaxReplaceAdv = function() {
				var f = (typeof lunboAjaxReplaceAdvCodes != "undefined") ? lunboAjaxReplaceAdvCodes
						: "";
				var c = (typeof lunboOrientationCodes != "undefined") ? lunboOrientationCodes
						: "";
				var m = false;
				var d = false;
				function n(p) {
					var q = function() {
						var r = window.global || (window.global = {});
						var s = r.vars = (r.vars || {});
						r.vars.customInteractTime = r.vars.customInteractTime
								|| new Date().getTime();
						p.setAttribute("data-loaded", "1")
					};
					if (document.addEventListener) {
						p.addEventListener("load", q)
					} else {
						if (document.attachEvent) {
							p.attachEvent("onload", q)
						}
					}
				}
				function l() {
					var r = function(D) {
						var C = D.parentNode;
						if (C) {
							C.removeChild(D)
						}
					};
					var y = document.getElementById("index_menu_carousel");
					var w = document.getElementById("lunboNum");
					if (y) {
						if (y.getAttribute("data-adjust") == "1") {
							return
						}
						y.setAttribute("data-adjust", 1);
						var p = [];
						var z = y.getElementsByTagName("li");
						for (var B = 0; B < z.length; B++) {
							var x = z[B];
							var v = x.getElementsByTagName("a").length > 0 ? x
									.getElementsByTagName("a")[0] : null;
							if (v) {
								if (v.getAttribute("data-nsf") == "1"
										&& (v.getAttribute("data-ajax") == "1" || v
												.getAttribute("data-ajax") == "2")
										&& v.getAttribute("data-done") != "1") {
									p.push(x)
								}
							}
						}
						if (p.length > 0) {
							for (var q = 0; q < p.length; q++) {
								var x = p[q];
								r(x);
								var A = w.getElementsByTagName("li");
								for (var s = 0; s < A.length; s++) {
									var u = A[s];
									if (u.getAttribute("flag") == x
											.getAttribute("flag")) {
										r(u)
									}
								}
							}
							z = y.getElementsByTagName("li");
							if (z.length > 0) {
								var t = z[0].getElementsByTagName("img").length > 0 ? z[0]
										.getElementsByTagName("img")[0]
										: null;
								if (t && t.getAttribute("id") != "lunbo_1") {
									t.setAttribute("id", "lunbo_1")
								}
							}
						}
					}
				}
				function k(w, p, s, u) {
					var v = w + "?callback=" + s;
					var q = [];
					for ( var x in p) {
						q.push("&" + x + "=" + encodeURIComponent(p[x]))
					}
					v += q.join("");
					window[s] = function(y) {
						u(y);
						if (t) {
							t.removeChild(r)
						}
					};
					var t = document.getElementsByTagName("head")[0]
							|| document.documentElement;
					var r = document.createElement("script");
					r.src = v;
					t.insertBefore(r, t.firstChild)
				}
				function e(q) {
					var p = setInterval(function() {
						var r = document.getElementById("index_menu_carousel");
						if (r) {
							q();
							clearInterval(p)
						}
					}, 100)
				}
				function o() {
					var r = a("provinceId");
					var p = "http://p4p.yhd.com/advdolphin/external/saleTypeWeightAd";
					if (f == "") {
						m = true;
						return
					}
					var q = {
						mcSiteId : 1,
						provinceId : r ? r : 1,
						codes : f,
						screenType : screen.width >= 1280 ? "1" : "2"
					};
					k(p, q, "ajaxFindPromAdvHandler", function(s) {
						m = true;
						if (s && s.status == 1) {
							window.ajaxFindPromAdvData = s;
							if (d) {
								e(function() {
									h();
									l();
									g()
								})
							}
						} else {
							if (d) {
								e(function() {
									l();
									g()
								})
							}
						}
					})
				}
				function j() {
					var t = a("provinceId");
					var q = a("guid");
					var r = a("yihaodian_uid");
					var p = "http://gemini.yhd.com/libraService/exactNormalAdServe";
					if (c == "") {
						d = true;
						return
					}
					var s = {
						mcSiteId : 1,
						provinceId : t ? t : 1,
						codes : c,
						guId : q,
						userId : r
					};
					if (typeof (flagControlJs) == "undefined") {
						d = true;
						if (m) {
							l();
							g()
						}
						return
					}
					k(p, s, "ajaxFindOrientationHandler", function(u) {
						d = true;
						if (u && u.status == 1) {
							window.ajaxFindOrientationAdvData = u;
							if (m) {
								e(function() {
									h();
									l();
									g()
								})
							}
						} else {
							if (m) {
								e(function() {
									l();
									g()
								})
							}
						}
					})
				}
				function h() {
					var p = function(I, N) {
						var K = null;
						var H = I[N];
						var J = H != null ? H : [];
						for (var M = 0; M < J.length; M++) {
							var L = J[M];
							if (L && L.commonScreenImgUrl) {
								K = L;
								break
							}
						}
						return K
					};
					var z = function(I, N) {
						var K = null;
						if (!I) {
							return null
						}
						var H = I.sourceList;
						var J = H != null ? H : [];
						for (var M = 0; M < J.length; M++) {
							var L = J[M];
							if (L && L.advertiseRegionalCode == N) {
								K = L;
								K.regionId = L.advertiseRegionalId;
								K.adBgColor = L.reserved;
								K.text = L.displayTitle;
								K.landingPage = L.linkUrl;
								K.tc = L.tc;
								if (screen.width >= 1280) {
									K.commonScreenImgUrl = L.imageUrlWide
								} else {
									K.commonScreenImgUrl = L.imageUrl
								}
								break
							}
						}
						return K
					};
					var y = window.ajaxFindPromAdvData;
					var E = window.ajaxFindOrientationAdvData;
					var w = document.getElementById("index_menu_carousel");
					if (w) {
						var D = w.getElementsByTagName("li");
						for (var C = 0; C < D.length; C++) {
							var A = D[C].getElementsByTagName("a");
							for (var r = 0; r < A.length; r++) {
								var x = A[r];
								var u = x.getElementsByTagName("img")[0];
								if (x && u) {
									var v = f.split(",");
									v = v.concat(c.split(","));
									for (var t = 0; t < v.length; t++) {
										var F = null;
										if (y && y.status == 1) {
											F = p(y.value, v[t])
										}
										if (!F && E && E.value) {
											F = z(E.value, v[t])
										}
										if (F
												&& F.regionId
												&& F.regionId == x
														.getAttribute("data-advId")) {
											if (x.getAttribute("data-done") != "1") {
												x.setAttribute("href",
														F.landingPage);
												x.setAttribute("title", F.text);
												x.setAttribute("data-ref",
														F.ref);
												x
														.setAttribute(
																"data-done",
																"1");
												if (F.adBgColor) {
													D[C].setAttribute(
															"data-bgcolor",
															F.adBgColor)
												}
												var q = F.tc;
												var s = F.tc_ext;
												if (q) {
													x.setAttribute("data-tc", q
															+ ".1");
													if (s) {
														x.setAttribute(
																"data-tce", s)
													}
												}
												u.setAttribute("alt", F.text);
												u.setAttribute("src",
														F.commonScreenImgUrl);
												u
														.setAttribute(
																"data-done",
																"1");
												u.removeAttribute("si");
												u.removeAttribute("wi")
											}
										}
									}
								}
							}
						}
					}
					var B = document.getElementById("promo_show");
					if (B) {
						B.setAttribute("data-ajax-done", "1")
					}
				}
				function i() {
					var v = document.getElementById("index_menu_carousel");
					var p = screen.width >= 1280 ? "wi" : "si";
					if (v) {
						var s = v.getElementsByTagName("li");
						var q = s.length > 0 ? s[0].getElementsByTagName("a")
								: [];
						for (var t = 0; t < q.length; t++) {
							var u = q[t];
							var r = u.getElementsByTagName("img")[0];
							if (r.getAttribute(p)) {
								r.setAttribute("src", r.getAttribute(p));
								r.removeAttribute("si");
								r.removeAttribute("wi")
							}
						}
					}
				}
				function g() {
					var w = document.getElementById("index_menu_carousel");
					var x = document.getElementById("lunboNum");
					var s = screen.width >= 1280 ? "wi" : "si";
					if (w) {
						if (w.getAttribute("data-inited") == "1") {
							return
						}
						w.setAttribute("data-inited", 1);
						var B = w.getElementsByTagName("li");
						var A = x.getElementsByTagName("li");
						var u = -1;
						var r = [];
						for (var y = 0; y < B.length; y++) {
							if (u >= 0) {
								break
							}
							var z = B[y].getElementsByTagName("a");
							for (var C = 0; C < z.length; C++) {
								var t = z[C];
								var p = t.getElementsByTagName("img")[0];
								if (t && p) {
									if (t.getAttribute("data-tag") == "13") {
										u = y;
										break
									}
									if (t.getAttribute("data-ajax") == ""
											|| t.getAttribute("data-ajax") == "0"
											|| ((t.getAttribute("data-ajax") == "1" || t
													.getAttribute("data-ajax") == "2") && t
													.getAttribute("data-done") != "1")) {
										r.push(y)
									}
								}
							}
						}
						if (u<0&&r.length>0) {
							u = r[Math.floor(Math.random() * r.length)]
						}
						if (u >= 0) {
							var v = B[u];
							var t = v.getElementsByTagName("a")[0];
							var p = t.getElementsByTagName("img")[0];
							if (t && p) {
								if (u > 0) {
									B[0].style.display = "none"
								}
								v.style.display = "";
								if (w.getAttribute("lunboBackgroudFlag") == "1") {
									v.style.backgroundColor = v
											.getAttribute("data-bgcolor")
								}
								if (p.getAttribute(s)) {
									p.setAttribute("src", p.getAttribute(s));
									p.removeAttribute("si");
									p.removeAttribute("wi");
									n(p)
								}
							}
							for (var D = 0; D < A.length; D++) {
								var q = A[D];
								if (D == u) {
									q.className = "cur";
									break
								}
							}
							w.setAttribute("data-init", u)
						}
					}
				}
				if (f != "" || c != "") {
					o();
					j();
					setTimeout(function() {
						e(function() {
							l();
							g()
						})
					}, 1500)
				} else {
					e(function() {
						g()
					})
				}
			};
			b.mobileJump();
			b.hideProWin();
			b.lunboAjaxReplaceAdv()
		})();
	} catch (e) {
	}
</script>
<script type="text/javascript">
	(function() {
		try {
			document.getElementById("headerAllProvince").style.height = "300px";
			(function() {
				var a = $(".headerNavWrap").find("a:contains('1号钱包')");
				if (a) {
					var b = a.next();
					if (b) {
					}
				}
			})();
			if (window.top !== window.self) {
				window.top.location = window.location
			}
			;
		} catch (err) {
		}
		try {
			window.g_selectionProvince = [];
		} catch (err) {
		}
	})();
</script>
<script type="text/javascript">
	var URLPrefix = {
		"shop" : "http://shop.1mall.com",
		"busystock" : "http://gps.yhd.com",
		"TipDate" : "2012-09-29",
		"adExtTrackerUrl" : "http://adlog.yhd.com/t.gif",
		"pms" : "http://pms.yhd.com",
		"my_statics" : "http://image.yihaodianimg.com/statics",
		"passportmall" : "https://passport.1mall.com",
		"seoLinkMaxSize" : "20",
		"mallImgDomain" : ".yihaodianimg.com",
		"shoping_pms" : "http://pms.yhd.com",
		"shoping_shop" : "http://shop.1mall.com",
		"search" : "list.html?",
		"sitedomain" : ".yhd.com",
		"tryUrl" : "http://try.yhd.com",
		"shoping_self" : "http://www.yhd.com",
		"tracker" : "tracker.yhd.com",
		"commentZoneMall" : "http://e.1mall.com/front-pe",
		"productDetailHost" : "http://www.yhd.com",
		"central" : "http://www.yhd.com",
		"search_list" : "list.html?",
		"yhmall" : "http://mall.yihaodian.com",
		"footFriendLink" : "http://www.yhd.com/friendlink/index.do",
		"centralShop" : "http://shop.yhd.com",
		"shoping_passport" : "https://passport.yhd.com",
		"shoping_my_statics" : "http://image.yihaodianimg.com/statics",
		"yaowang" : "http://www.111.com.cn",
		"uploadPostUrl" : "http://upload.yihaodian.com/upload/UploadAction",
		"shoping_my" : "http://my.yhd.com",
		"image" : "http://image.yihaodian.com",
		"shoping_search" : "http://www.yhd.com/ctg",
		"shoping_opposite" : "http://www.1mall.com",
		"shoping_central" : "http://www.yhd.com",
		"my" : "http://my.yhd.com",
		"search_keyword" : "http://search.yhd.com",
		"mymall" : "http://my.1mall.com",
		"selfroot" : "http://www.yhd.com",
		"yiwangauth" : "http://mall.yiwang.cn",
		"products_stock" : "http://gps.yhd.com/busystock",
		"sitedomainmall" : ".1mall.com",
		"commentZoneYhd" : "http://e.yhd.com/front-pe",
		"centralImgDomain" : ".yihaodianimg.com",
		"productDetailUrl" : "http://www.yhd.com",
		"passport" : "https://passport.yhd.com",
		"statics" : "http://image.yihaodianimg.com/front-homepage",
		"mobile" : "http://m.yhd.com",
		"mall" : "http://www.1mall.com"
	};
	var headerType = "base";
	var favorite = "1号店，只为更好的生活";
	var hostUrl = "www.yhd.com";
	var httpUrl = "http://www.yhd.com";
	var no3wUrl = "yhd.com";
	var simpleUrl = "yhd";
	var chineseUrl = "1号店";
	var imagePath = "images";
	var currSiteId = 1;
	var currBsSiteId = 1;
	var currSiteType = 1;
	var merchant = 1;
	var isIndex = 1;
	var indexFlag = 1;
	var currVersionNum = 1560110;
	var projectVersionNum = "1.0";
	var currDomain = "http://www.yhd.com";
	var oppositeDomain = "http://www.yhd.com";
	var lazyLoadImageObjArry = lazyLoadImageObjArry || [];
	var multiSearch = "true";
	var currProvinceId = 6;
	var isFixTopNav = true;
	var youFavorateICO = "{1:'http://d7.yihaodianimg.com/N00/M08/41/1F/CgMBmVFZJWSAZFOYAAAFPb8gIj869000.jpg'}";
	var limitBuyCallFlag = 0;
	var globalShowMarketPrice = "0";
	var globalSearchSelectFlag = "1";
	var globalBaifendianFlag = "0";
	var globalSearchHotkeywordsFlag = "1";
	var globalTopPrismFlag = "1";
	var _globalSpmDataModelJson = {
		"SPM_COM" : {
			"ADD_CART" : 1,
			"ADD_FAV" : 2,
			"DELETE" : 6,
			"TURN_PAGE" : 8,
			"SETTLEMENT" : 7
		},
		"YHD_HOMEPAGE" : "1",
		"SPM_DATA_TYPE" : {
			"ADVANCED_TAG" : 33,
			"MINGPIN_CAT" : 32,
			"COMMENT_TAG" : 28,
			"SEARCH_SCENE_AD" : 36,
			"KEYWORD" : 25,
			"BASICS_TAG" : 34,
			"TRACKER_CODE" : 16,
			"SMARTBOX_ATTR" : 23,
			"CATEGORY" : 9,
			"SEARCH_TURN_PAGE" : 20,
			"LANDING" : 6,
			"SEARCH_BRAND_SHOP" : 35,
			"PROMOTION" : 8,
			"MSG_TYPE" : 31,
			"PRODUCT" : 5,
			"SEARCH_FILTER" : 21,
			"AD" : 12,
			"SHOP" : 26,
			"TUAN" : 11,
			"SMARTBOX_KW" : 22,
			"MINGPIN" : 17,
			"PROVINCE" : 14,
			"SEARCH_WORD" : 15,
			"COUPON" : 7,
			"BRAND" : 10,
			"SEARCH_SORT" : 19,
			"SMARTBOX_CATE" : 24
		},
		"SPM_SYSTEM_TYPE" : {
			"PMS" : 4,
			"EDM" : 30,
			"AD" : 13,
			"CATEGORY" : 29,
			"SEARCH" : 3,
			"MANUAL" : 2,
			"TRY" : 27,
			"STORE" : 18,
			"AUTO" : 1
		},
		"SPM_AREA" : {
			"YHD_HOME_FLOOR_MRHL" : 31,
			"YHD_NHOME_INDEX2_FLOOR9" : 802,
			"YHD_HOME_NEWGIFT" : 536,
			"YHD_GLOBAl_PRISM" : 22,
			"YHD_GLOBAl_HEADER_CATEGORY_0" : 156,
			"YHD_GLOBAl_HEADER_RIGHT_AD" : 18,
			"YHD_GLOBAl_HEADER_CATEGORY_1" : 157,
			"YHD_GLOBAl_HEADER_CATEGORY_2" : 158,
			"YHD_NHOME_INDEX2_FLOOR8" : 801,
			"YHD_HOME_BAMBOO_PROMOT_MEITEHAO_TAB" : 47,
			"YHD_GLOBAl_HEADER_CATEGORY_3" : 159,
			"YHD_NHOME_INDEX2_FLOOR7" : 800,
			"YHD_HOME_BAMBOO_PROMOT_B_LIMIT_BUY" : 45,
			"YHD_HOME_BAMBOO_PROMOT_B_FAVORATE_PRODUCT" : 43,
			"YHD_GLOBAl_HEADER_CATEGORY_4" : 160,
			"YHD_GLOBAl_HEADER_CATEGORY_5" : 161,
			"YHD_GLOBAl_HEADER_ORDER" : 155,
			"YHD_GLOBAl_HEADER_CATEGORY_6" : 162,
			"YHD_GLOBAl_HEADER_CATEGORY_7" : 163,
			"YHD_GLOBAl_HEADER_CATEGORY_8" : 164,
			"YHD_GLOBAl_HEADER_CATEGORY_9" : 165,
			"YHD_INDEX_NOTICE" : 1251,
			"YHD_HOME_FLOOR_JD" : 35,
			"YHD_HOME_BAMBOO_PROMOT_FAVORATE_PRODUCT" : 61,
			"YHD_HOME_FLOOR_LXBH" : 30,
			"YHD_HOME_FLOOR_MPTM" : 27,
			"YHD_HOME_BAMBOO_PROMOT_FAVORATE_PROMOT" : 62,
			"YHD_GLOBAl_TOP_PROVINCE" : 153,
			"YHD_GLOBAl_FOOTER_BROWSE_RELATED" : 19,
			"YHD_NHOME_FOOD" : 710,
			"YHD_GLOBAl_HEADER_CATEGORY" : 15,
			"YHD_GLOBAl_FOOTER" : 20,
			"YHD_GLOBAl_HEADER_LOGO" : 11,
			"YHD_GLOBAl_TOP_UNLOGIN" : 150,
			"YHD_HOME_LOUCENG_BANNER" : 38,
			"YHD_HOME_CHUCHUANG" : 708,
			"YHD_HOME_BAMBOO_PROMOT_TIERTHIRD_TAB" : 52,
			"YHD_NHOME_LBSG" : 711,
			"YHD_HOME_CHUCHUANG_BANNER" : 2709,
			"YHD_GLOBAl_HEADER_CATEGORY_13" : 169,
			"YHD_GLOBAl_HEADER_CATEGORY_12" : 168,
			"YHD_GLOBAl_HEADER_CATEGORY_11" : 167,
			"YHD_GLOBAl_HEADER_CATEGORY_10" : 166,
			"YHD_GLOBAl_HEADER_MOBILE" : 14,
			"YHD_HOME_BAMBOO_RIGHT_TUAN" : 39,
			"YHD_HOMEPAGE_FLOORNAV" : 1063,
			"YHD_GLOBAl_TOP_USER" : 7,
			"YHD_GLOBAl_HEADER_CATEGORY_15" : 595,
			"YHD_HOME_BAMBOO_SLIDER" : 36,
			"YHD_GLOBAl_HEADER_CATEGORY_14" : 170,
			"YHD-NHOME-XHLC" : 714,
			"YHD_GLOBAl_HEADER_CART" : 149,
			"YHD_NHOME_SHAN" : 1089,
			"YHD_HOME_BAMBOO_PROMOT_TIERTHIRD_FAVORATE_PROMOT" : 56,
			"YHD_HOME_BAMBOO_PROMOT_TIERTHIRD_NEW_PRODUCT" : 55,
			"YHD_HOME_BAMBOO_PROMOT_B_TAB" : 42,
			"YHD_GLOBAl_TOP_BANNER" : 9,
			"YHD_HOME_BAMBOO_PROMOT_TIERTHIRD_LIMIT_BUY" : 53,
			"YHD_GLOBAl_LEFT_CNY" : 2655,
			"YHD_GLOBAl_HEADER_HOT_SEARCH" : 13,
			"YHD_HOME_BAMBOO_PROMOT_MEITEHAO_0" : 48,
			"YHD_HOME_BAMBOO_RIGHT_YHZX" : 37,
			"YHD_GLOBAl_HEADER_SEARCH" : 12,
			"YHD_HOME_BAMBOO_PROMOT_MEITEHAO_1" : 49,
			"YHD_GLOBAl_TOP_MENU" : 8,
			"YHD_HOME_BAMBOO_PROMOT_TIERTHIRD_FAVORATE_PRODUCT" : 57,
			"YHD_HOME_BAMBOO_PROMOT_MEITEHAO_2" : 50,
			"YHD_HOME_BAMBOO_PROMOT_MEITEHAO_3" : 51,
			"YHD_HOME_BAMBOO_PROMOT_B_ZERO_AREA" : 44,
			"YHD_HOME_NOTICE" : 2641,
			"YHD_HOME_BAMBOO_RIGHT_NEWS" : 41,
			"YHD_GLOBAl_HEADER_SEARCHSHOP" : 2058,
			"YHD_NHOME_3C" : 709,
			"INDEX2_SELECTION_ACTIVITY" : 2646,
			"YHD_HOME_BAMBOO_RIGHT_HUAFEI" : 40,
			"YHD_GLOBAl_TOP_MSG" : 2549,
			"YHD_NHOME_TUAN" : 713,
			"YHD_GLOBAl_HEADER_MINICART" : 17,
			"YHD_NHOME_SXHG" : 712,
			"YHD_HOME_FLOOR_CHTT" : 28,
			"YHD_HOME_BAMBOO_PROMOT_TIERTHIRD_ZERO_AREA" : 54,
			"YHD_HOME_FLOOR_JJSH" : 32,
			"YHD_GLOBAl_TOP_MESSAGE" : 152,
			"YHD_GLOBAl_HEADER_WELFARE" : 154,
			"YHD_HOME_BAMBOO_PROMOT_LIMIT_BUY" : 59,
			"YHD_HOME_FLOOR_MMBB" : 33,
			"YHD_GLOBAl_HEADER_NAV" : 16,
			"YHD_HOME_FLOOR_JKSP" : 29,
			"YHD_GLOBAl_FOOTER_HELP" : 21,
			"YHD_HOME_BAMBOO_PROMOT_ZERO_AREA" : 60,
			"YHD_GLOBAl_TOP_LOGIN" : 151,
			"YHD_GLOBAl_TOP_CURTAIN" : 10,
			"YHD_HOME_BAMBOO_PROMOT_TAB" : 58,
			"YHD_HOME_BAMBOO_PROMOT_B_FAVORATE_PROMOT" : 46,
			"YHD_HOME_FLOOR_WHSH" : 34
		}
	};
	var globalShowProWin = 1;
	var indexJbpPopFlag = "0";
	var indexFreshmanPopFlag = "0";
	var globalTpCheckFlag = "1";
</script>
<link rel="stylesheet" type="text/css"
	href="css/global_yhdLib.css?1560110">
</head>
<body data-cdndetection="-1" data-param="{"
	globalPageCode":"YHD_HOME","currPageId":"1","tierthirdProvinceFlag":"0", "tryVisibleFlag":"0"}" id="comParamId"
	class="w1200">
	<script type="text/javascript">
		var isWidescreen = screen.width >= 1280;
		if (isWidescreen) {
			document.getElementsByTagName("body")[0].className = "w1200";
		}
		function recordCINTT() {
			var global = window["global"] || (window["global"] = {});
			var vars = global.vars = (global.vars || {});
			global.vars.customInteractTime = global.vars.customInteractTime
					|| new Date().getTime();
		}
		
	</script>
	<script type="text/javascript">
		$(function () {
			$("#buttonhua").click(function () {
				location.href='<%=request.getContextPath()%>/login.jsp';
			})
			$("#buttonhua2").click(function () {
				location.href='<%=request.getContextPath()%>/reg.jsp';
			})
		})
	</script>
	
	<div style="display: none;" id="yhd_pop_win" class="pop_win"></div>
	<div class="hd_header_wrap">
		<div id="global_top_bar" class="hd_global_top_bar">
			<div class="wrap clearfix">
				<div class="hd_topbar_left clearfix">
					<div data-tpa="YHD_GLOBAl_TOP_UNLOGIN" id="global_unlogin"
						data-addclass="hd_unlogin_hover" class="hd_unlogin_wrap">
						<div class="hd_login clearfix">
							
							
							<!-- <a rel="nofollow"
								 data-ref="YHD_TOP_login"
								href="login.jsp" class="blue_link">&nbsp;登录&nbsp;</a> -->
								<c:if test="${user==null}">
								<span class="hd_hi">Hi,</span> 请
									<button id="buttonhua">登录</button>/<button id="buttonhua2">注册</button>
								</c:if>
								
								<c:if test="${user!=null}">
								<span class="hd_hi">欢迎：</span>
									<span style="color:red">${user.uname}</span>
								</c:if>
								
								 
								 
			<!-- 					 <form action="login.jsp">
            	<input type="submit"  id="global_top_bar_loginLink" data-ref="YHD_TOP_login" class="blue_link" value="请登录">
            </form> -->
								
								<!-- <a
								rel="nofollow" data-ref="YHD_TOP_register" href="javascript:void(0)"
								class="blue_link" onclick="$('#huaForm').submit()">&nbsp;注册</a> -->
								
							
						
						</div>
						<div class="hd_user_center">
							<div class="clearfix">
								<div class="fl">
									<a data-ref="YHD_TOP_userpic_nonlogin" target="_blank"
										href="member_index.html" class="hd_avata_box"></a>
								</div>
								<div class="hd_growth_box">
									<a data-ref="YHD_TOP_vip_nonlogin" target="_blank"
										href="http://vip.yhd.com" class="hd_vip_earn">会员专享价，V3免费购</a>
									<p class="hd_my_yhd">
										<a data-ref="YHD_TOP_myyihaodian_nonlogin" target="_blank"
											href="member_index.html">欢迎进入我的1号店</a>
									</p>
								</div>
							</div>
							<div class="hd_message">
								<a data-ref="YHD_TOP_userjifen_nonlogin" target="_blank"
									href="http://jifen.yhd.com/pointshop/pointIndex.do">积分</a> <a
									data-ref="YHD_TOP_userxunzhang_nonlogin" target="_blank"
									href="http://vip.yhd.com/badge-shop/index.html">勋章</a>
							</div>
						</div>
						<em class="hd_login_arrow"></em>
					</div>
					<div data-tpa="YHD_GLOBAl_TOP_LOGIN" data-mpicon="{"
						imgUrl":"images/choujiang.gif", "imgLink":"", "tracker":"", "altName":""}" data-type="new"
						id="global_login" class="hd_login_wrap none"></div>
					<div data-tpa="YHD_GLOBAl_TOP_MSG" data-cfg="1" id="hdUserMsg"
						class="hd_notice_wrap none">
						<a target="_blank" rel="nofollow" data-ref="YHD_TOP_MSG"
							href="http://edm.yhd.com/pcMsg/myMessage.action"
							class="hd_notice_tit clearfix"><i></i>我的消息<span></span></a>
						<div class="hd_notice"></div>
					</div>
					<div data-tpa="YHD_GLOBAl_TOP_PROVINCE" id="headerSelectProvince"
						class="hd_indxProvce fl">
						<span>送货至</span><a href="javascript:showProvincesV2();"
							id="currProvince" class="hd_header_province_name">浙江</a>
						<div data-hot="1:上海,2:北京,20:广东,18:湖北,12:四川,14:福建"
							id="headerAllProvince" class="hd_provincelist"
							style="height: 300px;"></div>
					</div>
				</div>
				<div data-tpa="YHD_GLOBAl_TOP_MENU" class="hd_top_manu clearfix">
					<ul class="clearfix">
						<li data-tpc="1" id="glHdMyYhd" data-addclass="hd_menu_hover"
							class="hd_menu_tit hd_my_order"><a rel="nofollow"
							href="member_index.html" data-ref="YHD_TOP_myyhd" target="_blank"
							class="hd_menu"><s></s>我的1号店</a>
							<div class="hd_menu_list">
								<ul>
									<li><a rel="nofollow" target="_blank"
										data-ref="YHD_TOP_order" href="member_order.html">我的订单</a></li>
									<li><a rel="nofollow" target="_blank"
										data-ref="YHD_TOP_points" href="member_points.html">我的积分</a></li>
									<li><a rel="nofollow" target="_blank"
										data-ref="YHD_TOP_coupon"
										href="http://coupon.yhd.com/myCoupon">我的抵用券</a></li>
									<li><a rel="nofollow" target="_blank"
										data-ref="YHD_TOP_mycollection"
										href="http://my.yhd.com/member/myCollection/myCollectionProduct.do">我的收藏夹</a></li>
									<li><a rel="nofollow" target="_blank"
										data-ref="YHD_TOP_comment"
										href="http://e.yhd.com/front-pe/pelist/view.do">我的评论</a></li>
									<li><a rel="nofollow" target="_blank"
										data-ref="YHD_TOP_vip" href="http://vip.yhd.com">会员专享</a></li>
								</ul>
							</div></li>
						<li id="glShouCang" data-addclass="hd_menu_hover"
							class="hd_menu_tit"><a class="hd_menu"
							href="javascript:void(0);"> <span
								style="vertical-align: middle;">&nbsp;&nbsp;&nbsp;&nbsp;收藏夹</span></a>
							<div data-tpc="2" id="glShouCangChild" class="hd_menu_list">
								<ul>
									<li><a rel="nofollow" target="_blank"
										data-ref="YHD_TOP_mycollection_product"
										href="http://my.yhd.com/member/myNewCollection/myFavorite.do?operType=0">商品收藏</a></li>
									<li><a rel="nofollow" target="_blank"
										data-ref="YHD_TOP_mycollection_shop"
										href="http://my.yhd.com/member/myNewCollection/myFavorite.do?operType=1">店铺收藏</a></li>
								</ul>
							</div></li>
						<li id="glKeHuDuan" data-addclass="hd_menu_hover"
							class="hd_menu_tit"><a class="hd_menu" href="#"><i
								class="hd_mobile_icon"></i>掌上1号店</a>
							<div class="hd_mobile_show">
								<i></i>
								<div data-tpc="3" class="hd_mobile_list clearfix">
									<div class="hd_mobile_content">
										<img alt=""
											src="images/ChEbu1WRDpOAf6xxAAAz2LgGaek47900_93x93.jpg">
									</div>
									<dl class="hd_mobile_tab">
										<dt>
											<b>掌上1号店</b>
										</dt>
										<dd>
											<a data-ref="YHD_TOP_wx_link" target="_blank"
												href="http://cms.yhd.com/sale/157119" class="blue_link">手机购物更优惠</a>
										</dd>
										<dd>
											<a class="hd_iconfont" rel="nofollow"
												data-ref="YHD_TOP_wx_iphone" target="_blank"
												href="https://itunes.apple.com/us/app/1hao-dian/id427457043?mt=8"></a>
											<a class="hd_iconfont" rel="nofollow"
												data-ref="YHD_TOP_wx_ipad" target="_blank"
												href="https://itunes.apple.com/cn/app/1hao-dianhd/id550780860?mt=8"></a>
											<a class="hd_iconfont" rel="nofollow"
												data-ref="YHD_TOP_wx_android" target="_blank"
												href="http://m.yhd.com/downloads/10600518746/TheStoreApp.apk"></a>
										</dd>
									</dl>
								</div>
							</div></li>
						<li data-tpc="4" id="glKeHuFuWu" data-addclass="hd_menu_hover"
							class="hd_menu_tit"><a class="hd_menu"
							data-ref="YHD_TOP_help" href="help.html" target="_blank"><s
								class="khfw"></s>客户服务</a>
							<div class="hd_menu_list">
								<ul>
									<li><a target="_blank" data-ref="YHD_TOP_help_baoguo"
										href="member_order.html">包裹跟踪</a></li>
									<li><a target="_blank" data-ref="YHD_TOP_help_wenti"
										href="help.html">常见问题</a></li>
									<li><a target="_blank" data-ref="YHD_TOP_help_shouhou"
										href="http://yas.yhd.com/return/returnApplyList.do">在线退换货</a></li>
									<li><a target="_blank" data-ref="YHD_TOP_help_tousu"
										href="http://help.yhd.com/opinion/opinionList.do">在线投诉</a></li>
									<li><a target="_blank"
										data-ref="YHD_TOP_help_peisongfanwei"
										href="http://www.yhd.com/marketing/deliveryinfo/deliveryInfo.do">配送范围</a></li>
								</ul>
							</div></li>
						<li id="glWangZhanDaoHang" data-addclass="hd_menu_hover"
							class="hd_menu_tit"><a class="hd_menu" href="#">网站导航</a>
							<div data-tpc="5" class="hd_site_nav">
								<em></em>
								<ul class="clearfix">
									<li><a target="_blank" data-ref="YHD_TOP_links_mall"
										href="http://1mall.yhd.com">1号商城</a></li>
								</ul>
								<ul class="clearfix">
									<li><a title="1号社区" href="http://club.yhd.com/"
										data-tcd="AD.14509_10535717_2" data-ref="14509_10535717_2"
										target="_blank"> 1号社区 </a></li>
									<li><a title="0元试用" href="http://try.yhd.com/"
										data-tcd="AD.14509_10535724_4" data-ref="14509_10535724_4"
										target="_blank"> 0元试用 </a></li>
									<li><a title="平安金卡"
										href="http://cms.yhd.com/cmsPage/show.do?pageId=73060"
										data-tcd="AD.14509_11754949_5" data-ref="14509_11754949_5"
										target="_blank"> 平安金卡 </a></li>
									<li><a title="分销平台"
										href="http://fx.yhd.com/pifa/index.action"
										data-tcd="AD.14509_15636664_6" data-ref="14509_15636664_6"
										target="_blank"> 分销平台 </a></li>
								</ul>
								<ul class="clearfix">
									<li><a target="_blank" data-ref="YHD_TOP_union"
										href="http://union.yhd.com/">网站联盟</a></li>
									<li><a target="_blank" data-ref="YHD_TOP_settled"
										href="http://zhaoshang.yhd.com">招商通道</a></li>
									<li><a target="_blank" data-ref="YHD_TOP_b2b"
										href="http://b2b.yhd.com/">企业采购</a></li>
								</ul>
							</div></li>
					</ul>
					<span class="hd_follow_us">关注我们：</span> <a title="去关注1号店的新浪微博"
						class="hd_sina_weibo" href="http://weibo.com/yihaodian"
						rel="nofollow" onclick="gotracker('2','YHD_TOP_weibo');"
						id="weibo" target="_blank">关注1号店新浪微博</a> <a target="_blank"
						href="http://cms.yhd.com/cms/view.do?topicId=24484"
						title="关注1号店微信" id="glWeiXin" data-addclass="hd_menu_hover"
						class="hd_weixin hd_menu_tit" data-tpc="6">
						<div class="hd_weixin_show">
							<i></i>
							<p>
								扫描二维码<br>关注1号店微信
							</p>
							<img alt="扫描二维码<br />关注1号店微信"
								src="images/CgQCtlKW1RSAe6dIAAAcun_R_Wk58300.jpg">
						</div>
					</a>
				</div>
			</div>
		</div>
		<div data-tpa="YHD_GLOBAl_TOP_CURTAIN" class="wrap index_topbanner"
			style="" id="topCurtain">
			<a title="2.29个护冲锋" href="http://cms.yhd.com/sale/aUXXOXlBBNJ"
				data-ref="1783_31065961_1" target="_blank" class="big_topbanner"
				style="display: none;"> <img
				src="images/ChEi11bScS-AVtczAAFiB5_s0aU62800.jpg" alt="2.29个护冲锋">
			</a> <a title="2.29个护冲锋" href="http://cms.yhd.com/sale/aUXXOXlBBNJ"
				data-ref="1782_31065964_1" target="_blank" class="small_topbanner"
				id="smallTopBanner" style="display: inline-block;"> <img
				src="images/ChEi3FbScgWAEhhRAACqyy6e0Es34300.jpg" alt="2.29个护冲锋">
			</a> <span class="index_topbanner_fold" title="点击-展开">展开<s></s></span>
		</div>
		<div id="site_header" class="wrap hd_header clearfix hd_unify_logo">
			<div data-tpa="YHD_GLOBAl_HEADER_LOGO" class="hd_logo_area fl"
				id="logo_areaID">
				<a data-ref="index_1" href="index.html"><img
					src="images/CgQIz1ZyfEqAaJj8AAAPqOO2cwQ12100.png" alt="1号店"></a>
			</div>
			<div class="hd_head_search">
				<div class="hd_search_form clearfix">
					<div data-type="1" id="hdSearchTab" class="hd_serach_tab">
						<a data-type="1" href="javascript:;">商品</a> <a data-type="2"
							href="javascript:;">店铺</a> <i></i>
					</div>
					<div data-tpa="YHD_GLOBAl_HEADER_SEARCH"
						class="hd_search_wrap clearfix">
						<label style="display: block; color: rgb(102, 102, 102);"
							for="keyword">2016宠爱女人节-美容护理满199减100送100！</label> <input
							type="text" x-webkit-grammar="builtin:translate"
							onwebkitspeechchange="emptySearchBar();" x-webkit-speech=""
							data-autofocus="true" autofocus="true" autocomplete="off"
							maxlength="100" style="color: #333333;"
							url="http://cms.yhd.com/sale/vdfXODXbBvo"
							original="2016宠爱女人节-美容护理满199减100送100！" id="keyword"
							name="keyword" class="hd_input_test">
						<!--搜索提示 begin-->
						<div onmouseover="$('#searchSuggest').show()"
							style="display: none"
							class="hd_search_tips_result hd_search_history"
							id="searchSuggest"></div>
						<button istrkcustom="1"
							onclick="javascript:addTrackPositionToCookie('1','search');searchMeForClick();"
							id="hdSearchBtn" class="hd_search_btn" type="button">搜 索</button>
					</div>
					<button
						onclick="javascript:addTrackPositionToCookie('1','search_shop');"
						style="display: none;" id="hdShopBtn" type="button"
						class="hd_shop_btn">搜本店</button>
					<button
						onclick="javascript:addTrackPositionToCookie('1','search_tuan');"
						style="display: none;" id="hd_search_tuan" type="button"
						class="hd_shop_btn">搜团购</button>
					<button
						onclick="javascript:addTrackPositionToCookie('1','search_haigou');"
						style="display: none;" id="hd_search_haigou" type="button"
						class="hd_hg_btn">搜海购</button>
				</div>
				<p data-specialhotword="{" text":"we are
					发沐类","linkUrl":"http://cms.yhd.com/sale/aUXXOXlBBNJ","style":"0","tc":"ad.0.0.14585-31065967","tce":null,"perTracker":"14585_31065967_1"}" data-tpa="YHD_GLOBAl_HEADER_HOT_SEARCH"
					class="hd_hot_search" id="hotKeywordsShow">
					<a data-ref="14585_31065967_1" data-tce=""
						data-tc="ad.0.0.14585-31065967" target="_blank"
						href="http://cms.yhd.com/sale/aUXXOXlBBNJ" title="we are 发沐类">we
						are 发沐类</a><a
						data-tc="SEARCH.0.KEYWORD.shkw_%E5%8E%8B%E5%8A%9B%E9%94%85.1"
						data-ref="shkw_%E5%8E%8B%E5%8A%9B%E9%94%85"
						href="http://search.yhd.com/c0-0/k%E5%8E%8B%E5%8A%9B%E9%94%85/6/"
						target="_blank" title="压力锅">压力锅</a> <a
						data-tc="SEARCH.0.KEYWORD.shkw_%E9%BE%99%E8%99%BE%E7%89%87.2"
						data-ref="shkw_%E9%BE%99%E8%99%BE%E7%89%87"
						href="http://search.yhd.com/c0-0/k%E9%BE%99%E8%99%BE%E7%89%87/6/"
						target="_blank" title="龙虾片">龙虾片</a> <a
						data-tc="SEARCH.0.KEYWORD.shkw_%E9%BA%A6%E7%89%87.3"
						data-ref="shkw_%E9%BA%A6%E7%89%87"
						href="http://search.yhd.com/c0-0/k%E9%BA%A6%E7%89%87/6/"
						target="_blank" title="麦片">麦片</a> <a
						data-tc="SEARCH.0.KEYWORD.shkw_%E5%A5%B3%E5%A3%AB%E5%86%85%E8%A3%A4.4"
						data-ref="shkw_%E5%A5%B3%E5%A3%AB%E5%86%85%E8%A3%A4"
						href="http://search.yhd.com/c0-0/k%E5%A5%B3%E5%A3%AB%E5%86%85%E8%A3%A4/6/"
						target="_blank" title="女士内裤">女士内裤</a> <a
						data-tc="SEARCH.0.KEYWORD.shkw_%E9%9D%A2%E8%86%9C.5"
						data-ref="shkw_%E9%9D%A2%E8%86%9C"
						href="http://search.yhd.com/c0-0/k%E9%9D%A2%E8%86%9C/6/"
						target="_blank" title="面膜">面膜</a> <a
						data-tc="SEARCH.0.KEYWORD.shkw_%E8%83%B6%E5%8E%9F%E8%9B%8B%E7%99%BD.6"
						data-ref="shkw_%E8%83%B6%E5%8E%9F%E8%9B%8B%E7%99%BD"
						href="http://search.yhd.com/c0-0/k%E8%83%B6%E5%8E%9F%E8%9B%8B%E7%99%BD/6/"
						target="_blank" title="胶原蛋白">胶原蛋白</a> <a
						data-tc="SEARCH.0.KEYWORD.shkw_%E6%BD%98%E5%A9%B7.7"
						data-ref="shkw_%E6%BD%98%E5%A9%B7"
						href="http://search.yhd.com/c0-0/k%E6%BD%98%E5%A9%B7/6/"
						target="_blank" title="潘婷">潘婷</a> <a
						data-tc="SEARCH.0.KEYWORD.shkw_%E8%8B%B9%E6%9E%9C%E9%86%8B.8"
						data-ref="shkw_%E8%8B%B9%E6%9E%9C%E9%86%8B"
						href="http://search.yhd.com/c0-0/k%E8%8B%B9%E6%9E%9C%E9%86%8B/6/"
						target="_blank" title="苹果醋">苹果醋</a> <a
						data-tc="SEARCH.0.KEYWORD.shkw_%E6%8A%BD%E7%BA%B8.9"
						data-ref="shkw_%E6%8A%BD%E7%BA%B8"
						href="http://search.yhd.com/c0-0/k%E6%8A%BD%E7%BA%B8/6/"
						target="_blank" title="抽纸">抽纸</a> <a
						data-tc="SEARCH.0.KEYWORD.shkw_%E4%B9%90%E8%80%8C%E9%9B%85.10"
						data-ref="shkw_%E4%B9%90%E8%80%8C%E9%9B%85"
						href="http://search.yhd.com/c0-0/k%E4%B9%90%E8%80%8C%E9%9B%85/6/"
						target="_blank" title="乐而雅">乐而雅</a>
				</p>
			</div>
			<div id="hdPrismWrap" class="hd_prism_wrap">
				<div data-tpa="YHD_GLOBAl_HEADER_WELFARE" id="hdPrismCoupon"
					class="hd_prism hd_welfare">
					<u id="hdPrismCouponNum" style="display: none;"></u> <a
						class="hd_prism_tab" data-ref="top_prism_coupon" target="_blank"
						href="http://coupon.yhd.com/myCoupon"> <em></em>
						<p>福利</p> <i></i>
					</a>
					<div id="hdPrismCouponList" class="hd_prism_show global_loading">
					</div>
				</div>
				<div data-tpa="YHD_GLOBAl_HEADER_ORDER" id="hdPrismOrder"
					class="hd_prism hd_order">
					<u id="hdPrismOrderNum" style="display: none;"></u> <a
						class="hd_prism_tab" data-ref="top_prism_order" target="_blank"
						href="member_order.html"> <em></em>
						<p>订单查询</p> <i></i>
					</a>
					<div id="hdPrismOrderList" class="hd_prism_show global_loading">
					</div>
				</div>
			</div>
		</div>
		<div class="hd_header_nav" id="headerNav">
			<div class="hd_fixed_bg"></div>
			<div class="wrap clearfix">
				<div id="allSortOuterbox">
					<div data-tpa="YHD_GLOBAl_HEADER_CATEGORY_0"
						class="hd_all_sort_link fl">
						<a class="fl" href="http://www.yhd.com/marketing/allproduct.html"
							data-ref="YHD_TOP_index_5">所有商品分类</a>
					</div>
					<div id="allCategoryHeader" class="hd_allsort_out_box_new">
						<div class="hd_allsort_out">
							<ul id="j_allsort" class="hd_allsort ">
								<li data-mrt="1" data-tpa="YHD_GLOBAl_HEADER_CATEGORY_1"
									data-background="" data-color="hd_sort_color" class="hd_no_pic">
									<h3 class="hd_gray_bg">
										<i class="hd_iconfont"></i> <a href="list.html?/jinkou/"
											target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137555.1"
											data-ref="CatMenu_Search_100000024_137555_104293"
											title="进口食品">进口食品</a>、 <a href="list.html?/c20947-0/"
											target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137555.2"
											data-ref="CatMenu_Search_100000024_137555_104294" title="生鲜">生鲜</a>、
										<a href="list.html?/c21266-0-139058" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137555.3"
											data-ref="CatMenu_Search_100000024_137555_104295" title="海购">海购</a>
									</h3>
									<div class="hd_show_sort global_loading" cindex="1"
										categoryid="137555"></div>
								</li>
								<li data-mrt="1" data-tpa="YHD_GLOBAl_HEADER_CATEGORY_2"
									data-background="" data-color="hd_sort_color" class="hd_no_pic">
									<h3>
										<i class="hd_iconfont"></i> <a
											href="list.html?/c5135-0-81522/" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137778.1"
											data-ref="CatMenu_Search_100000024_137778_105060" title="食品">食品</a>、
										<a href="http://www.yhd.com/ctg/vc3254" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137778.2"
											data-ref="CatMenu_Search_100000024_137778_105061" title="饮料">饮料</a>、
										<a href="list.html?/c5140-0-81016" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137778.3"
											data-ref="CatMenu_Search_100000024_137778_105062" title="酒">酒</a>、
										<a
											href="http://search.yhd.com/c0-0/k%25E5%25B9%25B4%25E8%25B4%25A7/1/"
											target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137778.4"
											data-ref="CatMenu_Search_100000024_137778_105063" title="年货">年货</a>
									</h3>
									<div class="hd_show_sort global_loading" cindex="2"
										categoryid="137778"></div>
								</li>
								<li data-mrt="1" data-tpa="YHD_GLOBAl_HEADER_CATEGORY_3"
									data-background="" data-color="hd_sort_color" class="hd_no_pic">
									<h3 class="hd_gray_bg">
										<i class="hd_iconfont"></i> <a href="list.html?/baby.html"
											target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137454.1"
											data-ref="CatMenu_Search_100000024_137454_107333" title="母婴">母婴</a>、
										<a href="list.html?/c17722-0-87247/" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137454.2"
											data-ref="CatMenu_Search_100000024_137454_107334" title="玩具">玩具</a>、
										<a href="http://kids.yhd.com/" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137454.3"
											data-ref="CatMenu_Search_100000024_137454_107335" title="童装">童装</a>
									</h3>
									<div class="hd_show_sort global_loading" cindex="3"
										categoryid="137454"></div>
								</li>
								<li data-mrt="1" data-tpa="YHD_GLOBAl_HEADER_CATEGORY_4"
									data-background="" data-color="hd_sort_color" class="hd_no_pic">
									<h3>
										<i class="hd_iconfont"></i> <a href="list.html?/jiaju"
											target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137469.1"
											data-ref="CatMenu_Search_100000024_137469_100397"
											title="厨卫清洁">厨卫清洁</a>、 <a href="list.html?/c5176-0/"
											target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137469.2"
											data-ref="CatMenu_Search_100000024_137469_100398" title="纸">纸</a>、
										<a href="list.html?/c5183-0-84560/" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137469.3"
											data-ref="CatMenu_Search_100000024_137469_100399" title="清洁剂">清洁剂</a>
									</h3>
									<div class="hd_show_sort global_loading" cindex="4"
										categoryid="137469"></div>
								</li>
								<li data-mrt="1" data-tpa="YHD_GLOBAl_HEADER_CATEGORY_5"
									data-background="" data-color="hd_sort_color" class="hd_no_pic">
									<h3 class="hd_gray_bg">
										<i class="hd_iconfont"></i> <a
											href="list.html?/c950340-0-83112/" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137470.1"
											data-ref="CatMenu_Search_100000024_137470_104741" title="家居">家居</a>、
										<a href="list.html?/c36939-0-90632/" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137470.2"
											data-ref="CatMenu_Search_100000024_137470_104742" title="家装">家装</a>、
										<a href="list.html?/c950350-0-83479/" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137470.3"
											data-ref="CatMenu_Search_100000024_137470_104743" title="宠物">宠物</a>
									</h3>
									<div class="hd_show_sort global_loading" cindex="5"
										categoryid="137470"></div>
								</li>
								<li data-mrt="1" data-tpa="YHD_GLOBAl_HEADER_CATEGORY_6"
									data-background="" data-color="hd_sort_color" class="hd_no_pic">
									<h3>
										<i class="hd_iconfont"></i> <a href="list.html?/meirong"
											target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137468.1"
											data-ref="CatMenu_Search_100000024_137468_105126"
											title="美妆、个人护理">美妆、个人护理</a>、 <a
											href="http://www.yhd.com/ctg/vc3384" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137468.2"
											data-ref="CatMenu_Search_100000024_137468_105127" title="洗护">洗护</a>
									</h3>
									<div class="hd_show_sort global_loading" cindex="6"
										categoryid="137468"></div>
								</li>
								<li data-mrt="1" data-tpa="YHD_GLOBAl_HEADER_CATEGORY_7"
									data-background="" data-color="hd_sort_color" class="hd_no_pic">
									<h3 class="hd_gray_bg">
										<i class="hd_iconfont"></i> <a href="http://lady.yhd.com/"
											target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_132979.1"
											data-ref="CatMenu_Search_100000024_132979_106661"
											title="女装内衣">女装内衣</a>、 <a href="http://man.yhd.com/"
											target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_132979.2"
											data-ref="CatMenu_Search_100000024_132979_106662" title="男装">男装</a>、
										<a href="list.html?/c32258-0-84328/" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_132979.3"
											data-ref="CatMenu_Search_100000024_132979_106663" title="配饰">配饰</a>
									</h3>
									<div class="hd_show_sort global_loading" cindex="7"
										categoryid="132979"></div>
								</li>
								<li data-mrt="1" data-tpa="YHD_GLOBAl_HEADER_CATEGORY_8"
									data-background="" data-color="hd_sort_color" class="hd_no_pic">
									<h3>
										<i class="hd_iconfont"></i> <a href="http://shoes.yhd.com/"
											target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_132950.1"
											data-ref="CatMenu_Search_100000024_132950_104485" title="鞋靴">鞋靴</a>、
										<a href="http://bag.yhd.com/" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_132950.2"
											data-ref="CatMenu_Search_100000024_132950_104486" title="箱包">箱包</a>、
										<a href="http://sport.yhd.com/" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_132950.3"
											data-ref="CatMenu_Search_100000024_132950_104487"
											title="运动户外">运动户外</a>
									</h3>
									<div class="hd_show_sort global_loading" cindex="8"
										categoryid="132950"></div>
								</li>
								<li data-mrt="1" data-tpa="YHD_GLOBAl_HEADER_CATEGORY_9"
									data-background="" data-color="hd_sort_color" class="hd_no_pic">
									<h3 class="hd_gray_bg">
										<i class="hd_iconfont"></i> <a
											href="list.html?/c23586-0-81436/" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137471.1"
											data-ref="CatMenu_Search_100000024_137471_3597" title="手机">手机</a>、
										<a href="list.html?/c21314-0-85978/" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137471.2"
											data-ref="CatMenu_Search_100000024_137471_3598" title="数码">数码</a>、
										<a href="list.html?/c21392-0-84179" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137471.3"
											data-ref="CatMenu_Search_100000024_137471_3599" title="电脑办公">电脑办公</a>
									</h3>
									<div class="hd_show_sort global_loading" cindex="9"
										categoryid="137471"></div>
								</li>
								<li data-mrt="1" data-tpa="YHD_GLOBAl_HEADER_CATEGORY_10"
									data-background="" data-color="hd_sort_color" class="hd_no_pic">
									<h3>
										<i class="hd_iconfont"></i> <a
											href="list.html?/shenghuodianqi" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137472.1"
											data-ref="CatMenu_Search_100000024_137472_98958"
											title="大家电、小家电">大家电、小家电</a>、 <a href="list.html?/c23926-0-0"
											target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137472.2"
											data-ref="CatMenu_Search_100000024_137472_98959" title="汽车">汽车</a>
									</h3>
									<div class="hd_show_sort global_loading" cindex="10"
										categoryid="137472"></div>
								</li>
								<li data-mrt="1" data-tpa="YHD_GLOBAl_HEADER_CATEGORY_11"
									data-background="" data-color="hd_sort_color" class="hd_no_pic">
									<h3 class="hd_gray_bg">
										<i class="hd_iconfont"></i> <a
											href="list.html?/c8704-0-85100/" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_138066.1"
											data-ref="CatMenu_Search_100000024_138066_100749"
											title="保健滋补">保健滋补</a>、 <a href="list.html?/c36738-0-84975"
											target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_138066.2"
											data-ref="CatMenu_Search_100000024_138066_100750" title="医药">医药</a>、
										<a href="list.html?/c31745-0-85324/" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_138066.3"
											data-ref="CatMenu_Search_100000024_138066_100751" title="成人">成人</a>
									</h3>
									<div class="hd_show_sort global_loading" cindex="11"
										categoryid="138066"></div>
								</li>
								<li data-mrt="1" data-tpa="YHD_GLOBAl_HEADER_CATEGORY_12"
									data-background="" data-color="hd_sort_color" class="hd_no_pic">
									<h3>
										<i class="hd_iconfont"></i> <a
											href="list.html?/c950780-0-82133/" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137992.1"
											data-ref="CatMenu_Search_100000024_137992_106053" title="礼品卡">礼品卡</a>、
										<a href="list.html?/c33095-0-62049" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137992.2"
											data-ref="CatMenu_Search_100000024_137992_106054" title="旅游">旅游</a>、
										<a href="list.html?/c25228-0/" target="_blank"
											data-tc="0.0.TRACKER_CODE.CatMenu_Search_100000024_137992.3"
											data-ref="CatMenu_Search_100000024_137992_106055" title="图书">图书</a>
									</h3>
									<div class="hd_show_sort global_loading" cindex="12"
										categoryid="137992"></div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div data-tpa="YHD_GLOBAl_HEADER_NAV" id="global_menu"
					class="headerNavWrap">
					<ul class="headerNavMain clearfix" id="wideScreenTabShowID">
						<li style="z-index: 799"><a data-tcd="AD.2704_13664428_1"
							class="light" data-ref="2704_13664428_1" href="index.html">首页</a></li>
						<li style="z-index: 798"><a data-tcd="AD.2704_15986209_2"
							data-ref="2704_15986209_2" class="light" hl="" target="_blank"
							href="supermarket.html">自营超市</a></li>
						<li style="z-index: 797"><a data-tcd="AD.2704_13659166_3"
							data-ref="2704_13659166_3" class="light" hl="疯抢" target="_blank"
							href="http://t.yhd.com">1号团</a></li>
						<li style="z-index: 796"><a data-tcd="AD.2704_13659165_4"
							data-ref="2704_13659165_4" hl="" target="_blank"
							href="http://1mall.yhd.com">1号商城</a></li>
						<li style="z-index: 795"><a data-tcd="AD.2704_13852075_5"
							data-ref="2704_13852075_5" hl="" target="_blank"
							href="http://s.yhd.com/">闪购</a></li>
						<li style="z-index: 794"><a data-tcd="AD.2704_15636713_6"
							data-ref="2704_15636713_6" hl="" target="_blank"
							href="list.html?/fresh.html">活色生鲜</a></li>
						<li style="z-index: 793"><a data-tcd="AD.2704_15736041_7"
							data-ref="2704_15736041_7" hl="" target="_blank"
							href="list.html?/yao.html">医药</a></li>
						<li style="z-index: 792"><a data-tcd="AD.2704_30849546_8"
							data-ref="2704_30849546_8" hl="" target="_blank"
							href="list.html?/haigou">1号海购</a><img
							src="images/ChEbu1bNZxCAPBgrAAAEC3SY2LE31000.png" alt="1号海购"
							class="newicon"></li>
						<li style="z-index: 791"><a data-tcd="AD.2704_29070249_9"
							data-ref="2704_29070249_9" hl="" target="_blank"
							href="http://dangdang.yhd.com">当当书城</a></li>
					</ul>
				</div>
				<div class="hd_fix_search clearfix">
					<input type="text" x-webkit-grammar="builtin:translate"
						onwebkitspeechchange="emptySearchBar('#fix_keyword');"
						x-webkit-speech="" data-autofocus="auto" autocomplete="off"
						maxlength="100" style="color: rgb(153, 153, 153);"
						url="http://cms.yhd.com/sale/vdfXODXbBvo"
						original="2016宠爱女人节-美容护理满199减100送100！" id="fix_keyword"
						value="2016宠爱女人节-美容护理满199减100送100！" name="keyword"
						class="keywordInput"> <a class="hd_fix_searchBtn"
						href="javascript:addTrackPositionToCookie('1','search_float_btn');searchMe(jQuery('#fix_keyword'));">搜
						索</a> <a style="display: none;" id="hdShopBtnFix"
						class="hd_fix_searchshop"
						href="javascript:addTrackPositionToCookie('1','search_shop_float_btn');">搜本店</a>
					<!--搜索提示 begin-->
					<div style="display: none;" id="fix_searchSuggest"
						class="hd_search_tips_result hd_search_history"></div>
					<!--搜索提示 end-->
				</div>
				<div data-version="1" data-mrt="1" data-tpa="YHD_GLOBAl_HEADER_CART"
					id="miniCart" class="hd_mini_cart">
					<i class="hd_c_arrow"></i> <u id="in_cart_num"
						class="hd_c_num none" style="display: none;"></u> <a
						data-ref="YHD_TOP_MINICART" href="cart.html" class="hd_prism_cart">
						<em></em>购物车
					</a>
					<div id="showMiniCartDetail" class="hd_cart_show none"
						style="display: none;"></div>
				</div>
				<div class="hd_mobile_wrap">
					<a data-tpa="YHD_GLOBAl_HEADER_RIGHT_AD"
						data-ref="17102_28453146_1" target="_blank"
						href="http://cms.yhd.com/sale/157119" id="globalRightPicsV2">
						<i><img alt="掌上1号店"
							src="images/ChEi2lYI4L-AB-YcAAAgFI-WAls08000.gif"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="layout_main">
		<div id="firstScreen" class="laybox banner_slider clearfix">
			<div data-tpa="YHD_HOME_BAMBOO_SLIDER" class="mod_promo_show"
				id="promo_show" data-ajax-done="1">
				<div lunbobackgroudflag="1" data-init="0" id="index_menu_carousel"
					class="promo_wrapper" data-adjust="1" data-inited="1">
					<ol class="clearfix" id="slider">
						<li data-tpc="1" flag="1" data-bgcolor="#fe4d60"
							style="background: rgb(254, 77, 96) none repeat scroll 0% 0%; position: absolute; z-index: 0; display: none;">
							<a data-tag="13" data-nsf="" data-ajax="0" data-advid="15069"
							data-ref="15069_30915043_1" target="_blank"
							class="big_pic global_loading" data-tc="ad.0.0.15069-30915043.1"
							data-recordtracker="1" title="2016宠爱女人节-全场3.8折起 正式会场"
							href="http://cms.yhd.com/sale/vdfXODXbBvo"> <img
								data-ajax="0" data-advid="15069"
								src="images/CgQIzVbQIE-AHXOAAAHs2Tb76Gw52500.jpg"
								alt="2016宠爱女人节-全场3.8折起 正式会场" id="lunbo_1" data-loaded="1">
						</a>
						</li>
						<li data-tpc="2" flag="2" data-bgcolor="#f64561"
							style="background: rgb(246, 69, 97) none repeat scroll 0% 0%; position: absolute; z-index: 0; display: none;">
							<a data-tag="0" data-nsf="" data-ajax="1" data-advid="15070"
							data-ref="15070_30914823_1" target="_blank"
							class="big_pic global_loading" data-tc="ad.0.0.15070-30914823.1"
							data-recordtracker="1" title="女人节食品综合会场"
							href="http://cms.yhd.com/sale/ykOPohjjvZB"> <img
								data-ajax="1" data-advid="15070"
								wi="images/CgQI01bP556AScixAAFlZ22fQkU10600.jpg"
								si="http://d8.yihaodianimg.com/N10/M00/D5/E4/ChEi2lbP532AZUzBAAD69x820KU86100.jpg"
								src="images/CgQI01bP556AScixAAFlZ22fQkU10600.jpg"
								alt="女人节食品综合会场" id="lunbo_2">
						</a>
						</li>
						<li data-tpc="3" flag="3" data-bgcolor="#ff6c8b"
							style="background: rgb(255, 108, 139) none repeat scroll 0% 0%; position: absolute; z-index: 1;">
							<a data-tag="0" data-nsf="" data-ajax="1" data-advid="15071"
							data-ref="15071_30987081_1" target="_blank"
							class="big_pic global_loading" data-tc="ad.0.0.15071-30987081.1"
							data-recordtracker="1" title="美护女人节正式会场【PC】"
							href="http://cms.yhd.com/sale/mXmqCCktfFJ"> <img
								data-ajax="1" data-advid="15071"
								wi="images/ChEi2lbRisuAQ-CKAAF7FTkO-hs40300.jpg"
								si="http://d6.yihaodianimg.com/N08/M03/E2/E7/ChEi1FbRisGAUVmOAAEA-uyJmJU43500.jpg"
								src="images/ChEi2lbRisuAQ-CKAAF7FTkO-hs40300.jpg"
								alt="美护女人节正式会场【PC】" id="lunbo_3">
						</a>
						</li>
						<li data-tpc="4" flag="4" data-bgcolor="#1ba8ef"
							style="background: rgb(27, 168, 239) none repeat scroll 0% 0%; display: none; position: absolute; z-index: 0;">
							<a data-tag="0" data-nsf="" data-ajax="1" data-advid="15072"
							data-ref="15072_31066091_1" target="_blank"
							class="big_pic global_loading" data-tc="ad.0.0.15072-31066091.1"
							data-recordtracker="1" title="最美女人“机”"
							href="http://cms.yhd.com/sale/YpTqCfCmqpM"> <img
								data-ajax="1" data-advid="15072"
								wi="images/CgQIzlbTBi6AVNNeAAGVHbgIwB894400.jpg"
								si="http://d7.yihaodianimg.com/N05/M02/0F/FB/CgQI01bTBiaAB1LcAAEtKlgR3kQ23000.jpg"
								src="images/CgQIzlbTBi6AVNNeAAGVHbgIwB894400.jpg" alt="最美女人“机”"
								id="lunbo_4">
						</a>
						</li>
						<li data-tpc="5" flag="5" data-bgcolor="#e9eaec"
							style="background: rgb(233, 234, 236) none repeat scroll 0% 0%; display: none; position: absolute; z-index: 0;">
							<a data-tag="0" data-nsf="" data-ajax="1" data-advid="15073"
							data-ref="ad.15073_297_11357_40455_0_0_6_1058413_1_0_6_4_0_0"
							target="_blank" class="big_pic global_loading"
							data-recordtracker="1" title="Rej首焦"
							href="http://tracker.yhd.com/ad-dolphin-go/go?v=WpRBFdXXNcAA8kFMvC-niAQnECdR5dGHGnhyW9mXEaMHXHrroKLaFC8i_pMeqvIGdgn3PIeLao4I16rjSz5qBq0sc1Qie2Pyr29mCedlK3ELzywxdNq17RzqKJife9pq0V1RUMZg4CFIT6mXl2VPZQyZB515fssYQfG3PENI-3lGCIHxo0yez7_bk1fhKjIQmhplBZZv_32fjbEa39Jk0NRASbIjMRMrI439f2Rw9fX-HloDXwtThQex-Qf3TPotoHx8ge4cOrfrJJUKh2w1Cw.."
							data-done="1" data-tc="ad.0.6.11357-40455.1"
							data-tce="ri-15073,pi-297,ai-11357,aii-40455,ci-0,pi2-0,pi3-6,mi-1058413,si-1,pii-0,bt-6,mt-4,kwid-0,smi-0">
								<img data-ajax="1" data-advid="15073"
								src="images/CgQIz1acVBaAUQwlAAN0HNFLGq4267.jpg" alt="Rej首焦"
								id="lunbo_5" data-done="1">
						</a>
						</li>
						<li data-tpc="6" flag="6" data-bgcolor="#3792e1"
							style="background: rgb(55, 146, 225) none repeat scroll 0% 0%; display: none; position: absolute; z-index: 0;">
							<a data-tag="0" data-nsf="" data-ajax="1" data-advid="15074"
							data-ref="15074_30915240_1" target="_blank"
							class="big_pic global_loading" data-tc="ad.0.0.15074-30915240.1"
							data-recordtracker="1" title="小米PK华为"
							href="http://cms.yhd.com/sale/JaaTeReeTXJ"> <img
								data-ajax="1" data-advid="15074"
								wi="images/CgQI0lbQZUiAVEilAAHceq9m-Wk58500.jpg"
								si="http://d8.yihaodianimg.com/N08/M04/E1/A5/ChEi1VbQZUGAV5yGAAFbb5EisYo97700.jpg"
								src="images/CgQI0lbQZUiAVEilAAHceq9m-Wk58500.jpg" alt="小米PK华为"
								id="lunbo_6">
						</a>
						</li>
						<li data-tpc="7" flag="7" data-bgcolor="#9edffd"
							style="background: rgb(158, 223, 253) none repeat scroll 0% 0%; display: none; position: absolute; z-index: 0;">
							<a data-tag="0" data-nsf="" data-ajax="1" data-advid="15075"
							data-ref="15075_30915152_1" target="_blank"
							class="big_pic global_loading" data-tc="ad.0.0.15075-30915152.1"
							data-recordtracker="1" title="春装上新-海量好货2.5折起"
							href="http://cms.yhd.com/sale/eEbXOXXXBmm"> <img
								data-ajax="1" data-advid="15075"
								wi="images/CgQI01bQM3CAWS0DAAIXH2l4xUQ86300.jpg"
								si="http://d8.yihaodianimg.com/N10/M04/E4/99/ChEi3FbQM-qADnRpAAGEP02xwQE83700.jpg"
								src="images/CgQI01bQM3CAWS0DAAIXH2l4xUQ86300.jpg"
								alt="春装上新-海量好货2.5折起" id="lunbo_7">
						</a>
						</li>
						<li data-tpc="8" flag="8" data-bgcolor="#910683"
							style="background: rgb(145, 6, 131) none repeat scroll 0% 0%; display: none; position: absolute; z-index: 0;">
							<a data-tag="0" data-nsf="" data-ajax="1" data-advid="15076"
							data-ref="15076_30914860_1" target="_blank"
							class="big_pic global_loading" data-tc="ad.0.0.15076-30914860.1"
							data-recordtracker="1" title="2.29个护冲锋"
							href="http://cms.yhd.com/sale/aUXXOXlBBNJ"> <img
								data-ajax="1" data-advid="15076"
								wi="images/ChEi1lbQLFaAcFkRAAIjGYkuRYk56500.jpg"
								si="http://d9.yihaodianimg.com/N08/M04/E1/97/ChEi1lbQLE-ASjnjAAGFXKC57NQ05700.jpg"
								src="images/ChEi1lbQLFaAcFkRAAIjGYkuRYk56500.jpg" alt="2.29个护冲锋"
								id="lunbo_8">
						</a>
						</li>
						<li data-tpc="9" flag="9" data-bgcolor="#db0042"
							style="background: rgb(219, 0, 66) none repeat scroll 0% 0%; display: none; position: absolute; z-index: 0;">
							<a data-tag="0" data-nsf="" data-ajax="1" data-advid="17280"
							data-ref="17280_31066096_1" target="_blank"
							class="big_pic global_loading" data-tc="ad.0.0.17280-31066096.1"
							data-recordtracker="1" title="COSME大赏 全球美护TOP list "
							href="http://cms.yhd.com/sale/wLZXODdWByO"> <img
								data-ajax="1" data-advid="17280"
								wi="images/CgQIzlbTDseAbKcbAAH7xVegiGo08600.jpg"
								si="http://d7.yihaodianimg.com/N09/M03/E3/3E/ChEi2FbTDr2AZqcKAAF7S1HZU3o94700.jpg"
								src="images/CgQIzlbTDseAbKcbAAH7xVegiGo08600.jpg"
								alt="COSME大赏 全球美护TOP list " id="lunbo_9">
						</a>
						</li>
					</ol>
				</div>
				<div class="mod_promonum_show">
					<ol style="" id="lunboNum" class="clearfix">
						<li href="javascript:void(0);" flag="1" class=""></li>
						<li href="javascript:void(0);" flag="2" class=""></li>
						<li href="javascript:void(0);" flag="3" class="cur"></li>
						<li href="javascript:void(0);" flag="4"></li>
						<li href="javascript:void(0);" flag="5"></li>
						<li href="javascript:void(0);" flag="6"></li>
						<li href="javascript:void(0);" flag="7"></li>
						<li href="javascript:void(0);" flag="8"></li>
						<li href="javascript:void(0);" flag="9"></li>
					</ol>
				</div>
				<a class="show_next" href="javascript:void(0);"
					style="display: none;"><s></s></a> <a class="show_pre"
					href="javascript:void(0);" style="display: none;"><s></s></a>
			</div>
			<div class="layout_col_b">
				<div data-tpa="YHD_HOME_NOTICE" class="mod_yhd_notice">
					<dl>
						<dt>快讯</dt>
						<dd class="first_red">
							<a data-ref="18645_30914963_0" target="_blank"
								href="http://cms.yhd.com/sale/OyPXODOdBLB"
								data-tc="ad.0.20.18645-30914963.0" title="韩国货，进口界的实惠担当">【<b>逛呗</b>】韩国货，进口界的实惠担当
							</a>
						</dd>
						<dd>
							<a data-ref="18646_30915103_1" target="_blank"
								href="http://cms.yhd.com/sale/AdrqCqLLfdo"
								data-tc="ad.0.0.18646-30915103.1" title="过节啦，给爱你的妈妈送份礼物">【<b>优选</b>】过节啦，给爱你的妈妈送份礼物
							</a>
						</dd>
						<dd>
							<a data-ref="18647_30915106_1" target="_blank"
								href="http://cms.yhd.com/sale/NaePoPvvvEJ"
								data-tc="ad.0.0.18647-30915106.1" title="有颜值，就是辣么任性">【<b>优选</b>】有颜值，就是辣么任性
							</a>
						</dd>
						<dd>
							<a data-ref="18648_30914895_1" target="_blank"
								href="http://club.yhd.com/guide/1250"
								data-tc="ad.0.0.18648-30914895.1" title="鲜花做戒枕，表白妥妥的">【<b>逛呗</b>】鲜花做戒枕，表白妥妥的
							</a>
						</dd>
						<dd>
							<a data-ref="18649_30914946_1" target="_blank"
								href="http://club.yhd.com/guide/1254"
								data-tc="ad.0.0.18649-30914946.1" title="我都给你生猴子了,而你呢?">【<b>逛呗</b>】我都给你生猴子了,而你呢?
							</a>
						</dd>
						<dd>
							<a data-ref="18650_30914950_1" target="_blank"
								href="http://club.yhd.com/guide/1258"
								data-tc="ad.0.0.18650-30914950.1" title="购白菜价美妆，免费领好货">【<b>逛呗</b>】购白菜价美妆，免费领好货
							</a>
						</dd>
					</dl>
				</div>
				<div data-tpa="YHD_HOME_BAMBOO_RIGHT_HUAFEI" id="yhd_zhuanxiang"
					class="mod_vip">
					<div class="mod_vip_list">
						<p class="vip_tit">1号专享</p>
						<ul class="clearfix">
							<li data-index="1"><a target="_blank"
								data-tc="ad.0.0.18651-26051649.1" href="http://try.yhd.com/10/">
									<em class="vip_iconfont"></em>
								<p>0元试用</p>
							</a></li>
							<li data-index="2"><a target="_blank"
								data-tc="ad.0.0.18652-26051654.1"
								href="http://jifen.yhd.com/pointshop/pointIndex.do"> <em
									class="vip_iconfont"></em>
								<p>积分商城</p>
							</a></li>
							<li data-index="3"><a target="_blank"
								data-tc="ad.0.0.18653-26051656.1" href="list.html?/lipinka">
									<em class="vip_iconfont"></em>
								<p>礼品卡</p>
							</a></li>
							<li data-index="4" class="tab_link"><a target="_blank"
								data-tc="ad.0.0.18654-26051672.1" href="http://life.yhd.com/">
									<em class="vip_iconfont"></em>
								<p>充值中心</p>
							</a></li>
							<li data-index="5" class="tab_link"><a target="_blank"
								data-tc="ad.0.0.18655-26051673.1"
								href="http://yhd.bm724.com/forms/index.html"> <em
									class="vip_iconfont"></em>
								<p>页游点卡</p>
							</a></li>
							<li data-index="6" class="tab_link"><a target="_blank"
								data-tc="ad.0.0.18656-26051659.1"
								href="https://8.yhd.com/cfweb/home.action"> <em
									class="vip_iconfont"></em>
								<p>1号钱包</p>
							</a></li>
						</ul>
					</div>
					<div id="index_digit" class="mod_iframe_app"
						style="top: 190px; display: none;">
						<div class="tabs clearfix">
							<a target="_blank" data-tc="ad.0.0.18654-26051672.1"
								href="http://life.yhd.com/">充值中心</a> <a target="_blank"
								data-tc="ad.0.0.18655-26051673.1"
								href="http://yhd.bm724.com/forms/index.html">页游点卡</a> <a
								target="_blank" data-tc="ad.0.0.18656-26051659.1"
								href="https://8.yhd.com/cfweb/home.action">1号钱包</a>
						</div>
						<div class="tabs_content">
							<div
								data-url="http://image.yihaodianimg.com/virtual-web_static/pc_iframe_virtual_charge.html"
								class="content_detail phone_recharge none"></div>
							<div data-url="http://yhd.bm724.com/forms/yhd_mini_new.html"
								class="content_detail game_card none"></div>
							<div class="content_detail yhd_wallet none">
								<a target="_blank" data-tc="ad.0.0.18657-27801916.1"
									href="https://8.yhd.com/cfweb/home.action"><p
										style="padding-bottom: 5px; padding-top: 5px">收益日结，收益赚high</p>
									<img alt="收益日结，收益赚high"
									src="images/CgQI01aUv_2AGUr4AABEoRKVHVw56100.jpg"> </a>
							</div>
						</div>
					</div>
					<!--关闭按钮-->
					<a class="colse_btn" href="javascript:;" style="display: none;">×</a>
				</div>
			</div>
		</div>
		<!--精选活动 begin -->
		<div data-tpa="INDEX2_SELECTION_ACTIVITY"
			class="mod_selection_activity wrap">
			<div class="selection_activity_list">
				<ul id="selectActivity" class="clearfix" style="left: -1200px;">
					<li class="clearfix"><a data-tce="bhstr-null,bhcat-5134"
						data-tc="ad.84.0.18660-30915196" target="_blank"
						data-recordtracker="1" class="clearfix"
						href="http://cms.yhd.com/sale/UEaOssDBBFJ"><div
								class="activ_left no_boder_left">
								<p>洁柔-吸水新星</p>
								<b>柔柔的女王</b><b>满<em>199</em>减<em>80</em></b>
							</div>
							<img height="150" width="120" alt="柔柔的女王"
							src="images/ChEbu1bQTJ2AF532AAASCeCHiyI94400.jpg"></a><a
						data-tce="bhstr-null,bhcat-5117" data-tc="ad.84.0.18660-30816869"
						target="_blank" data-recordtracker="1" class="clearfix"
						href="http://cms.yhd.com/sale/FJFOlDllbUJ"><div
								class="activ_left">
								<p>母婴童装VIP</p>
								<b>每周嗨购</b><b><em>0</em>元抢不停</b>
							</div>
							<img height="150" width="120" alt="每周嗨购"
							src="images/CgQI01bML3WAJAD7AAAb1MAPKEw94000.jpg"></a><a
						data-tce="bhstr-null,bhcat-21306" data-tc="ad.84.0.18660-30816669"
						target="_blank" data-recordtracker="1" class="clearfix"
						href="http://cms.yhd.com/sale/jcjQgcQiICC"><div
								class="activ_left">
								<p>小米手机旗舰店</p>
								<b>高性能新品</b><b>红米<em>3</em>现货
								</b>
							</div>
							<img height="150" width="120" alt="高性能新品"
							src="images/ChEi21bLzDWAK_n6AAATGuHrMrc94800.jpg"></a><a
						data-tce="bhstr-null,bhcat-21306" data-tc="ad.84.0.18660-30816875"
						target="_blank" data-recordtracker="1" class="clearfix"
						href="http://cms.yhd.com/sale/gugcrQQIunj"><div
								class="activ_left">
								<p>智能设备</p>
								<b>4步提高生活质量</b><b>全场<em>9.9</em>元起购
								</b>
							</div>
							<img height="150" width="120" alt="4步提高生活质量"
							src="images/CgQIz1bMMIuAMvzxAAARwAyGmds25200.jpg"></a></li>
					<li class="clearfix"><a data-tce="bhstr-null,bhcat-8644"
						data-tc="ad.84.0.18660-30914745" target="_blank"
						data-recordtracker="1" class="clearfix"
						href="http://cms.yhd.com/sale/frvPooaPjto"><div
								class="activ_left no_boder_left">
								<p>1号洋气女人节 2.29-3.8</p>
								<b>1号洋气女人节 2.29-3.8</b><b><em>1</em>号洋气女人节<em> 2.29</em>-<em>3.8</em></b>
							</div>
							<img height="150" width="120" alt="1号洋气女人节  2.29-3.8"
							src="images/CgQIzlbPtliADPKxAAARhH_ny1M09900.jpg"></a><a
						data-tce="bhstr-null,bhcat-36144" data-tc="ad.84.0.18660-30816709"
						target="_blank" data-recordtracker="1" class="clearfix"
						href="http://cms.yhd.com/sale/jCjCJtmzqjC"><div
								class="activ_left">
								<p>茶叶冲饮中心</p>
								<b>健康早餐</b><b><em>1</em>元起</b>
							</div>
							<img height="150" width="120" alt="健康早餐"
							src="images/ChEi1lbL-fmAbWM3AAAnfq6Lm9w35500.jpg"></a><a
						data-tce="bhstr-null,bhcat-5117" data-tc="ad.84.0.18660-30816866"
						target="_blank" data-recordtracker="1" class="clearfix"
						href="http://cms.yhd.com/sale/qfAPoPhKvdr"><div
								class="activ_left">
								<p>宝贝压岁钱</p>
								<b>年后任性购</b><b>全场<em>1</em>元起
								</b>
							</div>
							<img height="150" width="120" alt="年后任性购"
							src="images/CgQIzlbMLySAT8bmAAAeWLI6k5A77900.jpg"></a><a
						data-tce="bhstr-null,bhcat-5009" data-tc="ad.84.0.18660-30685993"
						target="_blank" data-recordtracker="1" class="clearfix"
						href="http://cms.yhd.com/sale/dtlXWsFWBqo"><div
								class="activ_left">
								<p>遇见更好的自己</p>
								<b>正品美护</b><b>狂欢<em>4</em>折起
								</b>
							</div>
							<img height="150" width="120" alt="正品美护"
							src="images/CgQI0lbG-J2AeGNuAAAdUmgkFpU79300.jpg"></a></li>
					<li class="clearfix"><a data-tce="bhstr-null,bhcat-5134"
						data-tc="ad.84.0.18660-30915196" target="_blank"
						data-recordtracker="1" class="clearfix"
						href="http://cms.yhd.com/sale/UEaOssDBBFJ"><div
								class="activ_left no_boder_left">
								<p>洁柔-吸水新星</p>
								<b>柔柔的女王</b><b>满<em>199</em>减<em>80</em></b>
							</div>
							<img height="150" width="120" alt="柔柔的女王"
							src="images/ChEbu1bQTJ2AF532AAASCeCHiyI94400.jpg"></a><a
						data-tce="bhstr-null,bhcat-5117" data-tc="ad.84.0.18660-30816869"
						target="_blank" data-recordtracker="1" class="clearfix"
						href="http://cms.yhd.com/sale/FJFOlDllbUJ"><div
								class="activ_left">
								<p>母婴童装VIP</p>
								<b>每周嗨购</b><b><em>0</em>元抢不停</b>
							</div>
							<img height="150" width="120" alt="每周嗨购"
							src="images/CgQI01bML3WAJAD7AAAb1MAPKEw94000.jpg"></a><a
						data-tce="bhstr-null,bhcat-21306" data-tc="ad.84.0.18660-30816669"
						target="_blank" data-recordtracker="1" class="clearfix"
						href="http://cms.yhd.com/sale/jcjQgcQiICC"><div
								class="activ_left">
								<p>小米手机旗舰店</p>
								<b>高性能新品</b><b>红米<em>3</em>现货
								</b>
							</div>
							<img height="150" width="120" alt="高性能新品"
							src="images/ChEi21bLzDWAK_n6AAATGuHrMrc94800.jpg"></a><a
						data-tce="bhstr-null,bhcat-21306" data-tc="ad.84.0.18660-30816875"
						target="_blank" data-recordtracker="1" class="clearfix"
						href="http://cms.yhd.com/sale/gugcrQQIunj"><div
								class="activ_left">
								<p>智能设备</p>
								<b>4步提高生活质量</b><b>全场<em>9.9</em>元起购
								</b>
							</div>
							<img height="150" width="120" alt="4步提高生活质量"
							src="images/CgQIz1bMMIuAMvzxAAARwAyGmds25200.jpg"></a></li>
					<li class="clearfix"><a data-tce="bhstr-null,bhcat-8644"
						data-tc="ad.84.0.18660-30914745" target="_blank"
						data-recordtracker="1" class="clearfix"
						href="http://cms.yhd.com/sale/frvPooaPjto"><div
								class="activ_left no_boder_left">
								<p>1号洋气女人节 2.29-3.8</p>
								<b>1号洋气女人节 2.29-3.8</b><b><em>1</em>号洋气女人节<em> 2.29</em>-<em>3.8</em></b>
							</div>
							<img height="150" width="120" alt="1号洋气女人节  2.29-3.8"
							src="images/CgQIzlbPtliADPKxAAARhH_ny1M09900.jpg"></a><a
						data-tce="bhstr-null,bhcat-36144" data-tc="ad.84.0.18660-30816709"
						target="_blank" data-recordtracker="1" class="clearfix"
						href="http://cms.yhd.com/sale/jCjCJtmzqjC"><div
								class="activ_left">
								<p>茶叶冲饮中心</p>
								<b>健康早餐</b><b><em>1</em>元起</b>
							</div>
							<img height="150" width="120" alt="健康早餐"
							src="images/ChEi1lbL-fmAbWM3AAAnfq6Lm9w35500.jpg"></a><a
						data-tce="bhstr-null,bhcat-5117" data-tc="ad.84.0.18660-30816866"
						target="_blank" data-recordtracker="1" class="clearfix"
						href="http://cms.yhd.com/sale/qfAPoPhKvdr"><div
								class="activ_left">
								<p>宝贝压岁钱</p>
								<b>年后任性购</b><b>全场<em>1</em>元起
								</b>
							</div>
							<img height="150" width="120" alt="年后任性购"
							src="images/CgQIzlbMLySAT8bmAAAeWLI6k5A77900.jpg"></a><a
						data-tce="bhstr-null,bhcat-5009" data-tc="ad.84.0.18660-30685993"
						target="_blank" data-recordtracker="1" class="clearfix"
						href="http://cms.yhd.com/sale/dtlXWsFWBqo"><div
								class="activ_left">
								<p>遇见更好的自己</p>
								<b>正品美护</b><b>狂欢<em>4</em>折起
								</b>
							</div>
							<img height="150" width="120" alt="正品美护"
							src="images/CgQI0lbG-J2AeGNuAAAdUmgkFpU79300.jpg"></a></li>
				</ul>
			</div>
			<a style="display: none;" class="prev_btn" href="javascript:;"></a> <a
				style="display: none;" class="next_btn" href="javascript:;"></a>
		</div>
		<div data-tpa="YHD_HOME_CHUCHUANG_BANNER" data-singlemodule="1"
			id="chuchuang_banner_top" class="index_column_ad">
			<a data-nsf="" data-ajax="0" data-advid="17101"
				data-ref="17101_30914826_1" data-exttrackurl=""
				data-tc="ad.0.0.17101-30914826.1" data-recordtracker="1"
				target="_blank" href="http://shop.yhd.com/cms-bm-21-2551329.html">
				<img data-ajax="0" data-advid="17101"
				wideimg="images/CgQIzlbP6V6AdUCjAADVQQz1S6M27200.jpg"
				shortimg="http://d8.yihaodianimg.com/N09/M05/E0/0A/ChEi11bP6VeAb9_7AADog-8Yx9Y85100.jpg"
				src="images/CgQIzlbP6V6AdUCjAADVQQz1S6M27200.jpg" alt="宝洁品牌日">
			</a>
		</div>
		<div data-tpa="YHD_HOME_CHUCHUANG" id="index_chuchuang"
			class="wrap floor_ad_wrap mod_index_ad_floor global_loading">
			<div class="big_pic">
				<a data-nsf="" data-ajax="0" data-advid="15114"
					data-ref="15114_30914866_1" data-exttrackurl=""
					data-tc="ad.0.0.15114-30914866.1" data-recordtracker="1"
					target="_blank" href="http://cms.yhd.com/sale/aUXXOXlBBNJ"> <img
					data-ajax="0" data-advid="15114"
					src="images/CgQI0lbP-kmACathAACKZ-vVbvg75100.jpg" alt="2.29个护冲锋">
				</a>
			</div>
			<div class="small_pic border_right">
				<div class="up">
					<a data-nsf="" data-ajax="0" data-advid="15115"
						data-ref="15115_31066109_1" data-exttrackurl=""
						data-tc="ad.0.0.15115-31066109.1" data-recordtracker="1"
						target="_blank" href="http://jk.yhd.com/?tab=3&subTab=3"> <strong>进口
							• 海购</strong> <em>COSME大赏</em> <img data-ajax="0" data-advid="15115"
						src="images/ChEi1FbTGSeANH3HAABLV9Z7Kwk26200.jpg" alt="COSME大赏"
						style="margin-left: 0px;" class="ad_floor_item_img">
					</a>
				</div>
				<div class="down">
					<a data-nsf="" data-ajax="0" data-advid="15116"
						data-ref="15116_31066086_1" data-exttrackurl=""
						data-tc="ad.0.0.15116-31066086.1" data-recordtracker="1"
						target="_blank" href="http://cms.yhd.com/sale/ldtPohvhjdo"> <strong>特产中国·美丽食谱</strong>
						<em>义乌红糖39元/罐</em> <img data-ajax="0" data-advid="15116"
						src="images/CgQI01bTADqAfQf5AABNsHKHkOU25700.jpg" alt="特产中国三八丽人节"
						style="margin-left: 0px;" class="ad_floor_item_img">
					</a>
				</div>
			</div>
			<div class="small_pic">
				<div class="up">
					<a data-nsf="" data-ajax="0" data-advid="15117"
						data-ref="15117_23859921_1" data-exttrackurl=""
						data-tc="ad.0.0.15117-23859921.1" data-recordtracker="1"
						target="_blank" href="http://cms.yhd.com/sale/OZZTpwYYnBO"> <strong>低价天天抢</strong>
						<em>新人首单更有多重好礼</em> <img data-ajax="0" data-advid="15117"
						src="images/CgQIzVa1WgKASgWzAAAkeq__Hnk20500.jpg" alt="新人首单更有多重好礼"
						style="margin-left: 0px;" class="ad_floor_item_img">
					</a>
				</div>
				<div class="down">
					<a data-nsf="" data-ajax="0" data-advid="15118"
						data-ref="15118_30914775_1" data-exttrackurl=""
						data-tc="ad.0.0.15118-30914775.1" data-recordtracker="1"
						target="_blank" href="http://xinpin.yhd.com/"> <strong>新品上市
							0元试用</strong> <em>多芬 千份0元抢</em> <img data-ajax="0" data-advid="15118"
						src="images/ChEi2FbP0X6ADc00AAAOpoKnoa025500.jpg" alt="多芬 千份0元抢"
						style="margin-left: 0px;" class="ad_floor_item_img">
					</a>
				</div>
			</div>
			<div class="big_pic">
				<a data-nsf="" data-ajax="0" data-advid="15119"
					data-ref="15119_30915035_1" data-exttrackurl=""
					data-tc="ad.0.0.15119-30915035.1" data-recordtracker="1"
					target="_blank" href="http://s.yhd.com/list/32682"> <img
					data-ajax="0" data-advid="15119"
					src="images/ChEi11bQNdaAXzUgAABulHmB8hA09700.jpg" alt="笛莎公主出游季"
					style="margin-left: 0px;" class="ad_floor_item_img">
				</a>
			</div>
			<div class="small_pic">
				<div class="up">
					<a data-nsf="" data-ajax="0" data-advid="15120"
						data-ref="15120_28995377_1" data-exttrackurl=""
						data-tc="ad.0.0.15120-28995377.1" data-recordtracker="1"
						target="_blank" href="http://3c.yhd.com/"> <strong>手机家电城</strong>
						<em>iPhone6s64G玫瑰金</em> <img data-ajax="0" data-advid="15120"
						src="images/CgQI0lbOckKAJ-mXAAAeNF9P2Ok62900.jpg"
						alt="iPhone6s64G玫瑰金" style="margin-left: 0px;"
						class="ad_floor_item_img">
					</a>
				</div>
				<div class="down">
					<a data-nsf="" data-ajax="0" data-advid="15121"
						data-ref="15121_30783817_1" data-exttrackurl=""
						data-tc="ad.0.0.15121-30783817.1" data-recordtracker="1"
						target="_blank" href="http://shop.yhd.com/m-201949.html"> <strong>山姆会员商店</strong>
						<em>会员优品 薏米1kg</em> <img data-ajax="0" data-advid="15121"
						src="images/ChEbvFbKw1GAFFQGAAA13vn7T5U10900.jpg" alt="山姆会员商店"
						style="margin-left: 0px;" class="ad_floor_item_img">
					</a>
				</div>
			</div>
		</div>
		<div data-singlemodule="1" data-tracktype="initShow"
			data-tpa="YHD_HOME_LOUCENG_BANNER" id="loucengBanner"
			class="index_column_ad">
			<a data-nsf="1" data-ajax="1" data-advid="16149"
				data-ref="ad.16149_298_11377_42246_0_0_6_1058236_1_0_6_4_0_0"
				title="38节美护主会场" target="_blank"
				href="http://tracker.yhd.com/ad-dolphin-go/go?v=WpRBFdXXNcAA8kFMvC-niIl-tjd5WsQIILl2hE6K3SYHXHrroKLaFC8i_pMeqvIGdgn3PIeLao4I16rjSz5qBq0sc1Qie2Pyr29mCedlK3ELzywxdNq17RzqKJife9pq0V1RUMZg4CFIT6mXl2VPZQyZB515fssYQfG3PENI-3nDrLiqONMOpqF8tUH0Ku8VnGBzKukJ5H7trgqaC1VuSXWpZQoOZP0pBwt_1pnlkzLEoQQ6YxxiVBer6k6BJTeOoHx8ge4cOrfrJJUKh2w1Cw.."
				data-recordtracker="1" data-tc="ad.0.6.11377-42246.1"
				data-tce="ri-16149,pi-298,ai-11377,aii-42246,ci-0,pi2-0,pi3-6,mi-1058236,si-1,pii-0,bt-6,mt-4,kwid-0,smi-0"
				data-done="1"> <img
				wideimg="images/ChEbvFbPzbWAXiLnAAFfaNUn7KU20400.jpg"
				shortimg="images/ChEbvFbPzbWAXiLnAAFfaNUn7KU20400.jpg" data-ajax="1"
				data-advid="16149" src="images/ChEbvFbPzbWAXiLnAAFfaNUn7KU20400.jpg"
				alt="38节美护主会场" data-done="1">
			</a>
		</div>
		<div id="needLazyLoad">
			<div style="height: 414px" lazyload_textarea="textareaFloorSx"
				data-tpa="YHD_NHOME_SXHG" id="floorSx"
				class="wrap mod_index_floor clearfix">
				<textarea id="textareaFloorSx" autocomplete="off"
					style="display: none;"><div
						class="mod_floor_title shengxian">
<div data-tpc="1">
<a title="进口" class="bt" target="_blank" href="list.html?/jinkou"
								data-tc="ad.0.0.16072-14649577.1" data-ref="16072_14649577_1">进口</a>
<em class="dian"> • </em>
<a title="海购" class="bt" target="_blank" href="list.html?/haigou"
								data-tc="ad.0.0.16072-25206008.2" data-ref="16072_25206008_2">海购</a>
<a title="进口蜂蜜全球集市" class="floor_subtitle_wrap" target="_blank"
								href="list.html?/themeBuy.do?themeId=1039"
								data-tc="ad.0.0.18661-27870002.1" data-ref="18661_27870002_1">
<em></em>
<div class="floor_subtitle">
进口蜂蜜全球集市
<i></i>
<span>进口蜂蜜全球集市</span>
</div>
</a>
</div>
<div class="keyword" data-tpc="2">
<a title="进口酒" target="_blank"
								href="http://search.yhd.com/c0-0-0/b/a-s1-v4-p1-price-d0-f0da-m1-rt0-pid-mid0-k%E8%BF%9B%E5%8F%A3%E9%85%92/"
								data-tc="ad.0.0.16074-25508396.1" data-ref="16074_25508396_1">进口酒</a>|
<a title="进口冲饮" target="_blank"
								href="list.html?/c22841-0-81174/b/a-s1-v4-p1-price-d0-f0d-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16074-25508400.2" data-ref="16074_25508400_2">进口冲饮</a>|
<a title="进口直采" target="_blank"
								href="http://search.yhd.com/c0-0-0/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k1%E5%8F%B7%E7%9B%B4%E9%87%87/?ti=YYXM"
								data-tc="ad.0.0.16074-25508402.3" data-ref="16074_25508402_3">进口直采</a>|
<a title="海购箱包" target="_blank"
								href="http://search.yhd.com/c0-0-0/b/a-s1-v0-p1-price-d0-f0c-m1-rt0-pid-mid0-k海购箱包/"
								data-tc="ad.0.0.16074-25508417.4" data-ref="16074_25508417_4">海购箱包</a>|
<a title="海购电器" target="_blank"
								href="http://search.yhd.com/c0-0-0/b/a-s1-v0-p1-price-d0-f0c-m1-rt0-pid-mid0-k%E6%B5%B7%E8%B4%AD%E7%94%B5%E5%99%A8"
								data-tc="ad.0.0.16074-25508403.5" data-ref="16074_25508403_5">海购电器</a>|
<a title="海购母婴" target="_blank"
								href="http://search.yhd.com/c0-0-0/b/a-s1-v4-p1-price-d0-f0dc-m1-rt0-pid-mid0-k%E6%AF%8D%E5%A9%B4"
								data-tc="ad.0.0.16074-25508419.6" data-ref="16074_25508419_6">海购母婴</a>
</div>
</div>
<div class="a_con">
<ul class="tag clearfix" data-tpc="3">
<a title="进口牛奶" target="_blank" href="list.html?/c22881-0-81279/"
								data-tc="ad.0.0.16073-20517543.1" data-ref="16073_20517543_1">进口牛奶</a>
<a title="进口饼干" target="_blank" href="list.html?/c22887-0-81291/"
								data-tc="ad.0.0.16073-20518226.2" data-ref="16073_20518226_2">进口饼干</a>
<a title="进口巧克力" target="_blank"
								href="list.html?/c33827-0-81091/b/a-s1-v0-p1-price-d0-f0-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16073-20518816.3" data-ref="16073_20518816_3">进口巧克力</a>
<a title="进口坚果" target="_blank"
								href="list.html?/c33797-0-81144/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16073-20519107.4" data-ref="16073_20519107_4">进口坚果</a>
<a title="进口咖啡" target="_blank"
								href="list.html?/c22846-0-81182/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16073-20519283.5" data-ref="16073_20519283_5">进口咖啡</a>
<a title="进口粮油" target="_blank" href="list.html?/c22865-0-89427/"
								data-tc="ad.0.0.16073-20519284.6" data-ref="16073_20519284_6">进口粮油</a>
</ul>
<a title="进口粮油品类中心" data-tpc="4" data-advId="17622" data-ajax="1"
							class="pic" target="_blank"
							href="http://cms.yhd.com/sale/eFbQiuEEuXJ" data-recordTracker="1"
							data-tc="ad.0.0.17622-30685985.1" data-ref="17622_30685985_1"
							data-nsf="">
<h3 class="shengxian_font">进口粮油品类中心</h3>
<h4>进口粮油品类中心</h4>
<img width="190" height="160"
							original="http://d9.yihaodianimg.com/N08/M08/D6/6D/ChEi1lbG9UWAX-T8AAA1HX43pDA98600.jpg"
							data-advId="17622" data-ajax="1" src="images/blank.gif"
							alt="进口粮油品类中心">
</a>
</div>
<div class="b_con">
<div class="slider_index_ad" id="sxSliderIndexAd">
<ul class="img_box clearfix" data-tpc="5">
<a title="1号洋气女人节 2.29-3.8" data-advId="16076" data-ajax="0"
									data-ctpa="INDEX2_FLOORSX_LUNBO_PIC1" target="_blank"
									href="http://cms.yhd.com/sale/frvPooaPjto"
									data-recordTracker="1" data-tc="ad.0.0.16076-30914813.1"
									data-ref="16076_30914813_1" data-nsf="">
<img width="330" height="360" data-advId="16076" data-ajax="0"
									src="images/blank.gif"
									original="http://d6.yihaodianimg.com/N08/M00/E0/5A/ChEi1FbP5IaAHRZ6AACefjpl6vs27500.jpg"
									alt="1号洋气女人节 2.29-3.8">
</a>
<a title="1号酒会所" data-advId="16077" data-ajax="1"
									data-ctpa="INDEX2_FLOORSX_LUNBO_PIC2" target="_blank"
									href="http://cms.yhd.com/sale/rtoovvAUjtr"
									data-recordTracker="1" data-tc="ad.0.0.16077-29138476.1"
									data-ref="16077_29138476_1" data-nsf="">
<img width="330" height="360" data-advId="16077" data-ajax="1"
									src="images/blank.gif"
									original="http://d9.yihaodianimg.com/N06/M0A/A4/5B/CgQIzlbLxXKAZ3eJAABd1sYWwsI41000.jpg"
									alt="1号酒会所">
</a>
<a title="进口牛奶品类中心" data-advId="16078" data-ajax="0"
									data-ctpa="INDEX2_FLOORSX_LUNBO_PIC3" target="_blank"
									href="http://cms.yhd.com/sale/WsgBsBFbuj"
									data-recordTracker="1" data-tc="ad.0.0.16078-23537060.1"
									data-ref="16078_23537060_1" data-nsf="">
<img width="330" height="360" data-advId="16078" data-ajax="0"
									src="images/blank.gif"
									original="http://d9.yihaodianimg.com/N08/M09/E0/69/ChEi1VbP5ymAeV0QAABfSJamQ_o34700.jpg"
									alt="进口牛奶品类中心">
</a>
</ul>
<ul class="trig_box">
<li class="clearfix">
<a class="cur"><span></span></a>
<a><span></span></a>
<a><span></span></a>
</li>
</ul>
</div>
</div>
<div class="c_con" data-tpc="6">
<a class="pic" title="美味零嘴3折起" target="_blank"
							href="http://cms.yhd.com/sale/gWnyEHiInj" data-recordTracker="1"
							data-tc="ad.0.0.17623-30433166.1" data-ref="17623_30433166_1">
<h3>进口休闲零食中心</h3>
<h4>美味零嘴3折起</h4>
<img width="190" height="110"
							original="http://d9.yihaodianimg.com/N07/M05/EA/BD/ChEbvFbNvfSAHdcoAAAcVF0mmso01300.jpg"
							src="images/blank.gif" alt="进口休闲零食中心">
</a>
<a class="pic" title="进口休闲零嘴" target="_blank"
							href="http://search.yhd.com/c0-0/k%25E8%2587%25AA%25E8%2590%25A5%25E6%25B8%2585%25E4%25BB%2593%25E7%2589%25B9%25E5%258D%2596/1/"
							data-recordTracker="1" data-tc="ad.0.0.17624-30783780.1"
							data-ref="17624_30783780_1">
<h3>买1送1</h3>
<h4>进口休闲零嘴</h4>
<img width="190" height="110"
							original="http://d8.yihaodianimg.com/N10/M06/E0/45/ChEi3FbNvquAP6uxAAAOkLMG6z013800.jpg"
							src="images/blank.gif" alt="买1送1">
</a>
</div>
<div class="d_con" data-tpc="7">
<a class="pic" title="范爷同款 78元两支" target="_blank"
							href="http://cms.yhd.com/sale/wLZXODdWByO" data-recordTracker="1"
							data-tc="ad.0.0.17625-30914892.1" data-ref="17625_30914892_1">
<h3>COSME大赏 美护TOP榜</h3>
<h4>范爷同款 78元两支</h4>
<img width="190" height="290"
							original="http://d9.yihaodianimg.com/N08/M01/E3/FA/ChEi1lbTGzmAePe6AABH24jvTVk37900.jpg"
							src="images/blank.gif" alt="COSME大赏 美护TOP榜">
</a>
</div>
<div class="e_con" data-tpc="8">
<a class="pic" title="爆款来袭 1元秒杀" target="_blank"
							href="http://t.yhd.com/detailBrand/27164" data-recordTracker="1"
							data-tc="ad.0.0.17626-30365506.1" data-ref="17626_30365506_1">
<h3>自营美护英雄团</h3>
<h4>爆款来袭 1元秒杀</h4>
<img width="190" height="110"
							original="http://d6.yihaodianimg.com/N08/M01/CF/32/ChEi1FbAIimAAK6bAAA1jkhD5tM49800.jpg"
							src="images/blank.gif" alt="自营美护英雄团">
</a>
<a class="pic" title="春季亮眼 Kipling来袭" target="_blank"
							href="http://s.yhd.com/channel/2" data-recordTracker="1"
							data-tc="ad.0.0.17627-30882129.1" data-ref="17627_30882129_1">
<h3>全球闪购</h3>
<h4>春季亮眼 Kipling来袭</h4>
<img width="190" height="110"
							original="http://d6.yihaodianimg.com/N07/M02/60/98/CgQI0FbOz4qAK-cZAAA1irTWQVU54400.jpg"
							src="images/blank.gif" alt="全球闪购">
</a>
</div>
</textarea>
			</div>
			<!-- 通用楼层begin -->
			<div style="height: 414px" id="floorCustom_INDEX2_FLOOR7"
				data-tpa="YHD_NHOME_INDEX2_FLOOR7"
				class="wrap mod_index_floor clearfix"
				lazyload_textarea="textareaFloorCustom_INDEX2_FLOOR7">
				<textarea id="textareaFloorCustom_INDEX2_FLOOR7" autocomplete="off"
					style="display: none;"><div
						class="mod_floor_title shengxian">
<div data-tpc="1">
<a title="活色生鲜" class="bt" target="_blank" href="list.html?/fresh.html"
								data-tc="ad.0.0.16155-13764280.1" data-ref="16155_13764280_1">活色生鲜 </a>
<a title="帮妈妈挑新鲜食材" class="floor_subtitle_wrap" target="_blank"
								href="list.html?/themeBuy.do?themeId=1031"
								data-tc="ad.0.0.18666-27870003.1" data-ref="18666_27870003_1">
<em></em>
<div class="floor_subtitle">
帮妈妈挑新鲜食材
<i></i>
<span>帮妈妈挑新鲜食材</span>
</div>
</a>
</div>
<div class="keyword" data-tpc="2">
<a title="票券礼券" target="_blank" href="list.html?/c5166-0-81738/"
								data-tc="ad.0.0.16157-27396142.1" data-ref="16157_27396142_1">票券礼券</a>|
<a title="肉类熏腊" target="_blank" href="http://www.yhd.com/ctg/s2/vc4080"
								data-tc="ad.0.0.16157-27396143.2" data-ref="16157_27396143_2">肉类熏腊</a>|
<a title="速冻食品" target="_blank"
								href="list.html?/c33624-0-81855/b/a-s1-v4-p1-price-d0-f0d-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16157-27396144.3" data-ref="16157_27396144_3">速冻食品</a>|
<a title="低温乳品" target="_blank"
								href="list.html?/c33620-0-120355/b/a-s1-v4-p1-price-d0-f0d-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16157-27396146.4" data-ref="16157_27396146_4">低温乳品</a>|
<a title="熟食方便菜" target="_blank"
								href="list.html?/c33625-0-81864/b/a-s1-v0-p1-price-d0-f0d-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16157-27396147.5" data-ref="16157_27396147_5">熟食方便菜</a>|
<a title="烘焙甜品" target="_blank"
								href="list.html?/c36979-0-87690/b/a-s1-v4-p1-price-d0-f0d-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16157-27396148.6" data-ref="16157_27396148_6">烘焙甜品</a>
</div>
</div>
<div class="a_con">
<ul class="tag clearfix" data-tpc="3">
<a title="1号生鲜" target="_blank"
								href="list.html?/c20947-0-81806/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16156-27396136.1" data-ref="16156_27396136_1">1号生鲜</a>
<a title="新鲜水果" target="_blank" href="list.html?/c33618-0-98836"
								data-tc="ad.0.0.16156-27396135.2" data-ref="16156_27396135_2">新鲜水果</a>
<a title="车厘子" target="_blank"
								href="http://search.yhd.com/c0-0/k%25E8%25BD%25A6%25E5%258E%2598%25E5%25AD%2590/3/"
								data-tc="ad.0.0.16156-27396137.3" data-ref="16156_27396137_3">车厘子</a>
<a title="品质牛肉" target="_blank"
								href="list.html?/c33657-0-120348/b/a-s1-v0-p1-price-d0-f0d-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16156-27396139.4" data-ref="16156_27396139_4">品质牛肉</a>
<a title="海鲜水产" target="_blank"
								href="list.html?/c33623-0-81841/b/a-s1-v4-p1-price-d0-f0d-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16156-27396140.5" data-ref="16156_27396140_5">海鲜水产</a>
<a title="鲜活蛋类" target="_blank"
								href="list.html?/c33656-0-81834/b/a-s1-v0-p1-price-d0-f0d-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16156-27396141.6" data-ref="16156_27396141_6">鲜活蛋类</a>
</ul>
<a class="pic" title="活色生鲜 每天尝鲜" data-tpc="4" data-advId="17598"
							data-ajax="1" class="pic" target="_blank"
							href="http://cms.yhd.com/sale/139834" data-recordTracker="1"
							data-tc="ad.0.0.17598-29826282.1" data-ref="17598_29826282_1"
							data-nsf="">
<h3 class="shengxian_font">活色生鲜 每天尝鲜</h3>
<h4>活色生鲜 每天尝鲜</h4>
<img width="190" height="180"
							original="http://d8.yihaodianimg.com/N06/M0B/98/18/CgQIzVa1ZKaAZVb5AABLBvoLeec89500.jpg"
							data-advId="17598" data-ajax="1" src="images/blank.gif"
							alt="活色生鲜 每天尝鲜">
</a>
</div>
<div class="b_con">
<div class="slider_index_ad" id="customSliderIndexAd_INDEX2_FLOOR7">
<ul class="img_box clearfix" data-tpc="5">
<a title="女人节第二波2.29-3.8" data-advId="16159" data-ajax="0"
									data-ctpa="INDEX2_FLOOR7_LUNBO_PIC1" target="_blank"
									href="http://cms.yhd.com/sale/ZHycQQIguLO"
									data-recordTracker="1" data-tc="ad.0.0.16159-30849463.1"
									data-ref="16159_30849463_1" data-nsf="">
<img width="330" height="360" data-advId="16159" data-ajax="0"
									src="images/blank.gif"
									original="http://d8.yihaodianimg.com/N10/M07/E4/65/ChEi3FbQG6SASnePAAB2fL5wuYU36000.jpg"
									alt="女人节第二波2.29-3.8">
</a>
<a title="" data-advId="16160" data-ajax="1"
									data-ctpa="INDEX2_FLOOR7_LUNBO_PIC2" target="_blank"
									href="404.html" data-recordTracker="1" data-ref="" data-nsf="1">
<img width="330" height="360" data-advId="16160" data-ajax="1"
									src="images/blank.gif" original="images/blank.gif" alt="">
</a>
<a title="生鲜-以肉换肉，年后甩肉" data-advId="16161" data-ajax="0"
									data-ctpa="INDEX2_FLOOR7_LUNBO_PIC3" target="_blank"
									href="http://cms.yhd.com/sale/xoqPohaPjdo"
									data-recordTracker="1" data-tc="ad.0.0.16161-31066016.1"
									data-ref="16161_31066016_1" data-nsf="">
<img width="330" height="360" data-advId="16161" data-ajax="0"
									src="images/blank.gif"
									original="http://d8.yihaodianimg.com/N10/M09/E6/85/ChEi21bSvlOALRadAABywpKqLhE61800.jpg"
									alt="生鲜-以肉换肉，年后甩肉">
</a>
</ul>
<ul class="trig_box">
<li class="clearfix">
<a class="cur"><span></span></a>
<a><span></span></a>
<a><span></span></a>
</li>
</ul>
</div>
</div>
<div class="c_con" data-tpc="6">
<a class="pic" title="健康生活" target="_blank"
							href="http://cms.yhd.com/sale/wLPqCffkqyO" data-recordTracker="1"
							data-tc="ad.0.0.17599-30915056.1" data-ref="17599_30915056_1">
<h3>健康生活</h3>
<h4>满两份减5元</h4>
<img width="190" height="110"
							original="http://d7.yihaodianimg.com/N06/M00/AA/FB/CgQIzVbQIt-APFEtAAAvqNkDYTk45400.jpg"
							src="images/blank.gif" alt="健康生活">
</a>
<a class="pic" title="生鲜-美丽女人节" target="_blank"
							href="http://cms.yhd.com/sale/QjCXODdlBsC" data-recordTracker="1"
							data-tc="ad.0.0.17600-30915032.1" data-ref="17600_30915032_1">
<h3>生鲜-美丽女人节</h3>
<h4>3折起包邮</h4>
<img width="190" height="110"
							original="http://d6.yihaodianimg.com/N10/M06/D6/D2/ChEi2lbQH0CAA1GwAAAd4PU_QDE78100.jpg"
							src="images/blank.gif" alt="生鲜-美丽女人节">
</a>
</div>
<div class="d_con" data-tpc="7">
<a class="pic" title="生鲜-生鲜排行榜" target="_blank"
							href="http://cms.yhd.com/sale/NXECfMJzfbJ" data-recordTracker="1"
							data-tc="ad.0.0.17601-30365381.1" data-ref="17601_30365381_1">
<h3>生鲜排行榜 精品热销</h3>
<h4>衢州椪柑10斤 19.8元</h4>
<img width="190" height="290"
							original="http://d9.yihaodianimg.com/N06/M05/A6/53/CgQIzVbNdLGAOVZjAABuuUH7W2039500.jpg"
							src="images/blank.gif" alt="生鲜排行榜 精品热销">
</a>
</div>
<div class="e_con" data-tpc="8">
<a class="pic" title="庖丁解牛" target="_blank"
							href="http://cms.yhd.com/sale/CQuXWdFFBQC" data-recordTracker="1"
							data-tc="ad.0.0.17602-30751248.1" data-ref="17602_30751248_1">
<h3>全牛盛宴</h3>
<h4>1元换购</h4>
<img width="190" height="110"
							original="http://d9.yihaodianimg.com/N06/M05/A1/FE/CgQIzlbJIqKALudaAAArOz2nxiQ09000.jpg"
							src="images/blank.gif" alt="全牛盛宴">
</a>
<a class="pic" title="开学季" target="_blank"
							href="http://cms.yhd.com/sale/ywkqCfJzfZO" data-recordTracker="1"
							data-tc="ad.0.0.17603-30915082.1" data-ref="17603_30915082_1">
<h3>2016开学季</h3>
<h4>全场满二减5元</h4>
<img width="190" height="110"
							original="http://d6.yihaodianimg.com/N07/M04/62/FB/CgQI0FbQJ56AbZQfAAA26rz-e2g84200.jpg"
							src="images/blank.gif" alt="2016开学季">
</a>
</div>
</textarea>
			</div>
			<!--通用楼层 end -->
			<div style="height: 414px" lazyload_textarea="textareaFloorFood"
				data-tpa="YHD_NHOME_FOOD" id="floorFood"
				class="wrap mod_index_floor clearfix">
				<textarea id="textareaFloorFood" autocomplete="off"
					style="display: none;"><div
						class="mod_floor_title shipin">
<div data-tpc="1">
<a title="食品饮料" class="bt" target="_blank"
								href="http://www.yhd.com/ctg/s2/c36144-0-0/"
								data-tc="ad.0.0.16082-13661936.1" data-ref="16082_13661936_1">食品饮料</a>
<a title="春季养肝茶，喝起！" class="floor_subtitle_wrap" target="_blank"
								href="list.html?/themeBuy.do?themeId=1066"
								data-tc="ad.0.0.18662-27870005.1" data-ref="18662_27870005_1">
<em></em>
<div class="floor_subtitle">
春季养肝茶，喝起！
<i></i>
<span>春季养肝茶，喝起！</span>
</div>
</a>
</div>
<div class="keyword" data-tpc="2">
<a title="咖啡" target="_blank" href="list.html?/c24729-0"
								data-tc="ad.0.0.16084-22234189.1" data-ref="16084_22234189_1">咖啡</a>|
<a title="糖果巧克力" target="_blank"
								href="list.html?/c5143-0-81523/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k/?ti=A18T"
								data-tc="ad.0.0.16084-20527913.2" data-ref="16084_20527913_2">糖果巧克力</a>|
<a title="厨房调料" target="_blank" href="list.html?/c5154-0-81632/?ti=XF1V"
								data-tc="ad.0.0.16084-20527916.3" data-ref="16084_20527916_3">厨房调料</a>|
<a title="方便速食" target="_blank" href="list.html?/c5156-0-81677/?ti=M1MP"
								data-tc="ad.0.0.16084-23917677.4" data-ref="16084_23917677_4">方便速食</a>|
<a title="冲饮谷物" target="_blank"
								href="list.html?/c5148-0-81041/b/a100564-s1-v4-p1-price-d0-f0d-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16084-24168023.5" data-ref="16084_24168023_5">冲饮谷物</a>|
<a title="饮料饮品" target="_blank" href="list.html?/c5138-0"
								data-tc="ad.0.0.16084-22234190.6" data-ref="16084_22234190_6">饮料饮品</a>
</div>
</div>
<div class="a_con">
<ul class="tag clearfix" data-tpc="3">
<a title="饼干糕点" target="_blank" href="list.html?/c24728-0"
								data-tc="ad.0.0.16083-22234183.1" data-ref="16083_22234183_1">饼干糕点</a>
<a title="休闲零食" target="_blank" href="list.html?/c5146-0"
								data-tc="ad.0.0.16083-22234184.2" data-ref="16083_22234184_2">休闲零食</a>
<a title="粮油干货" target="_blank" href="list.html?/c5162-0"
								data-tc="ad.0.0.16083-22234185.3" data-ref="16083_22234185_3">粮油干货</a>
<a title="国产名酒" target="_blank"
								href="list.html?/c5140-0-81016/b/a100564-s1-v4-p1-price-d0-f0d-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16083-26387427.4" data-ref="16083_26387427_4">国产名酒</a>
<a title="牛奶乳品" target="_blank" href="list.html?/c5404-0"
								data-tc="ad.0.0.16083-22234187.5" data-ref="16083_22234187_5">牛奶乳品</a>
<a title="保健滋补" target="_blank" href="list.html?/c8704-0"
								data-tc="ad.0.0.16083-22234188.6" data-ref="16083_22234188_6">保健滋补</a>
</ul>
<a title="低价抢购" class="pic" data-tpc="4" target="_blank"
							href="http://cms.yhd.com/sale/ZwwBBddbOO" data-advId="17616"
							data-nsf="" data-ajax="1" data-recordTracker="1"
							data-tc="ad.0.0.17616-30882151.1" data-ref="17616_30882151_1">
<h3 class="shengxian_font">饮料乳品中心</h3>
<h4>低价抢购</h4>
<img width="190" height="180"
							original="http://d9.yihaodianimg.com/N05/M01/0B/50/CgQI01bO12-AOI4-AAA1YyafzSA08400.jpg"
							data-advId="17616" data-ajax="1" src="images/blank.gif"
							alt="饮料乳品中心">
</a>
</div>
<div class="b_con">
<div class="slider_index_ad" id="foodSliderIndexAd">
<ul class="img_box clearfix" data-tpc="5">
<a href="http://cms.yhd.com/sale/ThGwTwTwTTM" data-advId="16086"
									data-ajax="0" data-ctpa="INDEX2_FLOORFOOD_LUNBO_PIC1"
									data-recordTracker="1" data-tc="ad.0.0.16086-30915007.1"
									data-ref="16086_30915007_1" title="女王vs小公举" target="_blank"
									data-nsf="">
<img width="330" height="360" data-advId="16086" data-ajax="0"
									alt="女王vs小公举" src="images/blank.gif"
									original="http://d8.yihaodianimg.com/N08/M02/E1/72/ChEi1lbQHF2AfHEAAABafC0OB4s27800.jpg" />
</a>
<a href="http://cms.yhd.com/sale/jCjCJtmzqjC" data-advId="16087"
									data-ajax="1" data-ctpa="INDEX2_FLOORFOOD_LUNBO_PIC2"
									data-recordTracker="1" data-tc="ad.0.0.16087-30882167.1"
									data-ref="16087_30882167_1" title="茶叶冲饮中心" target="_blank"
									data-nsf="">
<img width="330" height="360" data-advId="16087" data-ajax="1"
									alt="茶叶冲饮中心" src="images/blank.gif"
									original="http://d7.yihaodianimg.com/N06/M0B/A9/C1/CgQIzlbO5zSAAU9WAACJFob-CME65800.jpg" />
</a>
<a href="http://cms.yhd.com/sale/QgjcQcHcuQC" data-advId="16088"
									data-ajax="0" data-ctpa="INDEX2_FLOORFOOD_LUNBO_PIC3"
									data-recordTracker="1" data-tc="ad.0.0.16088-30816810.1"
									data-ref="16088_30816810_1" title="大牌游园会" target="_blank"
									data-nsf="">
<img width="330" height="360" data-advId="16088" data-ajax="0"
									alt="零食促销抢不停" src="images/blank.gif"
									original="http://d6.yihaodianimg.com/N06/M02/51/42/ChEbu1bMFd2AY3J2AAA7bmomu8Q97900.jpg" />
</a>
</ul>
<ul class="trig_box">
<li class="clearfix">
<a class="cur"><span></span></a>
<a><span></span></a>
<a><span></span></a>
</li>
</ul>
</div>
</div>
<div class="c_con" data-tpc="6">
<a class="pic" title="" target="_blank" href="404.html"
							data-advId="17617" data-nsf="1" data-ajax="2"
							data-recordTracker="1" data-ref="">
<h3></h3>
<h4></h4>
<img width="190" height="110" original="images/blank.gif"
							src="images/blank.gif" data-advId="17617" data-nsf="1"
							data-ajax="2" alt="">
</a>
<a class="pic" title="南国冲饮旗舰店" target="_blank"
							href="http://shop.yhd.com/m-140788.html" data-advId="17618"
							data-nsf="" data-ajax="2" data-recordTracker="1"
							data-tc="ad.0.0.17618-26521004.1" data-ref="17618_26521004_1">
<h3>南国</h3>
<h4>冬日暖饮 海南风味</h4>
<img width="190" height="110"
							original="http://d8.yihaodianimg.com/N06/M05/F8/25/ChEbu1ZwwY2AOh5HAAAuKh3N_Bo24600.jpg"
							src="images/blank.gif" data-advId="17618" data-nsf=""
							data-ajax="2" alt="南国">
</a>
</div>
<div class="d_con" data-tpc="7">
<a class="pic" title="3.8折起 满138减38" target="_blank"
							href="http://cms.yhd.com/sale/vdfcQcQIuvo" data-advId="17619"
							data-nsf="" data-ajax="0" data-recordTracker="1"
							data-tc="ad.0.0.17619-31066014.1" data-ref="17619_31066014_1">
<h3>美食3.8折起 满138减38</h3>
<h4>“惠吃” 更美丽</h4>
<img width="190" height="290"
							original="http://d7.yihaodianimg.com/N09/M09/E3/2C/ChEi2VbSuzGAaSBlAABa58is1-I60200.jpg"
							src="images/blank.gif" data-advId="17619" data-nsf=""
							data-ajax="0" alt="美食3.8折起 满138减38">
</a>
</div>
<div class="e_con" data-tpc="8">
<a class="pic" title="酒水饮料" target="_blank" href="list.html?/c36144-0"
							data-advId="17620" data-nsf="" data-ajax="2"
							data-recordTracker="1" data-tc="ad.0.0.17620-24167967.1"
							data-ref="17620_24167967_1">
<h3>酒水饮料</h3>
<h4>底价疯抢</h4>
<img width="190" height="110"
							original="http://d7.yihaodianimg.com/N07/M0B/CC/36/ChEbvFXMBV6AMfRmAAA4KdSqAhU55000.jpg"
							src="images/blank.gif" data-advId="17620" data-nsf=""
							data-ajax="2" alt="酒水饮料">
</a>
<a class="pic" title="送礼必备" target="_blank"
							href="list.html?/p/c8704-b-a-s1-v0-p1-price-d0-pid-pt1322668-pl1441717-m0-k"
							data-advId="17621" data-nsf="" data-ajax="2"
							data-recordTracker="1" data-tc="ad.0.0.17621-30915065.1"
							data-ref="17621_30915065_1">
<h3>把爱给妈妈</h3>
<h4>满138减38</h4>
<img width="190" height="110"
							original="http://d7.yihaodianimg.com/N07/M07/0B/99/CgQIz1bQJCWAaVQQAAAVfncxEBU60400.jpg"
							data-advId="17621" data-nsf="" data-ajax="2"
							src="images/blank.gif" alt="把爱给妈妈">
</a>
</div>
</textarea>
			</div>
			<div style="height: 594px" lazyload_textarea="textareaFloorXh"
				data-tpa="YHD-NHOME-XHLC" id="floorXh"
				class="wrap mod_index_floor clearfix">
				<textarea id="textareaFloorXh" autocomplete="off"
					style="display: none;"><div class="mod_floor_title xihu">
<div data-tpc="1">
<a title="个护厨卫" class="bt" target="_blank" href="http://market.yhd.com"
								data-tc="ad.0.0.16092-15985564.1" data-ref="16092_15985564_1">个护厨卫</a>
<a title="厨房油污有绝招" class="floor_subtitle_wrap" target="_blank"
								href="list.html?/themeBuy.do?themeId=908"
								data-tc="ad.0.0.18663-27870006.1" data-ref="18663_27870006_1">
<em></em>
<div class="floor_subtitle">
厨房油污有绝招
<i></i>
<span>厨房油污有绝招</span>
</div>
</a>
</div>
<div class="keyword" data-tpc="2">
<a title="身体护理" target="_blank" href="list.html?/c7685-0-0/"
								data-tc="ad.0.0.16094-25508411.1" data-ref="16094_25508411_1">身体护理</a>|
<a title="洗发护发" target="_blank" href="list.html?/c5064-0-0/"
								data-tc="ad.0.0.16094-25508410.2" data-ref="16094_25508410_2">洗发护发</a>|
<a title="清洁工具" target="_blank"
								href="http://search.yhd.com/c0-0/k%25E6%25B8%2585%25E6%25B4%2581%25E5%25B7%25A5%25E5%2585%25B7/1/"
								data-tc="ad.0.0.16094-26856697.3" data-ref="16094_26856697_3">清洁工具</a>|
<a title="纸品" target="_blank"
								href="list.html?/c5176-0-84546/b/a-s1-v4-p1-price-d0-f0d-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16094-21056859.4" data-ref="16094_21056859_4">纸品</a>|
<a title="洗衣液" target="_blank"
								href="http://search.yhd.com/c0-0/k%25E6%25B4%2597%25E8%25A1%25A3%25E6%25B6%25B2/1/"
								data-tc="ad.0.0.16094-22714702.5" data-ref="16094_22714702_5">洗衣液</a>|
<a title="威猛先生" target="_blank"
								href="http://search.yhd.com/c0-0/k%25E5%25A8%2581%25E7%258C%259B%25E5%2585%2588%25E7%2594%259F/1/"
								data-tc="ad.0.0.16094-30498789.6" data-ref="16094_30498789_6">威猛先生</a>
</div>
</div>
<div class="a_con">
<ul class="tag clearfix" data-tpc="3">
<a title="洗发护发" target="_blank"
								href="http://search.yhd.com/c0-0/k%25E6%25B4%2597%25E5%258F%2591%25E6%258A%25A4%25E5%258F%2591/1/"
								data-tc="ad.0.0.16093-22391697.1" data-ref="16093_22391697_1">洗发护发</a>
<a title="护手霜" target="_blank"
								href="list.html?/c7688-0-84494/b/a-s1-v0-p1-price-d0-f0d-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16093-22391701.2" data-ref="16093_22391701_2">护手霜</a>
<a title="牙膏牙刷" target="_blank" href="list.html?/c5072-0-0/"
								data-tc="ad.0.0.16093-22391700.3" data-ref="16093_22391700_3">牙膏牙刷</a>
<a title="纸品湿巾" target="_blank"
								href="list.html?/c5176-0-84546/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16093-22391937.4" data-ref="16093_22391937_4">纸品湿巾</a>
<a title="衣物洗护" target="_blank"
								href="list.html?/c29561-0-84640/?ti=9VKD"
								data-tc="ad.0.0.16093-29482909.5" data-ref="16093_29482909_5">衣物洗护</a>
<a title="家庭清洁" target="_blank"
								href="list.html?/c5183-0-84560/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16093-22391941.6" data-ref="16093_22391941_6">家庭清洁</a>
</ul>
<a title="遇见更美的自己" data-tpc="4" data-advId="17576" data-ajax="1"
							class="pic" target="_blank"
							href="http://cms.yhd.com/sale/dtlXWsFWBqo" data-recordTracker="1"
							data-tc="ad.0.20.17576-29483045.0" data-ref="17576_29483045_0"
							data-nsf="">
<h3 class="xihu_font">0元购</h3>
<h4>遇见更美的自己</h4>
<img width="190" height="180"
							original="http://d6.yihaodianimg.com/N07/M09/4C/66/CgQI0FavBhSACV2QAAA9E-K4MEM39300.jpg"
							data-advId="17576" data-ajax="1" src="images/blank.gif" alt="0元购">
</a>
</div>
<div class="b_con">
<div class="slider_index_ad" id="xhSliderIndexAd">
<ul class="img_box clearfix" data-tpc="5">
<a title="2.29-3.08厨卫满199减80" data-advId="16097" data-ajax="0"
									data-ctpa="INDEX2_FLOORXH_LUNBO_PIC1" target="_blank"
									href="http://cms.yhd.com/sale/vAdcQQcQIlo"
									data-recordTracker="1" data-tc="ad.0.0.16097-30987116.1"
									data-ref="16097_30987116_1" data-nsf="">
<img width="330" height="360" data-advId="16097" data-ajax="0"
									src="images/blank.gif"
									original="http://d7.yihaodianimg.com/N05/M08/0F/3A/CgQI01bRrnqAJ8kTAACP0xw2wUg15400.jpg"
									alt="2.29-3.08厨卫满199减80">
</a>
<a title="一次性用品" data-advId="16098" data-ajax="1"
									data-ctpa="INDEX2_FLOORXH_LUNBO_PIC2" target="_blank"
									href="http://search.yhd.com/c0-0-0/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k%E4%B8%80%E6%AC%A1%E6%80%A7%E7%94%A8%E5%93%81/?ti=9185"
									data-recordTracker="1" data-tc="ad.0.0.16098-29482836.1"
									data-ref="16098_29482836_1" data-nsf="">
<img width="330" height="360" data-advId="16098" data-ajax="1"
									src="images/blank.gif"
									original="http://d9.yihaodianimg.com/N08/M0B/CA/49/ChEi1lautlaAO5m_AAB81NsEvZU51600.jpg"
									alt="一次性用品">
</a>
<a title="早春“洗”聚“惠”" data-advId="16099" data-ajax="0"
									data-ctpa="INDEX2_FLOORXH_LUNBO_PIC3" target="_blank"
									href="http://cms.yhd.com/sale/nuscQQyIusC"
									data-recordTracker="1" data-tc="ad.0.0.16099-30783898.1"
									data-ref="16099_30783898_1" data-nsf="">
<img width="330" height="360" data-advId="16099" data-ajax="0"
									src="images/blank.gif"
									original="http://d8.yihaodianimg.com/N10/M04/CE/DD/ChEi2lbK3eaAELsaAACfZf7vw_445900.jpg"
									alt="早春“洗”聚“惠”">
</a>
</ul>
<ul class="trig_box">
<li class="clearfix">
<a class="cur"><span></span></a>
<a><span></span></a>
<a><span></span></a>
</li>
</ul>
</div>
</div>
<div class="c_con" data-tpc="6">
<a class="pic" title="1号纸品大团" target="_blank"
							href="http://t.yhd.com/detailBrand/27391" data-recordTracker="1"
							data-tc="ad.0.0.17579-30915199.1" data-ref="17579_30915199_1">
<h3>1号纸品大团</h3>
<h4>爆款3折起</h4>
<img width="190" height="110"
							original="http://d7.yihaodianimg.com/N05/M00/0D/CE/CgQI01bQToWAFRgjAAAfz_L6nAc08700.jpg"
							src="images/blank.gif" alt="1号纸品大团">
</a>
<a class="pic" title="换季衣物洗护团" target="_blank"
							href="http://t.yhd.com/detailBrand/27120?randNum=0.808626765667039"
							data-recordTracker="1" data-tc="ad.0.0.17580-30751272.1"
							data-ref="17580_30751272_1">
<h3>换季衣物洗护团</h3>
<h4>爆品2.8折起</h4>
<img width="190" height="110"
							original="http://d9.yihaodianimg.com/N10/M00/C6/0E/ChEi3Famz0yAXF5WAAAdbf1u1Z015600.jpg"
							src="images/blank.gif" alt="换季衣物洗护团">
</a>
</div>
<div class="d_con" data-tpc="7">
<a class="pic" title="满199减100送100元礼包" target="_blank"
							href="http://cms.yhd.com/sale/mXmqCCktfFJ" data-recordTracker="1"
							data-tc="ad.0.0.17582-30987087.1" data-ref="17582_30987087_1">
<h3>专属妳的宠爱</h3>
<h4>满199减100送100元礼包</h4>
<img width="190" height="290"
							original="http://d9.yihaodianimg.com/N08/M01/E2/EE/ChEi1VbRjZ6ANL-cAABFYqDO8r822700.jpg"
							src="images/blank.gif" alt="专属妳的宠爱">
</a>
</div>
<div class="e_con" data-tpc="8">
<a class="pic" title="满199减100送100元礼包" target="_blank"
							href="list.html?/p/c5072-b-a-s1-v0-p1-price-d0-pid-pt1331147-pl1451847-m0-k"
							data-tc="ad.0.0.17584-30987090.1" data-ref="17584_30987090_1">
<h3>为口腔细节加分</h3>
<h4>满199减100送100元礼包</h4>
<img width="190" height="110"
							original="http://d9.yihaodianimg.com/N06/M00/73/20/CgQIzVaR7jqAGlCiAAAuc8LwPbc88700.jpg"
							src="images/blank.gif" alt="为口腔细节加分">
</a>
</div>
<div class="f_con clearfix" data-tpc="9">
<div class="f1">
<a title="爆款五折起" data-tpc="4" data-advId="17577" data-ajax="1"
								class="pic" target="_blank"
								href="http://search.yhd.com/c0-0-0/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k%E5%AE%B6%E5%BA%AD%E6%B8%85%E6%B4%81/"
								data-recordTracker="1" data-tc="ad.0.20.17577-29482911.0"
								data-ref="17577_29482911_0" data-nsf="">
<h3 class="xihu_font">厨卫清洁</h3>
<h4>爆款五折起</h4>
<img width="190" height="110"
								original="http://d9.yihaodianimg.com/N08/M04/CA/57/ChEi1FauyDeAH38mAAATU-U7r2847000.jpg"
								data-advId="17577" data-ajax="1" src="images/blank.gif"
								alt="厨卫清洁">
</a>
</div>
<div class="f2">
<a class="pic2 clearfix" href="http://cms.yhd.com/sale/mJewTwRSnFJ"
								title="低价来袭" data-tc="ad.0.20.17578-30646743.0"
								data-ref="17578_30646743_0" target="_blank">
<div class="fl">
<h3>焕新妆 美丽新起点 </h3>
<h4>1元领</h4>
<em class="sale_txt">1元领</em>
</div>
<img width="130" height="166" alt="焕新妆 美丽新起点 " src="images/blank.gif"
								original="http://d7.yihaodianimg.com/N09/M0B/D3/4F/ChEi2FbFfmiALHFzAAAquyLrwOI00600.jpg" />
</a>
</div>
<div class="f3">
<a class="pic" title="家庭清洁2.5折起" target="_blank"
								href="http://t.yhd.com/detailBrand/27409?randNum=0.6323526342558813"
								data-recordTracker="1" data-tc="ad.0.0.17581-30915203.1"
								data-ref="17581_30915203_1">
<h3>家庭清洁2.5折起</h3>
<h4>爱家天天消毒</h4>
<img width="190" height="110"
								original="http://d9.yihaodianimg.com/N10/M04/D7/14/ChEi2lbQT5iAH5BZAAAdbf1u1Z022800.jpg"
								src="images/blank.gif" alt="家庭清洁2.5折起">
</a>
</div>
<div class="f4">
<a class="pic" title="满199减100送100元礼包" target="_blank"
								href="list.html?/p/c5077-b-a-s1-v0-p1-price-d0-pid-pt1331147-pl1451847-m0-k"
								data-recordTracker="1" data-tc="ad.0.0.17583-30987091.1"
								data-ref="17583_30987091_1">
<h3>呵护妳心 </h3>
<h4>满199减100送100元礼包</h4>
<img width="190" height="110"
								original="http://d6.yihaodianimg.com/N08/M06/CA/86/ChEi1lau16qAI8G-AAAlOj6L7zo50700.jpg"
								src="images/blank.gif" alt="呵护妳心 ">
</a>
</div>
<div class="f5">
<a class="pic" title="满199减100送100元礼包" target="_blank"
								href="list.html?/p/c5064-b-a-s1-v0-p1-price-d0-pid-pt1331147-pl1451847-m0-k"
								data-recordTracker="1" data-tc="ad.0.0.17585-30987092.1"
								data-ref="17585_30987092_1">
<h3>丝丝宠爱</h3>
<h4>满199减100送100元礼包</h4>
<img width="190" height="290"
								original="http://d6.yihaodianimg.com/N05/M00/D5/D1/CgQI01aR7zmAMkewAABUGJRxPy878700.jpg"
								src="images/blank.gif" alt="丝丝宠爱">
</a>
</div>
</div>
</textarea>
			</div>
			<!-- 通用楼层begin -->
			<div style="height: 414px" id="floorCustom_INDEX2_FLOOR8"
				data-tpa="YHD_NHOME_INDEX2_FLOOR8"
				class="wrap mod_index_floor clearfix"
				lazyload_textarea="textareaFloorCustom_INDEX2_FLOOR8">
				<textarea id="textareaFloorCustom_INDEX2_FLOOR8" autocomplete="off"
					style="display: none;"><div
						class="mod_floor_title shengxian">
<div data-tpc="1">
<a title="母婴玩具" class="bt" target="_blank" href="list.html?/baby.html"
								data-tc="ad.0.0.16165-18898997.1" data-ref="16165_18898997_1">母婴玩具 </a>
<a title="宝贝辅食怎么加？" class="floor_subtitle_wrap" target="_blank"
								href="list.html?/themeBuy.do?themeId=881"
								data-tc="ad.0.0.18667-27870008.1" data-ref="18667_27870008_1">
<em></em>
<div class="floor_subtitle">
宝贝辅食怎么加？
<i></i>
<span>宝贝辅食怎么加？</span>
</div>
</a>
</div>
<div class="keyword" data-tpc="2">
<a title="宝宝洗衣液" target="_blank"
								href="list.html?/c35251-0-87052/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k/?ti=R31Q"
								data-tc="ad.0.0.16167-27464369.1" data-ref="16167_27464369_1">宝宝洗衣液</a>|
<a title="营养米粉" target="_blank"
								href="list.html?/c0-0-120307/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16167-27464370.2" data-ref="16167_27464370_2">营养米粉</a>|
<a title="奶瓶奶嘴" target="_blank"
								href="http://search.yhd.com/c5989-0-86983/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k%E5%A5%B6%E7%93%B6%E5%A5%B6%E5%98%B4%7C/?ti=PJAN"
								data-tc="ad.0.0.16167-27464372.3" data-ref="16167_27464372_3">奶瓶奶嘴</a>|
<a title="儿童玩具" target="_blank"
								href="list.html?/c17722-0-87247/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k/?ti=W12J"
								data-tc="ad.0.0.16167-27464375.4" data-ref="16167_27464375_4">儿童玩具</a>|
<a title="拉拉裤" target="_blank"
								href="list.html?/c31265-0-87070/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k/?ti=4AUG"
								data-tc="ad.0.0.16167-27464377.5" data-ref="16167_27464377_5">拉拉裤</a>|
<a title="营养品" target="_blank"
								href="list.html?/c5988-0-86972/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k/?ti=Y7A4"
								data-tc="ad.0.0.16167-27464380.6" data-ref="16167_27464380_6">营养品</a>
</div>
</div>
<div class="a_con">
<ul class="tag clearfix" data-tpc="3">
<a title="洗护清洁" target="_blank"
								href="list.html?/c5996-0-87018/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k/?ti=UGFT"
								data-tc="ad.0.0.16166-27328375.1" data-ref="16166_27328375_1">洗护清洁</a>
<a title="哺育喂养" target="_blank"
								href="list.html?/c5989-0-86983/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k/?ti=QR4S"
								data-tc="ad.0.0.16166-27328377.2" data-ref="16166_27328377_2">哺育喂养</a>
<a title="孕妈用品" target="_blank"
								href="list.html?/c6014-0-87073/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k/?ti=DZPQ"
								data-tc="ad.0.0.16166-27328379.3" data-ref="16166_27328379_3">孕妈用品</a>
<a title="儿童玩具" target="_blank"
								href="list.html?/c17722-0-87247/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k/?ti=XQNC"
								data-tc="ad.0.0.16166-27328380.4" data-ref="16166_27328380_4">儿童玩具</a>
<a title="辅食营养" target="_blank"
								href="list.html?/c5987-0-86965/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k/?ti=6VD5"
								data-tc="ad.0.0.16166-27328381.5" data-ref="16166_27328381_5">辅食营养</a>
<a title="营养品" target="_blank"
								href="list.html?/c5988-0-86972/b/a-s1-v4-p1-price-d0-f0d-m1-rt0-pid-mid0-k/?ti=78WQ"
								data-tc="ad.0.0.16166-27328382.6" data-ref="16166_27328382_6">营养品</a>
</ul>
<a class="pic" title="1月元旦宝宝食品" data-tpc="4" data-advId="17604"
							data-ajax="1" class="pic" target="_blank"
							href="http://cms.yhd.com/sale/UFUQgiHIuam" data-recordTracker="1"
							data-tc="ad.0.0.17604-30433120.1" data-ref="17604_30433120_1"
							data-nsf="">
<h3 class="shengxian_font">宝宝食品</h3>
<h4>满188减80</h4>
<img width="190" height="180"
							original="http://d6.yihaodianimg.com/N07/M04/DD/2A/ChEbvFbBNCSACLbWAABIjHj2gGk65500.jpg"
							data-advId="17604" data-ajax="1" src="images/blank.gif"
							alt="宝宝食品">
</a>
</div>
<div class="b_con">
<div class="slider_index_ad" id="customSliderIndexAd_INDEX2_FLOOR8">
<ul class="img_box clearfix" data-tpc="5">
<a title="母婴春季约惠" data-advId="16169" data-ajax="0"
									data-ctpa="INDEX2_FLOOR8_LUNBO_PIC1" target="_blank"
									href="http://cms.yhd.com/sale/CjscQcEHIQj"
									data-recordTracker="1" data-tc="ad.0.0.16169-30783932.1"
									data-ref="16169_30783932_1" data-nsf="">
<img width="330" height="360" data-advId="16169" data-ajax="0"
									src="images/blank.gif"
									original="http://d6.yihaodianimg.com/N05/M06/66/53/ChEbulbL9uGAT5KrAAB0mc3EPZk17800.jpg"
									alt="母婴春季约惠">
</a>
<a title="玩具" data-advId="16170" data-ajax="1"
									data-ctpa="INDEX2_FLOOR8_LUNBO_PIC2" target="_blank"
									href="http://cms.yhd.com/sale/zYIQucEyuIS"
									data-recordTracker="1" data-tc="ad.0.0.16170-30574588.1"
									data-ref="16170_30574588_1" data-nsf="">
<img width="330" height="360" data-advId="16170" data-ajax="1"
									src="images/blank.gif"
									original="http://d6.yihaodianimg.com/N08/M04/D2/AD/ChEi1FbERJyAeMbuAAB31RMAlXQ93200.jpg"
									alt="美猴王玩聚元宵">
</a>
<a title="笛莎公主出游季" data-advId="16171" data-ajax="0"
									data-ctpa="INDEX2_FLOOR8_LUNBO_PIC3" target="_blank"
									href="http://s.yhd.com/list/32682" data-recordTracker="1"
									data-tc="ad.0.0.16171-30849418.1" data-ref="16171_30849418_1"
									data-nsf="">
<img width="330" height="360" data-advId="16171" data-ajax="0"
									src="images/blank.gif"
									original="http://d7.yihaodianimg.com/N09/M04/DB/02/ChEi2FbNG_qAb8YEAABttWikmwk94000.jpg"
									alt="笛莎公主出游季">
</a>
</ul>
<ul class="trig_box">
<li class="clearfix">
<a class="cur"><span></span></a>
<a><span></span></a>
<a><span></span></a>
</li>
</ul>
</div>
</div>
<div class="c_con" data-tpc="6">
<a class="pic" title="纸尿裤中心" target="_blank"
							href="http://cms.yhd.com/sale/184005" data-recordTracker="1"
							data-tc="ad.0.0.17605-29758271.1" data-ref="17605_29758271_1">
<h3>“裤”爽新春 乐抢好货</h3>
<h4>纸尿裤中心</h4>
<img width="190" height="110"
							original="http://d7.yihaodianimg.com/N10/M04/0D/31/ChEi2lY3OXqAW_YrAAAspXiEzmA00700.jpg"
							src="images/blank.gif" alt="“裤”爽新春 乐抢好货">
</a>
<a class="pic" title="奶粉中心" target="_blank"
							href="http://cms.yhd.com/sale/172245" data-recordTracker="1"
							data-tc="ad.0.0.17606-29758273.1" data-ref="17606_29758273_1">
<h3>大牌奶粉喜迎新春</h3>
<h4>猴宝携巨惠来袭</h4>
<img width="190" height="110"
							original="http://d6.yihaodianimg.com/N06/M03/ED/DA/CgQIzVY8SPOAAsfQAAApPiQPpNw93200.jpg"
							src="images/blank.gif" alt="大牌奶粉喜迎新春">
</a>
</div>
<div class="d_con" data-tpc="7">
<a class="pic" title="玩具" target="_blank"
							href="http://cms.yhd.com/sale/zYIQucEyuIS?ti=1J32"
							data-recordTracker="1" data-tc="ad.0.0.17607-30783836.1"
							data-ref="17607_30783836_1">
<h3>美猴王玩聚元宵</h3>
<h4>满199减60 满399减120</h4>
<img width="190" height="290"
							original="http://d9.yihaodianimg.com/N09/M0A/D8/A1/ChEi2FbKzO6Ad4cQAAA1n1RdbxY69000.jpg"
							src="images/blank.gif" alt="美猴王玩聚元宵">
</a>
</div>
<div class="e_con" data-tpc="8">
<a class="pic" title="乐孕孕产专场" target="_blank"
							href="http://t.yhd.com/detailBrand/26971?ti=6DAH"
							data-recordTracker="1" data-tc="ad.0.0.17608-30914987.1"
							data-ref="17608_30914987_1">
<h3>乐孕孕产专场</h3>
<h4>全场3.2折起 满138减10</h4>
<img width="190" height="110"
							original="http://d9.yihaodianimg.com/N05/M05/11/62/CgQI0lbQGDGAEK8BAAAZvBYIsco24000.jpg"
							src="images/blank.gif" alt="乐孕孕产专场">
</a>
<a class="pic" title="折后满599再减100" target="_blank"
							href="http://s.yhd.com/list/32682?pc=1" data-recordTracker="1"
							data-tc="ad.0.0.17609-30849416.1" data-ref="17609_30849416_1">
<h3>笛莎旗舰店</h3>
<h4>折后满599再减100</h4>
<img width="190" height="110"
							original="http://d9.yihaodianimg.com/N08/M01/DB/9B/ChEi1FbNGxmARP4qAAA0uYNBoHw94500.jpg"
							src="images/blank.gif" alt="笛莎旗舰店">
</a>
</div>
</textarea>
			</div>
			<!--通用楼层 end -->
			<!-- 通用楼层begin -->
			<div style="height: 414px" id="floorCustom_INDEX2_FLOOR9"
				data-tpa="YHD_NHOME_INDEX2_FLOOR9"
				class="wrap mod_index_floor clearfix"
				lazyload_textarea="textareaFloorCustom_INDEX2_FLOOR9">
				<textarea id="textareaFloorCustom_INDEX2_FLOOR9" autocomplete="off"
					style="display: none;"><div
						class="mod_floor_title shengxian">
<div data-tpc="1">
<a title="家居馆" class="bt" target="_blank"
								href="list.html?/c950340-0-83112/"
								data-tc="ad.0.0.16175-15842287.1" data-ref="16175_15842287_1">家居馆 </a>
<a title="新春客厅改造计划" class="floor_subtitle_wrap" target="_blank"
								href="list.html?/themeBuy.do?themeId=937"
								data-tc="ad.0.0.18668-27870010.1" data-ref="18668_27870010_1">
<em></em>
<div class="floor_subtitle">
新春客厅改造计划
<i></i>
<span>新春客厅改造计划</span>
</div>
</a>
</div>
<div class="keyword" data-tpc="2">
<a title="棉拖鞋" target="_blank"
								href="http://search.yhd.com/c20113-0-83314/b/a-s1-v0-p1-price-d0-f0-m1-rt0-pid-mid0-k%E6%A3%89%E6%8B%96%E9%9E%8B/"
								data-tc="ad.0.0.16177-27328408.1" data-ref="16177_27328408_1">棉拖鞋</a>|
<a title="毛巾" target="_blank"
								href="http://search.yhd.com/c0-0/k%25E6%25AF%259B%25E5%25B7%25BE/1/"
								data-tc="ad.0.0.16177-26992070.2" data-ref="16177_26992070_2">毛巾</a>|
<a title="暖宝宝" target="_blank"
								href="http://search.yhd.com/c0-0/k%25E6%259A%2596%25E5%25AE%259D%25E5%25AE%259D/1/"
								data-tc="ad.0.0.16177-27328411.3" data-ref="16177_27328411_3">暖宝宝</a>|
<a title="防霾口罩" target="_blank"
								href="http://search.yhd.com/c0-0/k%25E9%2598%25B2%25E9%259C%25BE%25E5%258F%25A3%25E7%25BD%25A9/1/"
								data-tc="ad.0.0.16177-27734365.4" data-ref="16177_27734365_4">防霾口罩</a>|
<a title="秋冬床品" target="_blank"
								href="http://search.yhd.com/c0-0/k%25E5%25BA%258A%25E4%25B8%258A%25E7%2594%25A8%25E5%2593%2581%257C/1/"
								data-tc="ad.0.0.16177-27328407.5" data-ref="16177_27328407_5">秋冬床品</a>|
<a title="换季收纳" target="_blank"
								href="http://search.yhd.com/c0-0/k%25E6%2594%25B6%25E7%25BA%25B3/1/"
								data-tc="ad.0.0.16177-27328413.6" data-ref="16177_27328413_6">换季收纳</a>
</div>
</div>
<div class="a_con">
<ul class="tag clearfix" data-tpc="3">
<a title="餐具水具" target="_blank" href="list.html?/c28758-0-83227/"
								data-tc="ad.0.0.16176-27396173.1" data-ref="16176_27396173_1">餐具水具</a>
<a title="锅具厨具" target="_blank"
								href="http://search.yhd.com/c0-0/k%25E9%2594%2585%25E5%2585%25B7%25E5%258E%25A8%25E5%2585%25B7/1/"
								data-tc="ad.0.0.16176-27396174.2" data-ref="16176_27396174_2">锅具厨具</a>
<a title="床上用品" target="_blank"
								href="http://search.yhd.com/c0-0/k%25E5%25BA%258A%25E4%25B8%258A%25E7%2594%25A8%25E5%2593%2581/1/"
								data-tc="ad.0.0.16176-27396181.3" data-ref="16176_27396181_3">床上用品</a>
<a title="家纺布艺" target="_blank" href="list.html?/c950342-0-83313/"
								data-tc="ad.0.0.16176-25371830.4" data-ref="16176_25371830_4">家纺布艺</a>
<a title="家装建材" target="_blank"
								href="http://search.yhd.com/c-/k%25E5%25AE%25B6%25E8%25A3%2585/1/"
								data-tc="ad.0.0.16176-27060191.5" data-ref="16176_27060191_5">家装建材</a>
<a title="汽车用品" target="_blank" href="list.html?/c23926-0-0"
								data-tc="ad.0.0.16176-28321947.6" data-ref="16176_28321947_6">汽车用品</a>
</ul>
<a class="pic" title="除积碳 增动力" data-tpc="4" data-advId="17610"
							data-ajax="1" class="pic" target="_blank"
							href="http://search.yhd.com/c0-0/k%25E7%2587%2583%25E6%25B2%25B9%25E6%25B7%25BB%25E5%258A%25A0%25E5%2589%2582/1/"
							data-recordTracker="1" data-tc="ad.0.0.17610-29482831.1"
							data-ref="17610_29482831_1" data-nsf="">
<h3 class="shengxian_font">除积碳 增动力</h3>
<h4>保养必备</h4>
<img width="190" height="180"
							original="http://d7.yihaodianimg.com/N10/M0B/AE/75/ChEi2ladkSOAQheYAABEtTdN3Ok13700.jpg"
							data-advId="17610" data-ajax="1" src="images/blank.gif"
							alt="除积碳 增动力">
</a>
</div>
<div class="b_con">
<div class="slider_index_ad" id="customSliderIndexAd_INDEX2_FLOOR9">
<ul class="img_box clearfix" data-tpc="5">
<a title="2.29-3.8家居第二件二折" data-advId="16179" data-ajax="0"
									data-ctpa="INDEX2_FLOOR9_LUNBO_PIC1" target="_blank"
									href="http://cms.yhd.com/sale/mNbcQcEcuJJ"
									data-recordTracker="1" data-tc="ad.0.0.16179-31066039.1"
									data-ref="16179_31066039_1" data-nsf="">
<img width="330" height="360" data-advId="16179" data-ajax="0"
									src="images/blank.gif"
									original="http://d6.yihaodianimg.com/N06/M03/AE/52/CgQIzlbS_bGAMKfoAABwHVCiA2A66400.jpg"
									alt="2.29-3.8家居第二件二折">
</a>
<a title="油联" data-advId="16180" data-ajax="1"
									data-ctpa="INDEX2_FLOOR9_LUNBO_PIC2" target="_blank"
									href="http://shop.yhd.com/m-140705.html?1456216265000=9959"
									data-recordTracker="1" data-tc="ad.0.0.16180-30816843.1"
									data-ref="16180_30816843_1" data-nsf="">
<img width="330" height="360" data-advId="16180" data-ajax="1"
									src="images/blank.gif"
									original="http://d7.yihaodianimg.com/N06/M08/A4/46/CgQIzVbMF8mAX0xgAABUfYltthE10000.jpg"
									alt="油联">
</a>
<a title="苏泊尔" data-advId="16181" data-ajax="0"
									data-ctpa="INDEX2_FLOOR9_LUNBO_PIC3" target="_blank"
									href="http://shop.yhd.com/m-197960.html" data-recordTracker="1"
									data-tc="ad.0.0.16181-30365387.1" data-ref="16181_30365387_1"
									data-nsf="">
<img width="330" height="360" data-advId="16181" data-ajax="0"
									src="images/blank.gif"
									original="http://d7.yihaodianimg.com/N10/M04/CE/61/ChEi2lbKtRCALT5NAAB3a67UGoE90200.jpg"
									alt="苏泊尔">
</a>
</ul>
<ul class="trig_box">
<li class="clearfix">
<a class="cur"><span></span></a>
<a><span></span></a>
<a><span></span></a>
</li>
</ul>
</div>
</div>
<div class="c_con" data-tpc="6">
<a class="pic" title="猴年焕新家 爆款热卖" target="_blank"
							href="http://cms.yhd.com/sale/EXJCMmtkfNJ" data-recordTracker="1"
							data-tc="ad.0.0.17611-30783689.1" data-ref="17611_30783689_1">
<h3>家装一站购 大牌联合</h3>
<h4>聚惠抢购中</h4>
<img width="190" height="110"
							original="http://d9.yihaodianimg.com/N08/M09/DD/FB/ChEi1lbOeguAYdnmAAAtfC8HGWU93000.jpg"
							src="images/blank.gif" alt="家装一站购 大牌联合">
</a>
<a class="pic" title="满599减50" target="_blank"
							href="http://s.yhd.com/list/32368?ti=VSGD" data-recordTracker="1"
							data-tc="ad.0.0.17612-30783902.1" data-ref="17612_30783902_1">
<h3>爱在罗莱家纺</h3>
<h4>满599减50</h4>
<img width="190" height="110"
							original="http://d6.yihaodianimg.com/N06/M04/50/00/ChEbu1bK30CAUlDyAAAyQ49C97434900.jpg"
							src="images/blank.gif" alt="爱在罗莱家纺">
</a>
</div>
<div class="d_con" data-tpc="7">
<a class="pic" title="1元秒杀爆款" target="_blank"
							href="http://cms.yhd.com/sale/213043" data-recordTracker="1"
							data-tc="ad.0.0.17613-30816814.1" data-ref="17613_30816814_1">
<h3>家纺布艺焕新季</h3>
<h4>1元秒杀爆款</h4>
<img width="190" height="290"
							original="http://d6.yihaodianimg.com/N09/M0B/DA/26/ChEi11bMEQqAH8vcAABJY_YUtws79300.jpg"
							src="images/blank.gif" alt="家纺布艺焕新季">
</a>
</div>
<div class="e_con" data-tpc="8">
<a class="pic" title="苏泊尔 料理好帮手" target="_blank"
							href="http://cms.yhd.com/sale/dqlwTRxenAo" data-recordTracker="1"
							data-tc="ad.0.0.17614-31066095.1" data-ref="17614_31066095_1">
<h3>苏泊尔 料理好帮手</h3>
<h4>女人节优品专场</h4>
<img width="190" height="110"
							original="http://d9.yihaodianimg.com/N06/M02/5A/6A/ChEbu1bTCL6ALgMwAAA3IC0VXCk68300.jpg"
							src="images/blank.gif" alt="苏泊尔 料理好帮手">
</a>
<a class="pic" title="毛巾礼盒 钜惠任挑选" target="_blank"
							href="http://search.yhd.com/c0-0-0/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k%E6%AF%9B%E5%B7%BE%E7%A4%BC%E7%9B%92/?ti=RNTP"
							data-recordTracker="1" data-tc="ad.0.0.17615-31066102.1"
							data-ref="17615_31066102_1">
<h3>毛巾礼盒 钜惠任挑选</h3>
<h4>特惠宠爱女人节</h4>
<img width="190" height="110"
							original="http://d9.yihaodianimg.com/N07/M07/0E/0E/CgQIz1bTFfSAEIQWAAAzXvhSqSo66800.jpg"
							src="images/blank.gif" alt="毛巾礼盒 钜惠任挑选">
</a>
</div>
</textarea>
			</div>
			<!--通用楼层 end -->
			<div style="height: 594px" lazyload_textarea="textareaFloorLbsg"
				data-tpa="YHD_NHOME_LBSG" id="floorLbsg"
				class="wrap mod_index_floor clearfix">
				<textarea id="textareaFloorLbsg" autocomplete="off"
					style="display: none;"><div
						class="mod_floor_title fushi">
<div data-tpc="1">
<a class="bt" href="http://lady.yhd.com"
								data-tc="ad.0.0.16107-26386937.1" data-ref="16107_26386937_1"
								title="流行百货" target="_blank">流行百货</a>
<a title="教你如何穿衣显瘦" class="floor_subtitle_wrap" target="_blank"
								href="list.html?/themeBuy.do?themeId=865"
								data-tc="ad.0.0.18664-27870013.1" data-ref="18664_27870013_1">
<em></em>
<div class="floor_subtitle">
教你如何穿衣显瘦
<i></i>
<span>教你如何穿衣显瘦</span>
</div>
</a>
</div>
<div class="keyword" data-tpc="2">
<a
								href="list.html?/c28115-0-90896/b/a-s1-v0-p1-price-d0-f0d-m1-rt0-pid-mid0-k"
								data-tc="ad.0.0.16109-24293727.1" data-ref="16109_24293727_1"
								title="新款连衣裙" target="_blank">新款连衣裙</a>
|
<a
								href="list.html?/c0-0-0/b/a106360,106363,0-s1-v4-p1-price-d0-f0d-m1-rt0-pid-mid0-k%E5%A4%96%E5%A5%97/"
								data-tc="ad.0.0.16109-25508388.2" data-ref="16109_25508388_2"
								title="男女外套" target="_blank">男女外套</a>
|
<a href="http://search.yhd.com/c0-0/k%25E5%2586%2585%25E8%25A3%25A4/1/"
								data-tc="ad.0.0.16109-25508395.3" data-ref="16109_25508395_3"
								title="男女内裤" target="_blank">男女内裤</a>
|
<a
								href="http://search.yhd.com/c0-0/k%25E6%2598%25A5%25E6%25AC%25BE%25E5%25A5%25B3%25E9%259E%258B/1/"
								data-tc="ad.0.0.16109-25508374.4" data-ref="16109_25508374_4"
								title="春款女鞋" target="_blank">春款女鞋</a>
|
<a
								href="list.html?/c22993-0-90940/b/a146306-s1-v4-p1-price-d0-f0bd-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16109-26856583.5" data-ref="16109_26856583_5"
								title="女包新品" target="_blank">女包新品</a>
|
<a href="http://search.yhd.com/c0-0/k%25E5%2581%25A5%25E8%25BA%25AB/1/"
								data-tc="ad.0.0.16109-25508368.6" data-ref="16109_25508368_6"
								title="减脂健身" target="_blank">减脂健身</a>
</div>
</div>
<div class="a_con">
<ul class="tag clearfix" data-tpc="3">
<a href="http://lady.yhd.com/?tc" data-tc="ad.0.0.16108-26386936.1"
								data-ref="16108_26386936_1" title="女装内衣" target="_blank">女装内衣</a>
<a href="http://man.yhd.com/" data-tc="ad.0.0.16108-25508398.2"
								data-ref="16108_25508398_2" title="品质男装" target="_blank">品质男装</a>
<a
								href="list.html?/c22906-0-84292/b/a-s1-v4-p1-price-d0-f0-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16108-25508401.3" data-ref="16108_25508401_3"
								title="大牌箱包" target="_blank">大牌箱包</a>
<a href="http://sport.yhd.com/" data-tc="ad.0.0.16108-25508381.4"
								data-ref="16108_25508381_4" title="运动户外" target="_blank">运动户外</a>
<a
								href="list.html?/c32258-0-84328/b/a-s1-v4-p1-price-d0-f0d-m1-rt0-pid-mid0-k/"
								data-tc="ad.0.0.16108-25508375.5" data-ref="16108_25508375_5"
								title="珠宝饰品" target="_blank">珠宝饰品</a>
<a href="http://shoes.yhd.com" data-tc="ad.0.0.16108-23772178.6"
								data-ref="16108_23772178_6" title="男女鞋上新" target="_blank">男女鞋上新</a>
</ul>
<div class="brands" id="lbBrands">
<div class="img_box">
<ul data-tpc="4">
<li>
<a href="http://shop.yhd.com/m-151782.html" title="红袖"
										data-tc="ad.0.20.16110-20527914.0" data-ref="16110_20527914_0"
										target="_blank">
<img width="100" height="40" alt="红袖" src="images/blank.gif"
											original="http://d8.yihaodianimg.com/N06/M07/91/21/CgQIzVaqzSmAVSexAAAcFxe7vMw09200.jpg" />
</a>
<a href="http://shop.yhd.com/m-37579.html" title="曼妮芬"
										data-tc="ad.0.0.16110-23577570.1" data-ref="16110_23577570_1"
										target="_blank">
<img width="100" height="40" alt="曼妮芬" src="images/blank.gif"
											original="http://d8.yihaodianimg.com/N09/M07/D0/95/ChEi2VbCzKSAZAROAAANGCDCeSg43700.jpg" />
</a>
<a href="http://search.yhd.com/c-/kcoach/1/" title="蔻驰"
										data-tc="ad.0.0.16110-25508358.2" data-ref="16110_25508358_2"
										target="_blank">
<img width="100" height="40" alt="蔻驰" src="images/blank.gif"
											original="http://d7.yihaodianimg.com/N09/M0B/5E/4A/ChEi2FZc91aAHG6PAAALa0N0T8E42100.jpg" />
</a>
<a href="http://shop.yhd.com/m-25567.html" title="茵曼"
										data-tc="ad.0.0.16110-25780846.4" data-ref="16110_25780846_4"
										target="_blank">
<img width="100" height="40" alt="茵曼" src="images/blank.gif"
											original="http://d6.yihaodianimg.com/N06/M0B/54/37/ChEbu1bObA-AMM4CAAAYF_omTKY30600.jpg" />
</a>
</li>
<li>
<a href="http://shop.yhd.com/m-46921.html" title="艾格"
										data-tc="ad.0.0.16110-28254436.5" data-ref="16110_28254436_5"
										target="_blank">
<img width="100" height="40" alt="艾格" src="images/blank.gif"
											original="http://d6.yihaodianimg.com/N06/M09/81/16/CgQIzlacSYqAVpMRAAAJGE2MM5I10200.jpg" />
</a>
<a href="http://search.yhd.com/c0-0/k%25E5%25A4%25A9%25E6%25A2%25AD/1/"
										title="天梭" data-tc="ad.0.0.16110-27531350.6"
										data-ref="16110_27531350_6" target="_blank">
<img width="100" height="40" alt="天梭" src="images/blank.gif"
											original="http://d7.yihaodianimg.com/N06/M06/E3/7E/CgQIzlW-4biAOP3YAAAQvpHsxRg50600.jpg" />
</a>
<a href="http://shop.yhd.com/dpzx/m-128894.html" title="JJ"
										data-tc="ad.0.0.16110-30574491.7" data-ref="16110_30574491_7"
										target="_blank">
<img width="100" height="40" alt="JJ" src="images/blank.gif"
											original="http://d8.yihaodianimg.com/N08/M03/D4/C8/ChEi1lbGeJeAOdCVAAAJJSwQPMI84000.jpg" />
</a>
<a href="list.html?/c34140-0-82148/knike|/" title="NIKE"
										data-tc="ad.0.0.16110-23917658.8" data-ref="16110_23917658_8"
										target="_blank">
<img width="100" height="40" alt="NIKE" src="images/blank.gif"
											original="http://d6.yihaodianimg.com/N06/M03/ED/F0/CgQIzlY8AG2AcoXWAAAG6aCP0Xo87100.jpg" />
</a>
</li>
</ul>
</div>
<a class="btn btn_prev" href="javascript:;"></a>
<a class="btn btn_next" href="javascript:;"></a>
</div>
</div>
<div class="b_con">
<div class="slider_index_ad" id="lbSliderIndexAd">
<ul class="img_box clearfix" data-tpc="5">
<a title="男装馆" data-advId="16112" data-ajax="0"
									data-ctpa="INDEX2_FLOORLB_LUNBO_PIC1" target="_blank"
									href="http://man.yhd.com/" data-recordTracker="1"
									data-tc="ad.0.0.16112-30783700.1" data-ref="16112_30783700_1"
									data-nsf="">
<img width="330" height="360" data-advId="16112" data-ajax="0"
									src="images/blank.gif"
									original="http://d8.yihaodianimg.com/N09/M0A/DB/FB/ChEi2FbNbVqAX9gcAACD3LQam8w44000.jpg"
									alt="男装馆">
</a>
<a title="初语" data-advId="16113" data-ajax="1"
									data-ctpa="INDEX2_FLOORLB_LUNBO_PIC2" target="_blank"
									href="http://s.yhd.com/list/32639" data-recordTracker="1"
									data-tc="ad.0.0.16113-30646784.1" data-ref="16113_30646784_1"
									data-nsf="">
<img width="330" height="360" data-advId="16113" data-ajax="1"
									src="images/blank.gif"
									original="http://d8.yihaodianimg.com/N08/M05/DE/35/ChEi1FbOoBKAAHTjAACNp0kT56486800.jpg"
									alt="初语">
</a>
<a title="满199减100" data-advId="16114" data-ajax="0"
									data-ctpa="INDEX2_FLOORLB_LUNBO_PIC3" target="_blank"
									href="list.html?/p/c5010-b-a-s1-v0-p1-price-d0-pid-pt1331147-pl1451847-m0-k"
									data-recordTracker="1" data-tc="ad.0.0.16114-31065938.1"
									data-ref="16114_31065938_1" data-nsf="">
<img width="330" height="360" data-advId="16114" data-ajax="0"
									src="images/blank.gif"
									original="http://d6.yihaodianimg.com/N09/M0B/E2/CD/ChEi2VbSY9uAQSJSAABpYrtWaZw81100.jpg"
									alt="满199减100">
</a>
</ul>
<ul class="trig_box">
<li class="clearfix">
<a class="cur"><span></span></a>
<a><span></span></a>
<a><span></span></a>
</li>
</ul>
</div>
</div>
<div class="g_con" data-tpc="6">
<a class="pic" title="春光乍现 新款 2.5折起" target="_blank"
							href="http://lady.yhd.com/" data-recordTracker="1"
							data-tc="ad.0.0.17588-30914751.1" data-ref="17588_30914751_1">
<h3>时尚女装馆</h3>
<h4>春光乍现 新款 2.5折起</h4>
<img width="190" height="290"
							original="http://d7.yihaodianimg.com/N07/M0B/0A/C6/CgQIz1bP76-Aaaa_AAAzAML8sVs95400.jpg"
							src="images/blank.gif" alt="时尚女装馆">
</a>
</div>
<div class="d_con" data-tpc="7">
<a class="pic" title="新款上市 1折起" target="_blank"
							href="http://bag.yhd.com/?ti=TBFF" data-recordTracker="1"
							data-tc="ad.0.0.17590-30783915.1" data-ref="17590_30783915_1">
<h3>箱包配饰馆</h3>
<h4>新款上市 1折起</h4>
<img width="190" height="290"
							original="http://d6.yihaodianimg.com/N09/M07/DB/1E/ChEi11bNFliAczzfAABR0hrD-kg10800.jpg"
							src="images/blank.gif" alt="箱包配饰馆">
</a>
</div>
<div class="e_con" data-tpc="8">
<a class="pic" title="我的美丽日志旗舰店 " target="_blank"
							href="http://shop.yhd.com/m-94827.html?1448605644000=1336"
							data-recordTracker="1" data-tc="ad.0.0.17592-25576217.1"
							data-ref="17592_25576217_1">
<h3>我的美丽日志旗舰店 </h3>
<h4>满138减10 下单有礼 </h4>
<img width="190" height="110"
							original="http://d6.yihaodianimg.com/N07/M08/E4/91/CgQI0FZeZO-Aczs-AAA28_4Kns429500.jpg"
							src="images/blank.gif" alt="我的美丽日志旗舰店 ">
</a>
</div>
<div class="f_con clearfix" data-tpc="9">
<div class="f1">
<a class="pic" title="早春出游全场三折起" data-tpc="4" data-advId="17586"
								data-ajax="1" class="pic" target="_blank"
								href="http://shop.yhd.com/m-80463.html" data-recordTracker="1"
								data-tc="ad.0.0.17586-29482918.1" data-ref="17586_29482918_1"
								data-nsf="">
<h3 class="fushi_font">李宁智能芯片跑步鞋</h3>
<h4>早春出游全场三折起</h4>
<img width="190" height="110"
								original="http://d6.yihaodianimg.com/N06/M03/94/EE/CgQIzlauyjaAUux9AAAgHw5SvFw48400.jpg"
								data-advId="17586" data-ajax="1" src="images/blank.gif"
								alt="李宁智能芯片跑步鞋">
</a>
</div>
<div class="f2">
<a class="pic2 clearfix" href="http://shoes.yhd.com/" title="专柜大牌3折起"
								data-tc="ad.0.0.17587-29482936.1" data-ref="17587_29482936_1"
								target="_blank">
<div class="fl">
<h3>男女鞋靴馆</h3>
<h4>专柜大牌3折起</h4>
<em class="sale_txt">鞋靴精品99元起</em>
</div>
<img width="130" height="166" alt="男女鞋靴馆" src="images/blank.gif"
								original="http://d9.yihaodianimg.com/N09/M01/D3/E0/ChEi2VbFmT2ADq3jAAAQc29MdB413700.jpg" />
</a>
</div>
<div class="f3">
<a class="pic" title="春上新3折起" target="_blank"
								href="http://sport.yhd.com/" data-recordTracker="1"
								data-tc="ad.0.0.17589-26250421.1" data-ref="17589_26250421_1">
<h3>运动户外馆</h3>
<h4>春上新3折起</h4>
<img width="190" height="110"
								original="http://d9.yihaodianimg.com/N09/M06/DA/95/ChEi2VbMKySAY1VnAAA6AYYJqWQ50300.jpg"
								src="images/blank.gif" alt="运动户外馆">
</a>
</div>
<div class="f4">
<a class="pic" title="大牌全场2折起" target="_blank"
								href="http://bag.yhd.com/?ti=TX4G" data-recordTracker="1"
								data-tc="ad.0.0.17591-29690419.1" data-ref="17591_29690419_1">
<h3>宠爱女人节</h3>
<h4>大牌全场2折起</h4>
<img width="190" height="110"
								original="http://d6.yihaodianimg.com/N07/M00/EF/15/ChEbvFbQM6yAR1HBAAAg05qKZ_I12800.jpg"
								src="images/blank.gif" alt="宠爱女人节">
</a>
</div>
<div class="f5">
<a class="pic" title="自营正品2.9折起" target="_blank"
								href="http://t.yhd.com/detailBrand/27088" data-recordTracker="1"
								data-tc="ad.0.0.17593-31066108.1" data-ref="17593_31066108_1">
<h3>不止于面的宠爱</h3>
<h4>自营正品2.9折起</h4>
<img width="190" height="290"
								original="http://d8.yihaodianimg.com/N10/M06/D4/6E/ChEi3FbC8-WAdc-AAABLmnxhvg899100.jpg"
								src="images/blank.gif" alt="不止于面的宠爱">
</a>
</div>
</div>
</textarea>
			</div>
			<div style="height: 594px" lazyload_textarea="textareaFloor3c"
				data-tpa="YHD_NHOME_3C" id="floor3c"
				class="wrap mod_index_floor clearfix">
				<textarea id="textareaFloor3c" autocomplete="off"
					style="display: none;"><div
						class="mod_floor_title shuma">
<div data-tpc="1">
<a class="bt" href="http://3c.yhd.com/1/"
								data-tc="ad.0.0.16123-15111329.1" data-ref="16123_15111329_1"
								title="手机家电" target="_blank">手机家电</a>
<a title="游戏战场靠装备" class="floor_subtitle_wrap" target="_blank"
								href="list.html?/themeBuy.do?themeId=900"
								data-tc="ad.0.0.18665-27870014.1" data-ref="18665_27870014_1">
<em></em>
<div class="floor_subtitle">
游戏战场靠装备
<i></i>
<span>游戏战场靠装备</span>
</div>
</a>
</div>
<div class="keyword" data-tpc="2">
<a href="http://cms.yhd.com/sale/maeOBbXWbFm"
								data-tc="ad.0.0.16125-25508468.2" data-ref="16125_25508468_2"
								title="iPad" target="_blank">iPad</a>
|
<a
								href="list.html?/c21266-0-83899/b/a-s1-v4-p1-price-d0-f0d6b-m1-rt0-pid-mid0-k/?ti=UVG5"
								data-tc="ad.0.0.16125-28384310.3" data-ref="16125_28384310_3"
								title="家电直降特惠" target="_blank">家电直降特惠</a>
|
<a href="list.html?/c21394-0-84187/" data-tc="ad.0.0.16125-25508469.5"
								data-ref="16125_25508469_5" title="电脑配件" target="_blank">电脑配件</a>
|
<a
								href="http://search.yhd.com/c21347-%E5%8D%95%E5%8F%8D%E7%9B%B8%E6%9C%BA/b/a-s1-v0-p1-price-d0-f0-m1-rt0-pid-k%E5%8D%95%E5%8F%8D/1/"
								data-tc="ad.0.0.16125-20474744.6" data-ref="16125_20474744_6"
								title="单反" target="_blank">单反</a>
</div>
</div>
<div class="a_con">
<ul class="tag clearfix" data-tpc="3">
<a href="list.html?/c23586-0-81436/" data-tc="ad.0.0.16124-25508471.1"
								data-ref="16124_25508471_1" title="手机" target="_blank">手机</a> <a
								href="http://search.yhd.com/c0-0-0/b/a-s1-v4-p1-price-d0-f0d6-m1-rt0-pid-mid0-k%E6%89%8B%E6%9C%BA%E9%85%8D%E4%BB%B6/"
								data-tc="ad.0.0.16124-26051455.2" data-ref="16124_26051455_2"
								title="手机配件" target="_blank">手机配件</a> <a
								href="list.html?/c21991-0-91553/"
								data-tc="ad.0.0.16124-25508473.3" data-ref="16124_25508473_3"
								title="平板电脑" target="_blank">平板电脑</a> <a
								href="list.html?/c21266-0-83899/b/a-s1-v4-p1-price-d0-f0db-m1-rt0-pid-mid0-k/?ti=C4M4"
								data-tc="ad.0.0.16124-28254476.4" data-ref="16124_28254476_4"
								title="家电" target="_blank">家电</a> <a
								href="list.html?/c0-0-85877" data-tc="ad.0.0.16124-25508474.5"
								data-ref="16124_25508474_5" title="数码配件" target="_blank">数码配件</a> <a
								href="http://search.yhd.com/c-/k%25E5%258F%2596%25E6%259A%2596%25E5%2599%25A8/1/"
								data-tc="ad.0.0.16124-25508475.6" data-ref="16124_25508475_6"
								title="取暖器" target="_blank">取暖器</a>
</ul>
<a class="pic" href="http://cms.yhd.com/sale/EJboaahavaJ" data-tpc="4"
							data-advId="17594" data-ajax="1" data-recordTracker="1"
							data-tc="ad.0.0.17594-30849465.1" data-ref="17594_30849465_1"
							title="笔记本导购--选本攻略" target="_blank" data-nsf="">
<h3 class="shuma_font">笔记本导购--选本攻略</h3>
<h4>笔记本导购--选本攻略</h4>
<img width="190" height="180" alt="笔记本导购--选本攻略" data-advId="17594"
							data-ajax="1" src="images/blank.gif"
							original="http://d6.yihaodianimg.com/N06/M00/AA/01/CgQIzVbP52qAd-viAAAZeuVheAc02800.jpg" />
</a>
</div>
<div class="b_con">
<div class="slider_index_ad" id="dqSliderIndexAd">
<ul class="img_box clearfix" data-tpc="4">
<a href="http://cms.yhd.com/sale/YpTqCfCmqpM" data-advId="16128"
									data-ajax="0" data-ctpa="INDEX2_FLOOR3C_LUNBO_PIC1"
									data-recordTracker="1" data-tc="ad.0.0.16128-31066093.1"
									data-ref="16128_31066093_1" title="最美女人“机”" target="_blank"
									data-nsf="">
<img width="330" height="360" data-advId="16128" data-ajax="0"
									alt="最美女人“机”" src="images/blank.gif"
									original="http://d9.yihaodianimg.com/N09/M02/E3/63/ChEi2VbTBxyAcq2-AACXuT7UrYo37500.jpg" />
</a>
<a href="http://cms.yhd.com/sale/hTYXODOdbIS" data-advId="16129"
									data-ajax="1" data-ctpa="INDEX2_FLOOR3C_LUNBO_PIC2"
									data-recordTracker="1" data-tc="ad.0.0.16129-30915001.1"
									data-ref="16129_30915001_1" title="我是女主角 赢取价值378元永生花 自营数码专场"
									target="_blank" data-nsf="">
<img width="330" height="360" data-advId="16129" data-ajax="1"
									alt="我是女主角 赢取价值378元永生花 自营数码专场" src="images/blank.gif"
									original="http://d6.yihaodianimg.com/N08/M05/E1/6F/ChEi1lbQG5SAJVj1AABtnhpCmPk41500.jpg" />
</a>
<a href="http://cms.yhd.com/sale/JaaTeReeTXJ" data-advId="16130"
									data-ajax="0" data-ctpa="INDEX2_FLOOR3C_LUNBO_PIC3"
									data-recordTracker="1" data-tc="ad.0.0.16130-30915234.1"
									data-ref="16130_30915234_1" title="小米PK华为" target="_blank"
									data-nsf="">
<img width="330" height="360" data-advId="16130" data-ajax="0"
									alt="小米PK华为" src="images/blank.gif"
									original="http://d6.yihaodianimg.com/N09/M01/E1/45/ChEi2VbQYmuAcD-nAABQcX3aiJg70000.jpg" />
</a>
</ul>
<ul class="trig_box">
<li class="clearfix">
<a class="cur"><span></span></a>
<a><span></span></a>
<a><span></span></a>
</li>
</ul>
</div>
</div>
<div class="j_con" data-tpc="5">
<a class="pic" href="http://cms.yhd.com/sale/qotcQcHuutr"
							data-recordTracker="1" data-tc="ad.0.0.17595-30751299.1"
							title="猴年直降惠客" data-ref="17595_30751299_1" target="_blank">
<h3>1号店 自营家电</h3>
<h4>猴年直降惠客</h4>
<img width="190" height="290" alt="1号店 自营家电" src="images/blank.gif"
							original="http://d8.yihaodianimg.com/N09/M01/D7/61/ChEi2FbJzCeAKY_uAAAiC5H0zeo20800.jpg" />
</a>
</div>
<div class="c_con i_con pro_con" data-tpc="6">
<a
							href="http://search.yhd.com/c0-0/k%25E4%25B8%2589%25E6%2598%259F%25E6%2589%258B%25E6%259C%25BA/1/"
							data-tc="ad.0.0.16134-27801922.1" data-ref="16134_27801922_1"
							title="三星 Galaxy Note5 就比京东低" target="_blank">
<img width="120" height="120" alt="三星 Galaxy Note5 就比京东低"
							src="images/blank.gif"
							original="http://d8.yihaodianimg.com/N05/M00/39/CE/ChEbulYIrmaAciGPAATvIYWcPcg53501_120x120.jpg" />
<p class="p1">三星 Galaxy Note5 就比京东低</p>
<p class="p2" productId="46769374">¥ 4288.0</p>
</a>
<a
							href="http://search.yhd.com/c0-0/k%25E9%25A3%259E%25E7%25A7%2591%25E5%2589%2583%25E9%25A1%25BB%25E5%2588%2580/1/"
							data-tc="ad.0.0.16134-30849633.2" data-ref="16134_30849633_2"
							title="Flyco 飞科 男士三刀头电动剃须刀" target="_blank">
<img width="120" height="120" alt="Flyco 飞科 男士三刀头电动剃须刀"
							src="images/blank.gif"
							original="http://d6.yihaodianimg.com/V00/M08/F2/52/CgQDsFR8NCSATD7NAAVAKspfnio76101_120x120.jpg" />
<p class="p1">Flyco 飞科 男士三刀头电动剃须刀</p>
<p class="p2" productId="27166906">¥ 89.0</p>
</a>
</div>
<div class="e_con pro_con" data-tpc="7">
<a href="http://search.yhd.com/c0-0/kiphone%25206s/1/"
							data-tc="ad.0.0.16135-27801923.1" data-ref="16135_27801923_1"
							title="iPhone6s就比京东低" target="_blank">
<img width="120" height="120" alt="iPhone6s就比京东低" src="images/blank.gif"
							original="http://d6.yihaodianimg.com/N05/M05/D2/53/CgQI0lYDntiACt0ZAACMbiZcATs22001_120x120.jpg" />
<p class="p1">iPhone6s就比京东低</p>
<p class="p2" productId="46329212">¥ 4838.0</p>
</a>
<a href="list.html?/c21304-0-83960/?ti=AXP3"
							data-tc="ad.0.0.16135-29552189.2" data-ref="16135_29552189_2"
							title="松下 电吹风 1200w" target="_blank">
<img width="120" height="120" alt="松下 电吹风 1200w" src="images/blank.gif"
							original="http://d6.yihaodianimg.com/N01/M09/D7/34/CgQCrVJblvWASNWIAAEfdwK2K_Y47301_120x120.jpg" />
<p class="p1">松下 电吹风 1200w</p>
<p class="p2" productId="1055488">¥ 99.0</p>
</a>
</div>
<div class="f_con clearfix" data-tpc="8">
<div class="f1">
<p class="eq_tit">1号店电器独家权益</p>
<div class="ad_pic clearfix">
<a href="http://cms.yhd.com/cmsPage/show.do?pageId=135423"
									data-recordTracker="1" data-tc="ad.0.0.16127-28254471.1"
									title="CE就比京东低综合页面" data-ref="16127_28254471_1" target="_blank">
<img width="100" height="140" alt="CE就比京东低综合页面" src="images/blank.gif"
									original="http://d9.yihaodianimg.com/N05/M04/12/75/CgQI01S0fqSAPEJaAAAUc_MNtWA13600.jpg" />
</a>
<a href="http://my.yhd.com/oldfornew/oldfornewIndex.do"
									data-recordTracker="1" data-tc="ad.0.0.16127-14042175.2"
									title="以旧换新" data-ref="16127_14042175_2" target="_blank">
<img width="100" height="140" alt="以旧换新" src="images/blank.gif"
									original="http://d7.yihaodianimg.com/N06/M03/B0/65/CgQIzVS0frqAOF2PAAAY6qDXZbc84000.jpg" />
</a>
</div>
</div>
<div class="f2">
<a class="pic2 clearfix" href="http://cms.yhd.com/sale/JaaTeReeTXJ"
								title="小米PK华为" data-tc="ad.0.0.17596-30915239.1"
								data-ref="17596_30915239_1" target="_blank">
<div class="fl">
<h3>小米PK华为</h3>
<h4>手机电脑拼速</h4>
<em class="sale_txt">荣耀5X1099元</em>
</div>
<img width="130" height="166" alt="小米PK华为" src="images/blank.gif"
								original="http://d7.yihaodianimg.com/N05/M05/0D/DE/CgQI01bQZPuAbtRiAAAYtGpxhFY92700.jpg" />
</a>
</div>
<div class="f3 pro_con">
<a href="http://cms.yhd.com/sale/maeOBbXWbFm?ti=QXTT"
								data-tc="ad.0.0.16133-25508480.1" data-ref="16133_25508480_1"
								title="Apple 苹果 iPad特惠" target="_blank">
<img width="120" height="120" alt="Apple 苹果 iPad特惠"
								src="images/blank.gif"
								original="http://d6.yihaodianimg.com/N00/M07/E7/FD/CgMBmFJuF8WAI7VZAABVr5IDrZA58201_120x120.jpg" />
<p class="p1">Apple 苹果 iPad特惠</p>
<p class="p2" productId="14964792">¥ 2238.0</p>
</a>
</div>
<div class="f4 pro_con">
<a href="http://search.yhd.com/c0-0/kthinkpad/1/"
								data-tc="ad.0.0.16133-30816824.2" data-ref="16133_30816824_2"
								title="联想 ThinkPad X250" target="_blank">
<img width="120" height="120" alt="联想 ThinkPad X250"
								src="images/blank.gif"
								original="http://d6.yihaodianimg.com/N05/M05/D0/AA/ChEbulXTATyARv-tAAPUQ2nVmSk99001_120x120.jpg" />
<p class="p1">联想 ThinkPad X250</p>
<p class="p2" productId="45431806">¥ 4688.0</p>
</a>
</div>
<div class="f6 pro_con">
<a
								href="http://search.yhd.com/c0-0/k%25E5%2584%25BF%25E7%25AB%25A5%25E6%2599%25BA%25E8%2583%25BD%25E6%2589%258B%25E7%258E%25AF/18/"
								data-tc="ad.0.0.16133-29552265.3" data-ref="16133_29552265_3"
								title="儿童智能手表安全放心" target="_blank">
<img width="120" height="120" alt="儿童智能手表安全放心" src="images/blank.gif"
								original="http://d8.yihaodianimg.com/N05/M05/0E/5C/CgQI0lYdyeSAINPNAAET6KbH0gA20401_120x120.jpg" />
<p class="p1">儿童智能手表安全放心</p>
<p class="p2" productId="48231517">¥ 399.0</p>
</a>
</div>
</div>
</textarea>
			</div>
			<div style="height: 414px" lazyload_textarea="textareaFloorGroup"
				data-tpa="YHD_NHOME_TUAN" id="floorGroup"
				class="wrap mod_index_floor mod_tuangou_floor clearfix">
				<textarea id="textareaFloorGroup" autocomplete="off"
					style="display: none;"><div
						class="mod_floor_title tuangou">
<div data-tpc="1">
<a class="bt" href="http://t.yhd.com" title="1号团"
								data-tc="ad.0.0.16136-25508426.1" data-ref="16136_25508426_1"
								target="_blank">1号团</a>
</div>
<div class="keyword" data-tpc="2">
<a href="http://t.yhd.com/100-0-2035-1-1.html" title="大牌纸尿裤"
								data-tc="ad.0.0.16138-30498790.1" data-ref="16138_30498790_1"
								target="_blank">大牌纸尿裤</a>
|
<a href="http://t.yhd.com/100-0-2046-1-1.html" title="新鲜水果"
								data-tc="ad.0.0.16138-30498791.2" data-ref="16138_30498791_2"
								target="_blank">新鲜水果</a>
|
<a href="http://t.yhd.com/100-0-2003-1-1.html" title="进口牛奶"
								data-tc="ad.0.0.16138-30498792.3" data-ref="16138_30498792_3"
								target="_blank">进口牛奶</a>
|
<a href="http://t.yhd.com/100-0-2012-1-1.html" title="iPhone疯抢"
								data-tc="ad.0.0.16138-30498808.4" data-ref="16138_30498808_4"
								target="_blank">iPhone疯抢</a>
|
<a href="http://t.yhd.com/100-0-2008-1-1.html" title="个人护理"
								data-tc="ad.0.0.16138-30498815.5" data-ref="16138_30498815_5"
								target="_blank">个人护理</a>
|
<a href="http://t.yhd.com/100-0-2013-1-1.html" title="生活电器"
								data-tc="ad.0.0.16138-30498816.6" data-ref="16138_30498816_6"
								target="_blank">生活电器</a>
</div>
</div>
<div class="a_con">
<ul class="tag clearfix" data-tpc="3">
<a href="http://t.yhd.com/100-0-2003-1-1.html"
								data-tc="ad.0.0.16137-30498500.1" data-ref="16137_30498500_1"
								title="进口食品" target="_blank">进口食品</a> <a
								href="http://t.yhd.com/100-0-2002-1-1.html"
								data-tc="ad.0.0.16137-30498502.2" data-ref="16137_30498502_2"
								title="美食保健" target="_blank">美食保健</a> <a
								href="http://t.yhd.com/100-0-2033-1-1.html"
								data-tc="ad.0.0.16137-30498549.3" data-ref="16137_30498549_3"
								title="家居日用" target="_blank">家居日用</a> <a
								href="http://t.yhd.com/100-0-2048-1-1.html"
								data-tc="ad.0.0.16137-30498556.4" data-ref="16137_30498556_4"
								title="美妆护肤" target="_blank">美妆护肤</a> <a
								href="http://t.yhd.com/100-0-2005-1-1.html"
								data-tc="ad.0.0.16137-30498559.5" data-ref="16137_30498559_5"
								title="精品女装" target="_blank">精品女装</a> <a
								href="http://t.yhd.com/100-0-2012-1-1.html"
								data-tc="ad.0.0.16137-30498561.6" data-ref="16137_30498561_6"
								title="手机数码" target="_blank">手机数码</a>
</ul>
<a class="pic" title="2.29个护冲锋预热" data-tpc="4" data-advId="17597"
							data-ajax="1" class="pic" target="_blank"
							href="http://cms.yhd.com/sale/aUXXOXlBBNJ" data-recordTracker="1"
							data-tc="ad.0.0.17597-30914870.1" data-ref="17597_30914870_1"
							data-nsf="">
<h3 class="tuangou_font">洗护冲锋日抢免单</h3>
<h4>满199减100送100！</h4>
<img width="190" height="180"
							original="http://d6.yihaodianimg.com/N06/M07/57/66/ChEbu1bP-xWABPCpAABHxmwFrrQ67900.jpg"
							data-advId="17597" data-ajax="1" src="images/blank.gif"
							alt="洗护冲锋日抢免单">
</a>
</div>
<div class="k_con" data-tpc="5">
<a href="http://t.yhd.com/100-0-2005-1-1.html"
							data-grouponBrandId="27072" title="雅可希春上新"
							data-tc="ad.0.0.16140-30882072.1" data-ref="16140_30882072_1"
							target="_blank">
<img width="330" height="180" alt="雅可希春上新" src="images/blank.gif"
							original="http://d7.yihaodianimg.com/N09/M0A/DD/BD/ChEi2VbOm4OADZO-AABsMoPk79007100.jpg" />
</a>
<a href="http://t.yhd.com/100-0-2002-1-1.html"
							data-grouponBrandId="27301" title="百草味品牌团"
							data-tc="ad.0.0.16140-30882071.2" data-ref="16140_30882071_2"
							target="_blank">
<img width="330" height="180" alt="百草味品牌团" src="images/blank.gif"
							original="http://d8.yihaodianimg.com/N05/M08/0E/92/CgQI0lbOqQuAVIADAAB0pgyIvXc57500.jpg" />
</a>
</div>
<div class="c_con pro_con" data-tpc="6">
<a href="http://t.yhd.com/100-0-2048-1-1.html"
							title="薇诺娜WINONA 清痘控油消印套装（洁面泡沫50ml+爽肤水30ml+清颜霜15g+清痘精华12g）"
							data-tc="ad.0.0.16325-30882096.1" data-ref="16325_30882096_1"
							target="_blank">
<img alt="薇诺娜WINONA 清痘控油消印套装（洁面泡沫50ml+爽肤水30ml+清颜霜15g+清痘精华12g）"
							src="images/blank.gif"
							original="http://d6.yihaodianimg.com/N05/M03/0E/D8/CgQI0lbOt0mALKQmAAFPXJvQCho56200_120x120.jpg" />
<p class="p1">薇诺娜WINONA 清痘控油消印套装（洁面泡沫50ml+爽肤水30ml+清颜霜15g+清痘精华12g）</p>
<p class="p_box clearfix" data-grouponId="2732315">¥ 149.0</p>
</a>
<a href="http://t.yhd.com/100-0-2033-1-1.html"
							title="Midea 美的炒锅CL28J1 28cm 不粘锅家用煎锅炒锅无油烟电磁炉通用"
							data-tc="ad.0.0.16325-30882138.2" data-ref="16325_30882138_2"
							target="_blank">
<img alt="Midea 美的炒锅CL28J1 28cm 不粘锅家用煎锅炒锅无油烟电磁炉通用"
							src="images/blank.gif"
							original="http://d9.yihaodianimg.com/N10/M01/E1/D5/ChEi21bOxGGAKm_TAADofF0QtzQ02500_120x120.jpg" />
<p class="p1">Midea 美的炒锅CL28J1 28cm 不粘锅家用煎锅炒锅无油烟电磁炉通用</p>
<p class="p_box clearfix" data-grouponId="2717407">¥ 169.0</p>
</a>
</div>
<div class="c_con i_con pro_con" data-tpc="7">
<a href="http://t.yhd.com/100-0-2051-1-1.html"
							title="P.kuone/皮客优一 男士胸包休闲斜跨男包多功能帆布户外腰包P750583"
							data-tc="ad.0.0.16325-30882060.3" data-ref="16325_30882060_3"
							target="_blank">
<img alt="P.kuone/皮客优一 男士胸包休闲斜跨男包多功能帆布户外腰包P750583"
							src="images/blank.gif"
							original="http://d7.yihaodianimg.com/N10/M06/E0/90/ChEi3FbOZWmAYL71AAFfXGblJc821800_120x120.jpg" />
<p class="p1">P.kuone/皮客优一 男士胸包休闲斜跨男包多功能帆布户外腰包P750583</p>
<p class="p_box clearfix" data-grouponId="2696616">¥ 89.0</p>
</a>
<a href="detail.html?53938012"
							title="Apple 苹果 iPhone 6s (A1700) 64G 玫瑰金色 移动联通电信4G 全网通手机"
							data-tc="ad.0.0.16325-31117740.4" data-ref="16325_31117740_4"
							target="_blank">
<img alt="Apple 苹果 iPhone 6s (A1700) 64G 玫瑰金色 移动联通电信4G 全网通手机"
							src="images/blank.gif"
							original="http://d9.yihaodianimg.com/N09/M02/A1/05/ChEi11YDoDKAL5laAACMbiZcATs39901_120x120.jpg" />
<p class="p1">Apple 苹果 iPhone 6s (A1700) 64G 玫瑰金色 移动联通电信4G 全网通手机</p>
<p class="p2" productId="46329217">¥ 5588.0</p>
</a>
</div>
<div class="e_con pro_con" data-tpc="8">
<a href="detail.html?56683234"
							title="新新人 【新品买一送一】酵素 果蔬酵素 台湾进口酵素粉 6g*20袋"
							data-tc="ad.0.0.16325-31117750.5" data-ref="16325_31117750_5"
							target="_blank">
<img alt="新新人 【新品买一送一】酵素 果蔬酵素 台湾进口酵素粉 6g*20袋" src="images/blank.gif"
							original="http://d9.yihaodianimg.com/N08/M00/50/F4/ChEi1FZVf0yAb0kMAAKMWDmm9sE55400_120x120.jpg" />
<p class="p1">新新人 【新品买一送一】酵素 果蔬酵素 台湾进口酵素粉 6g*20袋</p>
<p class="p2" productId="48784110">¥ 138.0</p>
</a>
<a href="http://t.yhd.com/100-0-2035-1-1.html"
							title="雀巢 Nestle 能恩幼儿配方奶粉900g 3段（1-3岁） 详情为新老包装 新包装发货"
							data-tc="ad.0.0.16325-30882074.6" data-ref="16325_30882074_6"
							target="_blank">
<img alt="雀巢 Nestle 能恩幼儿配方奶粉900g 3段（1-3岁） 详情为新老包装 新包装发货"
							src="images/blank.gif"
							original="http://d7.yihaodianimg.com/N10/M08/D0/F5/ChEi21YYt6-AMMrrAAM4Zk75Uss45500_120x120.jpg" />
<p class="p1">雀巢 Nestle 能恩幼儿配方奶粉900g 3段（1-3岁） 详情为新老包装 新包装发货</p>
<p class="p_box clearfix" data-grouponId="2699720">¥ 136.0</p>
</a>
</div>
</textarea>
			</div>
			<div style="height: 414px" lazyload_textarea="textareaFloorShan"
				data-tpa="YHD_NHOME_SHAN" id="floorShan"
				class="wrap mod_index_floor clearfix">
				<textarea id="textareaFloorShan" autocomplete="off"
					style="display: none;"><div
						class="mod_floor_title shangou clearfix">
<a class="bt" href="http://s.yhd.com/" title="闪购"
							data-tc="ad.0.0.16326-27599620.1" data-ref="16326_27599620_1"
							target="_blank">闪购</a>
<div class="update_time">
<a href="http://s.yhd.com" title="品牌点亮生活，每天十点上新"
								data-tc="ad.0.0.16328-15061153.1" data-ref="16328_15061153_1"
								target="_blank">品牌点亮生活，每天十点上新</a>
</div>
</div>
<!--tab begin -->
<div class="sgwrap">
<div class="sg_tab">
<em class="tab_arrow"></em>
<ul class="clearfix">
<li class="cur"><a href="http://s.yhd.com" target="_blank">大牌推荐</a></li>
<li><a href="http://s.yhd.com/new" target="_blank">销售排行</a></li>
<li><a href="http://s.yhd.com" target="_blank">最后疯抢</a></li>
</ul>
</div>
<div class="sg_tabwrap">
<div class="sg_tabcontent clearfix">
<div class="sg_banner sg_big">
<a href="http://cms.yhd.com/sale/IhTwTRenTiM" title="宠爱女人节 珠宝配饰专场2折起"
										data-recordTracker="1" data-tc="ad.0.0.16329-30915009.1"
										data-ref="16329_30915009_1" target="_blank">
<img alt="宠爱女人节 珠宝配饰专场2折起" src="images/blank.gif"
										original="http://d8.yihaodianimg.com/N07/M0B/62/DE/CgQI0FbQHIiAARXxAADeBL1FTm893700.jpg" />
</a>
<p class="count_down"></p>
</div>
<div class="sg_banner sg_small">
<a href="http://s.yhd.com/list/32268" data-shanActivityId="32268"
										title="瑞士军刀开学季" data-tc="ad.0.0.16330-30816799.1"
										data-ref="16330_30816799_1" target="_blank">
<img alt="瑞士军刀开学季" src="images/blank.gif"
										original="http://d6.yihaodianimg.com/N09/M02/DF/DD/ChEi2FbP6ReAAdlhAAB-5K0GEoY84400.jpg" />
</a>
<p class="count_down"></p>
</div>
<div class="sg_banner sg_small">
<a href="http://s.yhd.com/list/32682" data-shanActivityId="32682"
										title="笛莎公主出游季" data-tc="ad.0.0.16330-30915047.2"
										data-ref="16330_30915047_2" target="_blank">
<img alt="笛莎公主出游季" src="images/blank.gif"
										original="http://d6.yihaodianimg.com/N09/M01/E0/CC/ChEi2FbQIVmAfGtjAADFgctVZDI65700.jpg" />
</a>
<p class="count_down"></p>
</div>
<div class="sg_banner sg_small">
<a href="http://cms.yhd.com/sale/ldtqCfLffdr" title="宠爱她，呵护她 大牌美护9.9元起"
										data-tc="ad.0.0.16330-30915151.3" data-ref="16330_30915151_3"
										target="_blank">
<img alt="宠爱她，呵护她 大牌美护9.9元起" src="images/blank.gif"
										original="http://d9.yihaodianimg.com/N09/M02/E0/EE/ChEi2FbQM4-Aez3eAAC6PPuS_7M06900.jpg" />
</a>
<p class="count_down"></p>
</div>
<div class="sg_banner sg_small">
<a href="http://s.yhd.com/list/32662" data-shanActivityId="32662"
										title="新百伦 春季焕新季" data-tc="ad.0.0.16330-30915114.4"
										data-ref="16330_30915114_4" target="_blank">
<img alt="新百伦 春季焕新季" src="images/blank.gif"
										original="http://d7.yihaodianimg.com/N09/M07/E1/14/ChEi2VbQLMWAEdd5AABJrwDFuJw54700.jpg" />
</a>
<p class="count_down"></p>
</div>
</div>
<div class="sg_tabcontent clearfix">
<div class="sg_banner sg_big">
<a href="http://s.yhd.com/list/32452" data-shanActivityId="32452"
										title="进口爱茉莉旗下品牌专场" data-recordTracker="1"
										data-tc="ad.0.0.16331-30915187.1" data-ref="16331_30915187_1"
										target="_blank">
<img alt="进口爱茉莉旗下品牌专场" src="images/blank.gif"
										original="http://d8.yihaodianimg.com/N08/M0A/E1/B4/ChEi1lbQR1-AJMQaAADJN_PvMC097300.jpg" />
</a>
<p class="count_down"></p>
</div>
<div class="sg_banner sg_small">
<a href="http://s.yhd.com/list/32592" data-shanActivityId="32592"
										title="ONEBUYE春上新" data-tc="ad.0.0.16332-30915118.1"
										data-ref="16332_30915118_1" target="_blank">
<img alt="ONEBUYE春上新" src="images/blank.gif"
										original="http://d6.yihaodianimg.com/N06/M03/AC/09/CgQIzlbQLcyAAF1gAABfHdbKAv879300.jpg" />
</a>
<p class="count_down"></p>
</div>
<div class="sg_banner sg_small">
<a href="http://s.yhd.com/list/32811" data-shanActivityId="32811"
										title="阿迪达斯 新品领跑春天" data-tc="ad.0.0.16332-30915123.2"
										data-ref="16332_30915123_2" target="_blank">
<img alt="阿迪达斯 新品领跑春天" src="images/blank.gif"
										original="http://d6.yihaodianimg.com/N06/M00/AC/0A/CgQIzlbQLlCABrbVAACC03ujlIE33400.jpg" />
</a>
<p class="count_down"></p>
</div>
<div class="sg_banner sg_small">
<a href="http://s.yhd.com/list/32736" data-shanActivityId="32736"
										title="女人节提前购" data-tc="ad.0.0.16332-30915120.3"
										data-ref="16332_30915120_3" target="_blank">
<img alt="女人节提前购" src="images/blank.gif"
										original="http://d9.yihaodianimg.com/N09/M04/E0/E5/ChEi2FbQLgqAejYUAACUXbfg-u803700.jpg" />
</a>
<p class="count_down"></p>
</div>
<div class="sg_banner sg_small">
<a href="http://s.yhd.com/list/32824" data-shanActivityId="32824"
										title="巴布豆开学季特卖" data-tc="ad.0.0.16332-30915111.4"
										data-ref="16332_30915111_4" target="_blank">
<img alt="巴布豆开学季特卖" src="images/blank.gif"
										original="http://d6.yihaodianimg.com/N06/M04/AB/0D/CgQIzVbQLFaAXufxAABvF3qrFWU73500.jpg" />
</a>
<p class="count_down"></p>
</div>
</div>
<div class="sg_tabcontent clearfix">
<div class="sg_banner sg_big">
<a href="http://s.yhd.com/list/32704" data-shanActivityId="32704"
										title="百丽新风尚 钜惠来袭" data-recordTracker="1"
										data-tc="ad.0.0.16333-30882142.1" data-ref="16333_30882142_1"
										target="_blank">
<img alt="百丽新风尚 钜惠来袭" src="images/blank.gif"
										original="http://d8.yihaodianimg.com/N07/M06/EC/A5/ChEbvFbO0xeALcavAACv5rxI1Kg80700.jpg" />
</a>
<p class="count_down"></p>
</div>
<div class="sg_banner sg_small">
<a href="http://s.yhd.com/list/32590" data-shanActivityId="32590"
										title="大牌香水专场" data-tc="ad.0.0.16334-30915189.1"
										data-ref="16334_30915189_1" target="_blank">
<img alt="大牌香水专场" src="images/blank.gif"
										original="http://d8.yihaodianimg.com/N05/M08/11/B2/CgQI0lbQSMmAaXSRAAC6PPuS_7M27400.jpg" />
</a>
<p class="count_down"></p>
</div>
<div class="sg_banner sg_small">
<a href="http://s.yhd.com/list/32680" data-shanActivityId="32680"
										title="浪莎内衣女人节" data-tc="ad.0.0.16334-30915112.2"
										data-ref="16334_30915112_2" target="_blank">
<img alt="浪莎内衣女人节" src="images/blank.gif"
										original="http://d9.yihaodianimg.com/N08/M02/E1/72/ChEi1VbQLImAXZQbAAC6-aUJRe475800.jpg" />
</a>
<p class="count_down"></p>
</div>
<div class="sg_banner sg_small">
<a href="http://s.yhd.com/list/32466" data-shanActivityId="32466"
										title="杜嘉班纳女人节专场" data-tc="ad.0.0.16334-30915124.3"
										data-ref="16334_30915124_3" target="_blank">
<img alt="杜嘉班纳女人节专场" src="images/blank.gif"
										original="http://d8.yihaodianimg.com/N05/M05/6D/81/ChEbulbQLrCAYpkqAAA6Ka_WARA62600.jpg" />
</a>
<p class="count_down"></p>
</div>
<div class="sg_banner sg_small">
<a href="http://s.yhd.com/list/32566" data-shanActivityId="32566"
										title="大牌护肤品牌专场" data-tc="ad.0.0.16334-30915183.4"
										data-ref="16334_30915183_4" target="_blank">
<img alt="大牌护肤品牌专场" src="images/blank.gif"
										original="http://d7.yihaodianimg.com/N10/M02/E4/86/ChEi21bQRpOAUdYmAACwS_MQaQE54100.jpg" />
</a>
<p class="count_down"></p>
</div>
</div>
</div>
</div>
<!--tab end -->
</textarea>
			</div>
		</div>
	</div>
	<div id="provinceboxDiv"></div>
	<div class="ft_wrap">
		<div id="footerIcon" class="wrap ft_footer_service clearfix">
			<a target="_blank" data-ref="17536_18431204_1"
				data-tc="ad.0.0.17536-18431204" title=""
				href="http://cms.yhd.com/cms/view.do?topicId=24123"> <img
				src="images/CgQI0lWskgmADBnsAAAPZvcSh3E68900.jpg" alt=""> <b>正品保障</b>
				<span>正品行货 放心选购</span>
			</a> <a target="_blank" data-ref="17539_18431238_1"
				data-tc="ad.0.0.17539-18431238" title=""
				href="http://www.yhd.com/marketing/deliveryinfo/deliveryInfo.do">
				<img src="images/ChEbulWsk4iADa_aAAAM544hHN818600.jpg" alt="">
				<b>满68包邮</b> <span>满68元 免运费</span>
			</a> <a target="_blank" data-ref="17542_18431289_1"
				data-tc="ad.0.0.17542-18431289" title=""
				href="http://cms.yhd.com/cms/view.do?topicId=24071"> <img
				src="images/CgQIz1WslI-Adao3AAAN5b_ut2I80100.jpg" alt=""> <b>售后无忧</b>
				<span>7天无理由退货</span>
			</a> <a target="_blank" data-ref="17545_18434559_1"
				data-tc="ad.0.0.17545-18434559" title=""
				href="http://cms.yhd.com/cms/view.do?topicId=24111"> <img
				src="images/ChEi11WsyiyALBbiAAAN9lEEK5M33200.jpg" alt=""> <b>准时送达</b>
				<span>收货时间由你做主</span>
			</a>
		</div>
		<div class="wrap ft_service_link clearfix">
			<div data-tpa="YHD_GLOBAl_FOOTER_HELP" class="ft_help_list clearfix"
				id="bottomHelpLinkId">
				<dl>
					<dt>新手入门</dt>
					<dd>
						<a target="_blank" data-tcd="AD.9075_4918049_1"
							data-ref="9075_4918049_1"
							href="http://cms.yhd.com/cms/view.do?topicId=24091">购物流程</a>
					</dd>
					<dd>
						<a target="_blank" data-tcd="AD.9075_4918070_2"
							data-ref="9075_4918070_2"
							href="http://cms.yhd.com/cms/view.do?topicId=24223">会员制度</a>
					</dd>
					<dd>
						<a target="_blank" data-tcd="AD.9075_4918532_3"
							data-ref="9075_4918532_3"
							href="http://cms.yhd.com/cms/view.do?topicId=24095">订单查询</a>
					</dd>
					<dd>
						<a target="_blank" data-tcd="AD.9075_4918536_4"
							data-ref="9075_4918536_4"
							href="http://cms.yhd.com/cms/view.do?topicId=24102">发票制度</a>
					</dd>
					<dd>
						<a target="_blank" data-tcd="AD.9075_4918577_5"
							data-ref="9075_4918577_5"
							href="http://cms.yhd.com/cms/view.do?topicId=24099">常见问题</a>
					</dd>
				</dl>
				<dl>
					<dt>支付方式</dt>
					<dd>
						<a target="_blank" data-tcd="AD.9077_18431408_1"
							data-ref="9077_18431408_1"
							href="http://cms.yhd.com/cms/view.do?topicId=24107">货到付款</a>
					</dd>
					<dd>
						<a target="_blank" data-tcd="AD.9077_18431423_2"
							data-ref="9077_18431423_2"
							href="http://cms.yhd.com/cms/view.do?topicId=24126">网上支付</a>
					</dd>
					<dd>
						<a target="_blank" data-tcd="AD.9077_18431424_3"
							data-ref="9077_18431424_3"
							href="http://cms.yhd.com/cms/view.do?topicId=24128">银行转账</a>
					</dd>
					<dd>
						<a target="_blank" data-tcd="AD.9077_18431439_4"
							data-ref="9077_18431439_4"
							href="http://cms.yhd.com/cms/view.do?topicId=24114">礼品卡支付</a>
					</dd>
					<dd>
						<a target="_blank" data-tcd="AD.9077_18431457_5"
							data-ref="9077_18431457_5"
							href="http://cms.yhd.com/cms/view.do?topicId=24104">其他支付</a>
					</dd>
				</dl>
				<dl>
					<dt>配送服务</dt>
					<dd>
						<a target="_blank" data-tcd="AD.9079_18431491_2"
							data-ref="9079_18431491_2"
							href="http://www.yhd.com/marketing/deliveryinfo/deliveryInfo.do?tp=2091.0.0.0.0.KueGJlQ-11-CZDOe">配送范围及运费</a>
					</dd>
					<dd>
						<a target="_blank" data-tcd="AD.9079_18432687_3"
							data-ref="9079_18432687_3"
							href="http://cms.yhd.com/cms/view.do?topicId=24113">配送进度查询</a>
					</dd>
					<dd>
						<a target="_blank" data-tcd="AD.9079_18432688_4"
							data-ref="9079_18432688_4"
							href="http://cms.yhd.com/cms/view.do?topicId=24483">自提服务</a>
					</dd>
					<dd>
						<a target="_blank" data-tcd="AD.9079_18432689_5"
							data-ref="9079_18432689_5"
							href="http://cms.yhd.com/cms/view.do?topicId=24090">商品验货与签收</a>
					</dd>
				</dl>
				<dl>
					<dt>售后保障</dt>
					<dd>
						<a target="_blank" data-tcd="AD.9081_4919277_1"
							data-ref="9081_4919277_1"
							href="http://cms.yhd.com/cms/view.do?topicId=24071">退换货政策</a>
					</dd>
					<dd>
						<a target="_blank" data-tcd="AD.9081_4919280_2"
							data-ref="9081_4919280_2"
							href="http://cms.yhd.com/cms/view.do?topicId=24366">退换货流程</a>
					</dd>
					<dd>
						<a target="_blank" data-tcd="AD.9081_4919302_3"
							data-ref="9081_4919302_3"
							href="http://cms.yhd.com/cms/view.do?topicId=24127">退款说明</a>
					</dd>
					<dd>
						<a target="_blank" data-tcd="AD.9081_13586489_4"
							data-ref="9081_13586489_4"
							href="http://cms.yhd.com/cmsPage/show.do?pageId=73523">购买延保服务</a>
					</dd>
					<dd>
						<a target="_blank" data-tcd="AD.9081_18432701_5"
							data-ref="9081_18432701_5"
							href="http://cms.yhd.com/cms/view.do?topicId=24088">联系客服</a>
					</dd>
				</dl>
				<dl>
					<dt>商家合作</dt>
					<dd>
						<a target="_blank" data-tcd="AD.9083_18432703_1"
							data-ref="9083_18432703_1"
							href="http://cms.yhd.com/cmsPage/show.do?pageId=94952">商家入驻</a>
					</dd>
					<dd>
						<a target="_blank" data-tcd="AD.9083_18432706_2"
							data-ref="9083_18432706_2"
							href="http://cms.yhd.com/cms/view.do?topicId=24063">商必赢</a>
					</dd>
					<dd>
						<a target="_blank" data-tcd="AD.9083_18432707_3"
							data-ref="9083_18432707_3"
							href="http://xue.yhd.com/showlist/rulenew/rule.html">平台规则</a>
					</dd>
					<dd>
						<a target="_blank" data-tcd="AD.9083_18432708_4"
							data-ref="9083_18432708_4" href="http://b2b.yhd.com/index.do">企业采购</a>
					</dd>
				</dl>
			</div>
			<!--footer 二维码 begin -->
			<div id="footerQRcode" data-tpa="YHD_GLOBAl_HEADER_MOBILE"
				class="ft_code_wrap clearfix">
				<div class="ft_mobile_code clearfix">
					<p>1号店客户端</p>
					<img alt="1号店客户端二维码"
						src="images/CgQCr1KW1juAFH9YAAAatCrcuRI48200.png">
				</div>
				<div class="ft_mobile_code clearfix">
					<p>1号店微信</p>
					<img alt="1号店官方微信二维码"
						src="images/CgQCtlKW1RSAe6dIAAAcun_R_Wk58300.jpg">
				</div>
			</div>
		</div>
		<!--footer 二维码 end-->
		<div data-tpa="YHD_GLOBAl_FOOTER" id="footer">
			<p class="ft_footer_link">
				<a target="_blank" data-ref="YHD_FOOTER_NAV_about"
					href="http://cms.yhd.com/cms/view.do?topicId=24183">关于1号店</a>|<a
					target="_blank" data-ref="YHD_FOOTER_NAV_team"
					href="http://www.yhd.com/cms/view.do?topicId=8121">我们的团队</a>|<a
					target="_blank" data-ref="YHD_FOOTER_NAV_union"
					href="http://union.yhd.com/passport/login_input.do">网站联盟</a>|<a
					target="_blank" data-ref="YHD_FOOTER_NAV_hotProduct"
					href="http://www.yhd.com/hotq/">热门搜索</a>|<a target="_blank"
					data-ref="YHD_FOOTER_NAV_friendlink"
					href="http://www.yhd.com/marketing/friendlink.html">友情链接</a>|<a
					target="_blank" data-ref="YHD_FOOTER_NAV_popwords"
					href="http://club.yhd.com">1号店社区</a>|<a target="_blank"
					data-ref="YHD_FOOTER_NAV_hr" href="http://zhaopin.yhd.com">诚征英才</a>|<a
					rel="nofollow" target="_blank" data-ref="YHD_FOOTER_NAV_apply"
					href="http://shangjia.yhd.com">商家登录</a>|<a rel="nofollow"
					target="_blank" data-ref="YHD_FOOTER_NAV_suppliers"
					href="http://supplier.yhd.com">供应商登录</a>|<a rel="nofollow"
					target="_blank" data-ref="YHD_FOOTER_NAV_zx110"
					href="http://www.zx110.org/cxs/">放心搜</a>|<a target="_blank"
					data-ref="YHD_FOOTER_NAV_eat" href="http://item.yhd.com/">1号店新品</a>|<a
					target="_blank" data-ref="YHD_FOOTER_NAV_open"
					href="http://fuwu.yhd.com">开放平台</a>|<a rel="nofollow"
					target="_blank" href="http://www.wal-martchina.com">沃尔玛</a>
			</p>
			<p class="ft_footer_link">
				<a rel="nofollow" target="_blank" href="http://www.miibeian.gov.cn/">沪ICP备13044278号</a>|<a>合字B1.B2-20130004</a>|<a
					rel="nofollow" target="_blank" data-ref="YHD_Footer_Licence"
					href="http://d7.yihaodianimg.com/N06/M00/CC/B5/CgQIzlYwjGmAbQ-9AAHXHGHiMkU51700.jpg">营业执照</a>|<a
					rel="nofollow" target="_blank"
					href="http://d8.yihaodianimg.com/N07/M06/45/9B/CgQI0FQRFB2ABIWaAARgpiKdkvg12600.jpg">互联网药品信息服务资格证</a>|<a
					rel="nofollow" target="_blank"
					href="http://d6.yihaodianimg.com/N05/M0A/A9/D6/CgQI0lQRE_OATEfzAAO0AcF4zkQ56000.jpg">互联网药品交易服务资格证</a>
			</p>
			<p>Copyright&copy; 1号店网上超市 2007-2016，All Rights Reserved</p>
			<small class="ft_pic_link" id="footerbanner2LazyLoad"> <a
				rel="nofollow" target="_blank" href="https://online.unionpay.com/">
					<img alt="" src="images/CgMBmVDzwyaAaIMBAAAJZgSEr6I65200.jpg">
			</a> | <a rel="nofollow"> <img alt=""
					src="images/CgQCr1Dzwj2AVUL0AAA-ic2BxNw39500.jpg">
			</a> | <a rel="nofollow" target="_blank"
				href="http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&entyId=20131129184754956">
					<img alt="" src="images/CgQCrlDzwnKAUkfSAAAIPrrML6M92400.jpg">
			</a> | <a rel="nofollow" target="_blank" href="http://www.zx110.org/">
					<img alt="" src="images/CgQCsVDzw0GABUElAADHlvRfNUk94600.jpg">
			</a> | <a rel="nofollow" target="_blank" href="http://www.shodr.org/">
					<img alt="" src="images/CgMBmVLfYZGALWNHAAAOxFbda9472600.gif">
			</a> | <a rel="nofollow" target="_blank"
				href="http://net.china.com.cn/index.htm"> <img alt=""
					src="images/CgQCr1PQy1CAF7vaAABDexsiEYM24800.jpg">
			</a> | <a rel="nofollow" target="_blank"
				href="https://ss.knet.cn/verifyseal.dll?sn=e13050631010040492h5mq000000&ct=df&a=1&pa=500267">
					<img alt="" src="images/CgQCrlPYTqCASlHXAAAd82JE0eA31000.png">
			</a> | <a rel="nofollow" target="_blank"
				href="https://search.szfw.org/cert/l/CX20150608010268010812"> <img
					alt="" src="images/ChEi1FYXHcOAVk_WAAAL2r2-yfo10200.jpg">
			</a> | <a rel="nofollow" target="_blank"
				href="http://club.yhd.com/guide/922?tzm=shanghaigongshangju"> <img
					alt="" src="images/CgQI0lXmj5iAPoZJAAAMUQgIYEc49100.jpg">
			</a> |
			</small>
		</div>
	</div>
	<!--楼层电梯 begin -->
	<div data-tpa="YHD_HOMEPAGE_FLOORNAV" class="floor_left_box">
		<a data-tpc="1" href="javascript:void(0)"> <i
			class="left_iconfont"></i> <em class="two_line">进口海购</em>
		</a> <a data-tpc="2" href="javascript:void(0)"> <i
			class="left_iconfont"></i> <em class="two_line">活色生鲜</em>
		</a> <a data-tpc="3" href="javascript:void(0)"> <i
			class="left_iconfont"></i> <em class="two_line">食品饮料</em>
		</a> <a data-tpc="4" href="javascript:void(0)"> <i
			class="left_iconfont"></i> <em class="two_line">个护厨卫</em>
		</a> <a data-tpc="5" href="javascript:void(0)"> <i
			class="left_iconfont"></i> <em class="two_line">母婴玩具</em>
		</a> <a data-tpc="6" href="javascript:void(0)"> <i
			class="left_iconfont"></i> <em class="two_line">精品家居</em>
		</a> <a data-tpc="7" href="javascript:void(0)"> <i
			class="left_iconfont"></i> <em class="two_line">流行百货</em>
		</a> <a data-tpc="8" href="javascript:void(0)"> <i
			class="left_iconfont"></i> <em class="two_line">手机家电</em>
		</a> <a data-tpc="9" href="javascript:void(0)"> <i
			class="left_iconfont"></i> <em>团购</em>
		</a> <a data-tpc="10" href="javascript:void(0)"> <i
			class="left_iconfont"></i> <em>闪购</em>
		</a> <a class="leftfloor_red toTop" href="javaScript:void(0);"> <i
			class="left_iconfont"></i> <em class="two_line">返回顶部</em>
		</a>
	</div>
	<script src="js/global_index_top_new.js?1560110" type="text/javascript"></script>
	<script src="js/index.js?1560110" type="text/javascript"></script>
	<script src="js/global_event_listen.js?1560110" type="text/javascript"></script>
	<div>
		<span style="color: #FFFFFF"> 14!$ 4%& 4#@ 10!$ , </span> <span
			style="color: #FFFFFF">1560110</span>
	</div>
	<script>
		(function($) {
			try {
				document.getElementById("headerAllProvince").style.height = "300px";
				(function() {
					var a = $(".headerNavWrap").find("a:contains('1号钱包')");
					if (a) {
						var b = a.next();
						if (b) {
						}
					}
				})();
			} catch (err) {
			}
			try {
				window.webPercent = 60;
			} catch (err) {
			}
			try {
				function sendGtags() {
					var a = $.cookie("guid");
					var c = $.cookie("provinceId");
					if ($.trim(a) != "" && $.trim(c) != "") {
						var b = new Image();
						b.src = "http://cms.gtags.net/p?a=13&xid=" + a
								+ "&yhd_cityid=" + c
					}
				}
				$(function() {
					setTimeout(sendGtags, 30 * 1000)
				});
			} catch (err) {
			}
			try {
				function sendpingyou() {
					var a = $.cookie("guid");
					if ($.trim(a) != "") {
						var b = "timg" + new Date().getTime();
						window[b] = new Image(1, 1);
						window[b].src = "http://cm.ipinyou.com/yhd/cms.gif?sid="
								+ a
					}
				}
				$(function() {
					setTimeout(sendpingyou, 30 * 1000)
				});
			} catch (err) {
			}
			try {
				function sendGdt() {
					var a = $.cookie("guid");
					if ($.trim(a) != "") {
						var b = "timg" + new Date().getTime();
						window[b] = new Image(1, 1);
						window[b].src = "http://cm.e.qq.com/cm.fcg?a=1639782535&j="
								+ a + "&time=" + new Date().getTime()
					}
				}
				$(function() {
					setTimeout(sendGdt, 30 * 1000)
				});
			} catch (err) {
			}
			try {
				(function() {
					function a() {
						var b = $.cookie("guid");
						if ($.trim(b) != "") {
							var c = "timg" + new Date().getTime();
							window[c] = new Image(1, 1);
							window[c].src = "http://cm.pos.baidu.com/dmpcm?userid=10644715&local_cookie="
									+ b + "&timestamp=" + new Date().getTime()
						}
					}
					setTimeout(a, 30 * 1000)
				})();
			} catch (err) {
			}
			try {
				(function() {
					function a() {
						var b = $.cookie("guid");
						if ($.trim(b) != "") {
							var c = "timg" + new Date().getTime();
							window[c] = new Image(1, 1);
							window[c].src = "http://dsp.brand.sogou.com/sl?userid=1379438&local_cookie="
									+ b + "&timestamp=" + new Date().getTime()
						}
					}
					setTimeout(a, 30 * 1000)
				})();
			} catch (err) {
			}
			try {
				(function() {
					var a = $("#loucengBanner");
					a.attr("id", "loucengBanner_update");
					jQuery(function() {
						setTimeout(function() {
							var b = $("#loucengBanner_update");
							b.attr("id", "loucengBanner");
							YHD.HomePage.delBlankAjaxAD()
						}, 3000)
					})
				})();
			} catch (err) {
			}
		})(jQuery)
	</script>
	<textarea style="display: none" id="ajaxReplaceAdvCodesData">INDEX2_FLOORTG_ZLXF_MR,INDEX2_FLOOR7_LUNBO_PIC2,INDEX2_FLOORXH_LUNBO_PIC2,INDEX2_FLOOR3C_LUNBO_PIC2,INDEX2_FLOORLB_LUNBO_PIC2,INDEX2_FLOOR9_LUNBO_PIC2,INDEX2_FLOOR8_LUNBO_PIC2,INDEX2_FLOORFOOD_ZLXF_MR,INDEX2_FLOORSX_ZLXF_MR,INDEX2_FLOORFOOD_LUNBO_PIC2,INDEX2_FLOORXH_ZLSF_MR,INDEX2_FLOOR9_ZLXF_MR,INDEX2_FLOORLB_ZLXF_MR,INDEX2_FLOORSX_LUNBO_PIC2,INDEX2_FLOOR7_ZLXF_MR,INDEX2_SALEAD_LOUCENGSHANGFANG_DEFAULT,INDEX2_FLOOR3C_ZLSF_MR,INDEX2_FLOORXH_ZLXF_MR,INDEX2_FLOOR3C_ZUOLANXIAFANGPIC_DEFAULT,INDEX2_FLOOR8_ZLXF_MR</textarea>
	<textarea style="display: none" id="ajaxReplaceOrientationsData">INDEX2_FLOORFOOD_YL_ZXGG,INDEX2_FLOORFOOD_YL_ZSGG,INDEX2_FLOORFOOD_YL_YSGG,INDEX2_FLOORFOOD_YL_YXGG</textarea>

</body>
</html>