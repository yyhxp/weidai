package cn.weidai.bidTest;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.weidai.pojo.LendRecord;
import cn.weidai.service.lendRecord.LendRecordService;

public class LendRecordTest {
  
	public ApplicationContext act=null;
	public Logger logger=Logger.getLogger(LendRecordTest.class);
	public LendRecordService lendRecordServiceImpl=null;
	
	@Before
	public void before(){
		act = new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
		lendRecordServiceImpl=(LendRecordService)act.getBean("lendRecordServiceImpl");	
	}
	
	
	
	//@Test
	public void test07(){		
		LendRecord lendRecord=new LendRecord();
		lendRecord.setbTid(2);
		lendRecord.setuId(2);
		lendRecord.setbId(2);
		lendRecord.setlDate(new Date());
		lendRecord.setLendMoney(100.00);
		lendRecord.setlExTotInterest(344.90);
		lendRecord.setlStatus("可转让");						
				int i=lendRecordServiceImpl.insertLendrecord(lendRecord);
				
				if(i>0){
					logger.debug("插入成功！——————————————————————————————————————————");
				}
				
				
	}
	
				
	
	
	    // @Test
		public void test09(){		
				String dateString="2018-07-31 21:15:50";
				SimpleDateFormat  formatter= new SimpleDateFormat( "yyyy-MM-dd hh:mm:ss");
	    	 Date date=null;
			try {
				date = formatter.parse(dateString);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
					LendRecord lendRecord=lendRecordServiceImpl.selectLidfromLendrecord(1, "kz");
							
						logger.debug("出借记录："+lendRecord.getLid());
									
		}	
	
	
	       //  @Test
			public void test10(){		
	    	int i=lendRecordServiceImpl.updatelStatus();
	    	if(i>0){
	    		System.out.println("修改成功！");
	    	}
										
			}	
	     
			    @Test
				public void test11(){		
		    	List<LendRecord> lendrecordlist=lendRecordServiceImpl.selectlendrecord();
		    	for(LendRecord lendrecord :lendrecordlist){
		    		System.out.println(lendrecord);
		    	}
											
				}	
	     
	
	
}
