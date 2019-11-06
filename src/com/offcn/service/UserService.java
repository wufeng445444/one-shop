package com.offcn.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offcn.bean.OneUser;
import com.offcn.mapper.UserMapper;
import com.offcn.until.SendMessage;


@Service
public class UserService {
	@Autowired
	private UserMapper userMapper;

	public boolean isPhoneid(String phoneid) {
		OneUser user =  userMapper.isPhoneid(phoneid);
		System.out.println(user+"user=========");
		if(user == null) {
			return true;
		}
		return false;
	}

	public boolean insertUser(OneUser oneUser) {
		int i = userMapper.insertUser(oneUser);
		return i>0 ? true : false;
	}

	public OneUser selectUser(String phone, String pwd) {
		
		return userMapper.selectUser(phone,pwd);
	}

	public OneUser isExistPhone(String phone) {
		
		return userMapper.isExistPhone(phone);
	}

	public int updatePwd(OneUser user) {
		return userMapper.updatePwd(user);
	}

	public boolean sendNote(String phone, HttpSession session) {
		 //调用工具类来生成验证码
		//int code=SendMessage.createCode(phone);
		
		int code=123456;
		String newCode=phone+"#"+code;
		//判断验证码
		if ( code==0 ) {
			return false;
		}else {
			//将验证码和手机号放到session中记录是否匹配
			session.setAttribute("check_code", newCode);
			return true;
		}
	}
	
	

}
