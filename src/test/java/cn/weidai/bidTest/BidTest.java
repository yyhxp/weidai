package cn.weidai.bidTest;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.weidai.pojo.Bid;
import cn.weidai.pojo.FundRecord;
import cn.weidai.pojo.LendRecord;
import cn.weidai.pojo.Receivables;
import cn.weidai.service.Receivables.ReceivablesService;
import cn.weidai.service.bid.BidService;
import cn.weidai.service.bid.BidServiceImpl;
import cn.weidai.service.fundRecord.FundRecordService;
import cn.weidai.service.lendRecord.LendRecordService;
import cn.weidai.service.user.UserService;

public class BidTest {
  
	public ApplicationContext act=null;
	public Logger logger=Logger.getLogger(BidTest.class);
	public BidService  bidServiceImpl=null;
	private LendRecordService lendRecordServiceImpl=null;
	private UserService userServiceImpl=null;
	private ReceivablesService receivablesServiceImpl=null;
	 private FundRecordService fundRecordServiceImpl=null;
	
	
	
	@Before
	public void before(){
		act = new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
		bidServiceImpl = (BidServiceImpl) act.getBean("bidServiceImpl");
		
	}
	
	//@Test
	/*public void test(){
		//Bid bid=new Bid();
		List<Bid>bidList=new ArrayList<Bid>();
	/*	bidList=bidServiceImpl.getzhitouBid();*/
		/*for(Bid bid:bidList){
			logger.debug(bid);
		}		*/
	
	
	//@Test
	public void test02(){
		//Bid bid=new Bid();
		List<Bid>bidList=new ArrayList<Bid>();
		int i=bidServiceImpl.getztTotalCount();		
			logger.debug("总数是："+i);
				
	}
	
	
//	@Test
	public void test04(){
		//Bid bid=new Bid();
		List<Bid>bidList=new ArrayList<Bid>();
		bidList=bidServiceImpl.getzhitouBid3();
		for(Bid bid:bidList){
			logger.debug(bid);
		}		
	}
	
	//@Test
	/*public void test05(){
		//Bid bid=new Bid();
		List<Bid>bidList=new ArrayList<Bid>();
		bidList=bidServiceImpl.getsanbiao3();
		for(Bid bid:bidList){
			logger.debug(bid);
		}		
	}*/
	//@Test
	public void test06(){
		Bid bid=new Bid();
				bid=bidServiceImpl.getBidById(1);			
					logger.debug(bid);	
	}
	
	//@Test
	public void test07(){		
				int i=bidServiceImpl.updateMoneyByBid(3, 10000.00);	
				if(i>0){
					logger.debug("插入成功！");
				}
										
	}
	
	@Test
	public void test11(){		
				Bid bid=bidServiceImpl.getBidById(1);
				int boId=bid.getuId();
				System.out.println("借款用户id:"+boId);
										
	}
	
	
	
	//@Test
	public void test08(){		
		logger.debug("进入测试8_________________________________________");
		
		Receivables receivables=new Receivables();
		receivables.setbId(1);
		receivables.setPeriods(1);
		receivables.setlStatus("待收款");
		receivables.setRDate(null);
		receivables.settRDate(new Date());
		receivables.setRInterest(0.00);
		receivables.setRMoney(0.00);
		receivables.settRInterest(35.00);
		receivables.settRMoney(1000.00);
		
		FundRecord fundRecord=new FundRecord();
		SimpleDateFormat  formatter= new SimpleDateFormat( "yyyy-MM-dd-hh-mm-ss");
      
		String _fCode="1"+formatter.format(new Date());
		fundRecord.setfCode(_fCode);
		fundRecord.setuId(1);
		fundRecord.setoTypeId(2);
		fundRecord.setfTranAmount(500.00);
		fundRecord.setfStatus("已交易");
		fundRecord.setfDate(new Date());
		
		LendRecord lendRecord=new LendRecord();
		lendRecord.setbTid(2);
		lendRecord.setuId(1);
		lendRecord.setbId(1);
		lendRecord.setlDate(new Date());
		lendRecord.setLendMoney(500.00);   //出借金额
		lendRecord.setlExTotInterest(35.00);  //总利息
		lendRecord.setlStatus("可转让");	
		
		logger.debug("数据封装完成_________________________________________");
		
		/*public synchronized boolean wd_BuyZhitouBid(Integer bId, Double inputmoney, Integer uId,
				 Double uBalance, Integer bTimelimit,
				Receivables receivables, FundRecord fundRecord,
				LendRecord lendRecord,Double bCanBeCastMoney)*/
		
				
/*	if(	bidServiceImpl.wd_BuyZhitouBid(1, 500.00, 1,
				800.00, 1, receivables, fundRecord, lendRecord, 1500.00)){
		logger.debug("执行成功！"); 
	}else{
		logger.debug("执行失败！");  
	}*/
		
		
		
		
										
	}
	
	
	
	
}
