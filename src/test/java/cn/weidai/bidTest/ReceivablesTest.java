package cn.weidai.bidTest;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.weidai.pojo.LendRecord;
import cn.weidai.pojo.Receivables;
import cn.weidai.pojo.Settlement;
import cn.weidai.service.Receivables.ReceivablesService;
import cn.weidai.service.lendRecord.LendRecordService;
import cn.weidai.dao.settlement.SettlementMapper;

public class ReceivablesTest {
  
	public ApplicationContext act=null;
	public Logger logger=Logger.getLogger(ReceivablesTest.class);
	public ReceivablesService receivablesServiceImpl=null;
	public SettlementMapper settlementMapper=null;
	
	@Before
	public void before(){
		act = new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
		receivablesServiceImpl=(ReceivablesService)act.getBean("receivablesServiceImpl");	
		settlementMapper=(SettlementMapper)act.getBean("settlementMapper");	
	}
	
	
	
	@Test
	public void test07() {			
		 
		System.out.println("进入test07————————————————————————————————");
		List<Settlement> settlementlist3=settlementMapper.selectsettlement(1);
		List<Receivables> receivableslist=new ArrayList<Receivables>();
		
		for(Settlement settlement2: settlementlist3){
		System.out.println("结算表："+settlement2);
		System.out.println("时间："+settlement2.getsRemittance()+"利息："+settlement2.getsIntOfMon()+"uid"+settlement2.getUid());
			Receivables receivables=new Receivables(1,settlement2.getsRemittance(),0.00,settlement2.getsIntOfMon(),null,null,null,"待收",1,settlement2.getUid());
			receivableslist.add(receivables);
		}
		
		int i=receivablesServiceImpl.insertReceivables(receivableslist);
		if(i>0){
			System.out.println("插入成功！——————————————————");
		}
		
		
		
	}
	
	
	
	
	
	
	
}
