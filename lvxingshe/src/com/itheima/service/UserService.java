package com.itheima.service;
import com.itheima.po.User;
/**
 * 用户Service层接口
 */
public interface UserService {
	// 通过账号获取用户
	public User findUser(Integer userid);
}
