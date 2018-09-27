package cn.weidai.bidTest;

import java.util.Date;
import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.weidai.pojo.LendRecord;
import cn.weidai.service.borrower.BorrowerService;
import cn.weidai.service.lendRecord.LendRecordService;
import cn.weidai.service.user.UserService;

public class BorrowerTest {
  
	public ApplicationContext act=null;
	public Logger logger=Logger.getLogger(BorrowerTest.class);
	public BorrowerService borrowerServiceImpl=null;
	
	@Before
	public void before(){
		act = new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
		borrowerServiceImpl=(BorrowerService)act.getBean("borrowerServiceImpl");	
	}
	
	
	
	@Test
	public void test07(){		
						
				int i=borrowerServiceImpl.modifyBorrowerByzhitoubId(1,32200.00);				
				if(i>0){
					logger.debug("修改成功！——————————————————————————————————————————");
				}
	}
	
	
	
	
	
	
	
}
