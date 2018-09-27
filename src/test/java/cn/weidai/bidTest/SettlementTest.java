package cn.weidai.bidTest;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.weidai.pojo.LendRecord;
import cn.weidai.pojo.Settlement;
import cn.weidai.service.lendRecord.LendRecordService;
import cn.weidai.service.settlement.SettlementService;
import cn.weidai.tools.TimeLag;
public class SettlementTest {
  
	public ApplicationContext act=null;
	public Logger logger=Logger.getLogger(SettlementTest.class);
	public SettlementService settlementServiceImpl=null;
	public LendRecordService lendRecordServiceImpl=null;
	
	@Before
	public void before(){
		act = new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
		settlementServiceImpl=(SettlementService)act.getBean("settlementServiceImpl");
		lendRecordServiceImpl=(LendRecordService)act.getBean("lendRecordServiceImpl");
		
	}
	
	
	
	//@Test
	public void test07() {		
		
		List<LendRecord> lendRecordList=lendRecordServiceImpl.selectlendrecord();
		
		List<Settlement> Settlementlist2=new ArrayList<Settlement>();
		
		for(LendRecord lendRecord2: lendRecordList){
			
			Settlement settlement=new Settlement(lendRecord2.getuId(),2,1,lendRecord2.getLid(), TimeLag.addMonth(),5000.00,0.00,3.00);		
			Settlementlist2.add(settlement);
			
		}
		int i=settlementServiceImpl.insertSettlementList(Settlementlist2);
		
		/*if(i>0){
			System.out.println("插入成功！");
		}*/
		
		
	}
	
	
	 @Test
	public void test08() {		
		System.out.println("进入了test08");
		List <Settlement> settlementList=settlementServiceImpl.selectsettlement(1);
		for(Settlement settlement:settlementList){
			System.out.println(settlement);
		}
		
	}
	
	
	
	
}
