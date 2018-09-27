package cn.weidai.service.user;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import cn.weidai.dao.user.UserMapper;
import cn.weidai.pojo.Bank;
import cn.weidai.pojo.User;

@Service
public class UserServiceImpl implements UserService {
	@Resource
	private UserMapper userMapper;
	//测试
	public User getUserTest(int uId) {
		return userMapper.getUserTest(uId);
	}
    // 登录 查询
	@Override
	public User logindo(User user) {
		// TODO Auto-generated method stub
		return userMapper.logindo(user);
	}
	//查询所有用户
	@Override
	public User getUserTest1(int uId) {
		return userMapper.getUserTest1(uId);
	}
	@Override
	public User getUsermima(User user) {
		// TODO Auto-generated method stub
		return userMapper.getUsermima(user);
	}
	@Override
	public int getuserzhuce(@Param("uPhone")String uPhone ) {
		// TODO Auto-generated method stub
		return userMapper.getuserzhuce(uPhone);
	}
	@Override
	public int getuserzhuce1(@Param("uPhone")String uPhone ,@Param("uPassword")String uPassword) {
		// TODO Auto-generated method stub
		return userMapper.getuserzhuce1(uPhone, uPassword);
	}
	@Override
	 public User getwangjimima(User user){
		// TODO Auto-generated method stub
		return userMapper.getwangjimima(user);
	}

	public int getxiugai(@Param("uPassword")String uPassword,@Param("uPhone")String uPhone) {
		return  userMapper.getxiugai(uPassword,uPhone);
	}
	@Override
	public Integer getwangji(String uPhone) {
		// TODO Auto-generated method stub
		return userMapper.getwangji(uPhone);
	}
	@Override
	public Integer getwangji1(String uIDCard) {
		// TODO Auto-generated method stub
		return userMapper.getwangji1(uIDCard);
	}
	@Override
	public int addUserMonney(User user) {
		// TODO Auto-generated method stub
		return userMapper.addUserMonney(user);
	}
	@Override
	public int getUserInfo(User user){
		return userMapper.getUserInfo(user);
	}
	@Override
	public int getUserCard(User user) {
		return userMapper.getUserCard(user);
	}
	@Override
	public int addUserCard(Bank bank) {
		// TODO Auto-generated method stub
		return userMapper.addUserCard(bank);
	}
	@Override
	public int selectUserId(User user){
		return userMapper.selectUserId(user);
	}
	@Override
	public int updateUBalanceById(Integer uId, Double uBalance) {
		// TODO Auto-generated method stub
		return userMapper.updateUBalanceById(uId, uBalance);
	}
	
}
