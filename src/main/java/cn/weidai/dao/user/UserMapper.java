package cn.weidai.dao.user;

import org.apache.ibatis.annotations.Param;
import cn.weidai.pojo.Bank;

import cn.weidai.pojo.User;

public interface UserMapper {
	/**
	 * 测试
	 * @param uId
	 * @return
	 */
	public User getUserTest(int uId);

	/**
	 * 登陆
	 */

	public User logindo(User user);

	/**
	 * 查询用户
	 * 
	 * 
	 * */
	public User getUserTest1(int uId);
	/**
	 * 通过手机号修改密码
	 * @param uPhone
	 * @return
	 */
	public User getUsermima(User user );
	/**
	 * 注册验证用户名
	 * @param user
	 * @return
	 */
	public int getuserzhuce(@Param("uPhone")String uPhone );


	/**
	 * 注册
	 */
	public int getuserzhuce1(@Param("uPhone")String uPhone ,@Param("uPassword")String uPassword);



	/**
	 * 忘记密码
	 */
	public User getwangjimima(User user);


	/*
	 * 点击优选智投购买按钮，该标的剩余可投金额减少相应数额
	 * 何小平
	 */

	public int updateUBalanceById(@Param("uId")Integer uId,@Param("uBalance")Double uBalance);

	public int getxiugai(@Param("uPassword")String uPassword,@Param("uPhone")String uPhone);



	public Integer getwangji(@Param("uPhone") String uPhone);

	public Integer getwangji1(@Param("uIDCard") String uIDCard);

	public void modifUserById(User user);

	public int addUserMonney(User user);

	public int getUserInfo(User user);

	public int getUserCard(User user);

	public int addUserCard(Bank bank);

	public int selectUserId(User user);



}
