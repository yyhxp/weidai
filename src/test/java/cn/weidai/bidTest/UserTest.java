package cn.weidai.bidTest;

import java.util.Date;
import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.weidai.pojo.LendRecord;
import cn.weidai.service.lendRecord.LendRecordService;
import cn.weidai.service.user.UserService;

public class UserTest {
  
	public ApplicationContext act=null;
	public Logger logger=Logger.getLogger(UserTest.class);
	public UserService userServiceImpl=null;
	
	@Before
	public void before(){
		act = new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
		userServiceImpl=(UserService)act.getBean("userServiceImpl");	
	}
	
	
	
	@Test
	public void test07(){		
						
				int i=userServiceImpl.updateUBalanceById(1, 5000.00);				
				if(i>0){
					logger.debug("插入成功！——————————————————————————————————————————");
				}
	}
	
	
	
	
	
	
	
}
