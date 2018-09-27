package cn.weidai.service.user;

import org.apache.ibatis.annotations.Param;
import cn.weidai.pojo.Bank;

import cn.weidai.pojo.User;

public interface UserService {
	
	public User getUserTest(int uId);

    public User logindo(User user);

	public User getUserTest1(int uId);
    
	public User getUsermima(User user);

	public int getuserzhuce(@Param("uPhone")String uPhone );
	    
	public int getuserzhuce1(@Param("uPhone")String uPhone ,@Param("uPassword")String uPassword);
   
	public User getwangjimima(User user);

	public int getxiugai(@Param("uPassword")String uPassword,@Param("uPhone")String uPhone);
 
    public Integer getwangji(@Param("uPhone") String uPhone);

    public Integer getwangji1(@Param("uIDCard") String uIDCard);

	public int addUserMonney(User user);

	public int getUserInfo(User user);

	public int getUserCard(User user);

	public int addUserCard(Bank bank);

	public int selectUserId(User user);

	int updateUBalanceById(Integer uId, Double uBalance);
}
