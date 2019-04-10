package com.itheima.service;

import java.util.List;

import com.itheima.po.Travelgroup;
import com.itheima.po.User;

public interface UserHistoryService {
	public User findUserGroup(Integer userid);//多对多 我参加过的团
	public User findUserOrder(Integer userid);//一对多 我的历史订单
	public User findUserScenery(Integer userid);//多对多 我去过的景点
	public Travelgroup findGroupAgency(Integer groupid);//一对一 嵌套查询旅游团所属的旅行社信息
}
