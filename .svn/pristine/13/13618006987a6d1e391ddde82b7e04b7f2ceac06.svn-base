package cn.weidai.bidTest;

import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.weidai.pojo.FundRecord;
import cn.weidai.pojo.LendRecord;
import cn.weidai.service.fundRecord.FundRecordService;
import cn.weidai.service.lendRecord.LendRecordService;

public class FundRecordTest {
  
	public ApplicationContext act=null;
	public Logger logger=Logger.getLogger(FundRecordTest.class);
	public FundRecordService fundRecordServiceImpl=null;
	
	@Before
	public void before(){
		act = new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
		fundRecordServiceImpl=(FundRecordService)act.getBean("fundRecordServiceImpl");	
	}
	
	
	
	@Test
	public void test07(){		
		FundRecord fundRecord=new FundRecord();
		SimpleDateFormat  formatter= new SimpleDateFormat( "yyyy-MM-dd hh:mm:ss");
      
		String fCode=formatter.format(new Date())+"uId";
		fundRecord.setfCode(fCode);
		fundRecord.setuId(1);
		fundRecord.setoTypeId(1);
		fundRecord.setfTranAmount(500.00);
		fundRecord.setfStatus("已交易");
		fundRecord.setfDate(new Date());
		
				int i=fundRecordServiceImpl.insertFundRecord(fundRecord);
				
				if(i>0){
					logger.debug("插入成功！——————————————————————————————————————————");
				}
	}
	
	
	
	
	
	
	
}
