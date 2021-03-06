package cn.weidai.YouBidTest;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang.time.FastDateFormat;
import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.weidai.pojo.Bid;
import cn.weidai.pojo.Borrower;
import cn.weidai.pojo.Middleman;
import cn.weidai.pojo.Settlement;
import cn.weidai.pojo.User;
import cn.weidai.service.bid.BidServiceImpl;
import cn.weidai.service.borrower.BorrowerServiceImpl;
import cn.weidai.service.settlement.SettlementServiceImpl;
import cn.weidai.service.user.UserServiceImpl;
import cn.weidai.tools.TimeLag;

import com.my.time.BugXmlTimerTask;

public class SettlementTest {
	public  ApplicationContext act=null;
	private Logger logger = Logger.getLogger(BugXmlTimerTask.class);
	private SettlementServiceImpl settlementServiceImpl;
	private UserServiceImpl userServiceImpl;
	private BorrowerServiceImpl borrowerServiceImpl ;
	private BidServiceImpl bidServiceImpl ;
	@Before
	public void before(){
		act = new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
		settlementServiceImpl = (SettlementServiceImpl)act.getBean("settlementServiceImpl");
		userServiceImpl =(UserServiceImpl)act.getBean("userServiceImpl");
		borrowerServiceImpl = (BorrowerServiceImpl)act.getBean("borrowerServiceImpl");
		bidServiceImpl =(BidServiceImpl)act.getBean("bidServiceImpl");
	}
	@Test
	public void getSettlement(){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date sRemittance = null;
		try {
			 sRemittance = format.parse("2018-09-14");
		} catch (ParseException e) {
			e.printStackTrace();
		}
		Settlement settlement = new Settlement();
		settlement.setsRemittance(sRemittance);
		List<Settlement> interests = settlementServiceImpl.settleAccountsOfInterest(settlement);
		Middleman middleman;
		User user;
		Borrower borrower;
		Settlement newSettle ;
		for(Settlement interest:interests){
			//每个用户汇款日应的本金和利息
			user = new User();
			user.setuId(interest.getUid());
			user.setuBalance(userServiceImpl.getUserTest1(interest.getUid()).getuBalance()+interest.getsCapOfMon()+interest.getsIntOfMon()*0.94);
			//平台应得手续费
			middleman=new Middleman();
			String fCode=interest.getUid()+"-"+interest.getBoId()+"-"+interest.getBid()+"-"+FastDateFormat.getInstance("yyyyMMddHHmmssSSS").format(new Date());
			middleman.setfCode(fCode);
			middleman.setMidMoney(interest.getsIntOfMon()*0.06);
			middleman.setMidDate(new Date());
			//借款人回款日应支付金额
			borrower = new Borrower();
			borrower.setBoId(interest.getBoId());
			borrower.setBoBalance(borrowerServiceImpl.getBorrowerById(interest.getBoId()).getBoBalance()-interest.getsCapOfMon()-interest.getsIntOfMon());
			//结算完毕，计算下个回款日及汇款金额
			newSettle = new Settlement();
			Bid bid =bidServiceImpl.getBidById(interest.getBid());
			newSettle.setsId(interest.getsId());
			try {
				newSettle.setsRemittance(format.parse(TimeLag.subMonth(bid.getbTimelimit(),format.format(bid.getbBearingDate())+" 00:00:00")));
			} catch (ParseException e) {
				e.printStackTrace();
			}
			if(bid.getbRepayment().equals("月还息到期还本")){
				if(TimeLag.MonthTimeLag(bid.getbTimelimit(), format.format(bid.getbBearingDate())+" 00:00:00")==0){
					newSettle.setsCapOfMon(interest.getsCapital());
					newSettle.setsIntOfMon(interest.getsIntOfMon());
				}else{
					newSettle.setsIntOfMon(interest.getsIntOfMon());
				}
			}else{
				newSettle.setsCapital(interest.getsCapital()-interest.getsCapOfMon());
				newSettle.setsIntOfMon(newSettle.getsCapital()*bid.getbRate()/100/12);
				newSettle.setsCapOfMon(interest.getsCapOfMon()+interest.getsIntOfMon()-newSettle.getsIntOfMon());
			}
			boolean flag=false;
			try {
				flag=settlementServiceImpl.wd_getSettlement(user, borrower, middleman,newSettle);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			if(flag){
				logger.debug("利息结算成功================================================");
			}else{
				logger.debug("利息结算失败================================================");
			}
		}
	}
	@Test
	public void addSettlementList(){
		List<User> userst = new ArrayList<User>();
		User user=null;
		for(int i=1;i<17;i++){
			user = new User();
			user.setuId(i);
			user.setuBalance(50000.00);
			userst.add(user);
		}
		int rows=0;
		try {
			rows=settlementServiceImpl.addSettlementList(userst);
		} catch (Exception e) {
			logger.debug("修改失败============================================================");
			e.printStackTrace();
		}
		logger.debug(rows+"===============================================================");
	}
	
}
