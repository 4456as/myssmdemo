package com.itheima.dao;

import java.util.List;

import com.itheima.po.Order;
import com.itheima.po.Travelgroup;
import com.itheima.po.User;

public interface UserHistoryDao {
	public User findUserGroup(Integer userid);//多对多 我参加过的团 嵌套查询+嵌套结果
	public User findUserOrder(Integer userid);//一对多 我的历史订单 嵌套结果
	public User findUserScenery(Integer userid);//跨多表多对多 我去过的景点 嵌套结果
	public Travelgroup findGroupAgency(Integer groupid);//一对一 嵌套查询旅游团所属的旅行社信息
}
