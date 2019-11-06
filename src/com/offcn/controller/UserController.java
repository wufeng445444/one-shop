package com.offcn.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.offcn.bean.OneUser;
import com.offcn.service.UserService;


@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	
	//主界面
	@RequestMapping(value="list",method=RequestMethod.GET)
	public ModelAndView selectStudent() {
		ModelAndView mv = new ModelAndView("list");
		return mv;
	}
	
	
	
	/*跳转到注册页面  开始*/
	@RequestMapping(value="reg")
	public String skipReg() {
		return "redirect:/reg.jsp";
	}
	/*判断手机号是否存在*/
	@ResponseBody
	@RequestMapping(value="isPhoneid")
	public boolean isPhoneid(String phoneid) {
		boolean b =  userService.isPhoneid(phoneid);
		return b;
	}
	
	/*发送验证码*/
	@ResponseBody
	@RequestMapping(value="sendNote")
	public boolean sendNote( String phone,HttpSession session) {
		boolean sms=userService.sendNote(phone,session);
		return sms;
	}
	// 用户注册
	@RequestMapping("register")
	public String registerUser(OneUser oneUser,@RequestParam("yanzhenma")String yanzhenma,HttpSession session) {
		oneUser.setUname(oneUser.getPhoneid().substring(oneUser.getPhoneid().length()-4)+"用户");
		String phoneVerify = oneUser.getPhoneid()+"#"+yanzhenma;
		boolean isSuccess=false;
		if(phoneVerify.equals(session.getAttribute("check_code"))) {
			DateFormat df  = new SimpleDateFormat("yyyy-MM-dd:HH-mm-ss");
			String format = df.format(new Date());
			oneUser.setUcrDate(format);
			isSuccess = userService.insertUser(oneUser);
		}
		if(isSuccess) {
			return "redirect:/login.jsp";
		}else {
			return "redirect:/reg.jsp";
		}	
	}
	
	//注册界面已完成
//  找回密码  1
	@RequestMapping("/changePwd")
	public ModelAndView changePwd(@RequestParam("phone") String phone) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/forget2.jsp");
		modelAndView.addObject("phone", phone);
		return modelAndView;
	}
	
	//判断手机号是否存在
		@ResponseBody
		@RequestMapping("isExist")
		public boolean isExistPhone(String phone) {
			OneUser user =  userService.isExistPhone(phone);
			return user==null ? false : true;
		}
		
	
	
	//找回密码判断手机验证码  成功调转到页面3  
	@RequestMapping("isCodeTrue")
	public ModelAndView isCodeTrue(String phone,HttpSession session) {
		//此为你输入的值
		int code=123456;
		String newCode = phone+"#"+code;
		session.setAttribute("check_code", newCode);
		//获取原来存到域对象中的验证码的值
		String check_code = (String) session.getAttribute("check_code");
		ModelAndView view = new ModelAndView();
		if(newCode.equals(check_code)) {
			view.setViewName("/forget3.jsp");
			view.addObject("phone", phone);
			return view;
		}else {
			view.setViewName("/forget2.jsp");
			view.addObject("phone", phone);
			return view;
		}
	}
	// 修改密码
		@RequestMapping("updatePwd")
		public ModelAndView updatePwd(OneUser user,HttpSession session) {
			System.out.println(user);
			int i = userService.updatePwd(user);
			ModelAndView view = new ModelAndView();
			if(i == 1 || i > 0) {
				view.setViewName("/forget4.jsp");
				view.addObject("success",true);
				session.removeAttribute("user");
				return view;
			}else {
				view.setViewName("/forget4.jsp");
				view.addObject("success",false);
				return view;
			}
		}
	
	//忘记密码修改完成
	
	//登录实现验证码校验
	@ResponseBody
	@RequestMapping("newCode")
	public String getNewCode(HttpSession session) {
		String string = UUID.randomUUID().toString();
		String string2 = string.substring(string.length()-4);
		session.setAttribute("code",string2);
		return string2;
	}
	
	
	// 登录功能的实现

	@RequestMapping("/login")
	public String loginUser(@RequestParam("phone")String phone,@RequestParam("pwd")String pwd,HttpSession session) {
		OneUser user =  userService.selectUser(phone,pwd);
		if(user != null) {
			session.setAttribute("user", user);
			return "redirect:/index.jsp";
		}
		return "redirect:/login.jsp";
	}
	
	
	
	
	public static void main(String[] args) {
		String string = UUID.randomUUID().toString();
		String string2 = string.substring(string.length()-4);
		System.out.println(string);
		System.out.println(string2);
	}
}
