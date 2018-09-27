import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.weidai.pojo.Bid;
import cn.weidai.pojo.FundRecord;
import cn.weidai.pojo.User;
import cn.weidai.service.bid.BidService;
import cn.weidai.service.fundRecord.FundRecordServiceImpl;
import cn.weidai.service.user.UserService;


public class zhanghengTest {
	ApplicationContext act=null;
	UserService userService=null;
	BidService bidService=null;
	Bid b=new Bid();
	User u=new User();
	FundRecordServiceImpl fund;
	FundRecord fu=new FundRecord ();
	
	@Before
	public void before(){
		act = new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
		userService=(UserService)act.getBean("userServiceImpl");
		//bidService=(BidService)act.getBean("BidServiceImpl");
		fund=(FundRecordServiceImpl)act.getBean("fundRecordServiceImpl");
	}
	@Test
	public void testje(){
		System.out.println("9999");
		u=userService.getUserTest(1);
		u.getrName();
		System.out.println(u.getuBalance());
		
	}
	@Test
	public void testjj(){
		u=userService.getUserTest1(15);
		System.out.println(u.getuPassword());
		
	}
/*//	@Test
//	public void testbid(){
//		b=bidService.getBid(3);
//		double d=b.getbCanBeCastMoney();
//		System.out.println(d);
//		
//		
//	}
*/	@Test
	public void testfund(){
		//fu=fund.getFund(15);
		fu.getfTranAmount();
	}
	
	
	
	
	
	
	
}
