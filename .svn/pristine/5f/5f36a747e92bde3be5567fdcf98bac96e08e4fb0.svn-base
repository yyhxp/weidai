package cn.weidai.service.alipay.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.weidai.dao.mapper.PayUserMapper;
import cn.weidai.pojo.PayUser;
import cn.weidai.pojo.UserExample;
import cn.weidai.service.alipay.PayUserService;

@Service("payUserService")
public class PayUserServiceImpl implements PayUserService {
	
	@Autowired
	private PayUserMapper userMapper;

	@Override
	public void saveUser(PayUser user) {
		userMapper.insert(user);
	}

	@Override
	public void updateUserById(PayUser user) {
		userMapper.updateByPrimaryKeySelective(user);
	}

	@Override
	public void deleteUserById(String userId) {
		userMapper.deleteByPrimaryKey(userId);
	}

	@Override
	public PayUser getUserById(String userId) {
		
		return userMapper.selectByPrimaryKey(userId);
	}
	
	@Override
	public List<PayUser> getUserList() {
		
		UserExample ue = new UserExample();
		List<PayUser> userList = userMapper.selectByExample(ue);
		
		return userList;
	}

}
