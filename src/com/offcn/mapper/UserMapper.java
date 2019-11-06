package com.offcn.mapper;


import org.apache.ibatis.annotations.Param;

import com.offcn.bean.OneUser;

public interface UserMapper {


	public OneUser isPhoneid(@Param("phoneid")String phoneid);

	public int insertUser(OneUser oneUser);

	public OneUser selectUser(@Param("phone")String phone, @Param("pwd")String pwd);

	public OneUser isExistPhone(@Param("phone")String phone);

	public int updatePwd(OneUser user);

}
