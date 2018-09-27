package cn.weidai.YouBidTest;

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
import cn.weidai.pojo.FundRecord;
import cn.weidai.pojo.LendRecord;
import cn.weidai.pojo.TransferBid;
import cn.weidai.pojo.User;
import cn.weidai.service.bid.BidServiceImpl;
import cn.weidai.service.lendRecord.LendRecordServiceImpl;
import cn.weidai.service.transferBid.TransferBidServiceImpl;
import cn.weidai.service.user.UserServiceImpl;
import cn.weidai.tools.TimeLag;

/**优选智投测试类
 * @author 6Q
 * 2018-8-10下午8:50:00
 */
public class YbidTest {
	public  ApplicationContext act=null;
	public  BidServiceImpl bidServiceImpl=null;
	public TransferBidServiceImpl transferBidServiceImpl=null;
	public LendRecordServiceImpl lendRecordServiceImpl = null;
	public UserServiceImpl userServiceImpl =null;
	private Logger logger = Logger.getLogger(YbidTest.class);

	@Before
	public void before(){
		act = new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
		bidServiceImpl = (BidServiceImpl) act.getBean("bidServiceImpl");
		transferBidServiceImpl = (TransferBidServiceImpl) act.getBean("transferBidServiceImpl");
		lendRecordServiceImpl = (LendRecordServiceImpl) act.getBean("lendRecordServiceImpl");
		userServiceImpl = (UserServiceImpl)act.getBean("userServiceImpl");
	}
	/**
	 * 获取最近新增的优先智投债券，展示在首页界面
	 */
	@Test
	public void getYouBid(){
		List<Bid> bids=new ArrayList<Bid>();
		bids = bidServiceImpl.getYouBid();
		for(Bid bid:bids){
			logger.debug(bid);
		}
	}
	/**
	 * 省心出借
	 */
	@Test
	public void getSixBid(){
		List<Bid> bids=new ArrayList<Bid>();
		bids = bidServiceImpl.getSixBid();
		for(Bid bid:bids){
			logger.debug(bid);
		}
	}
	/**
	 * 获取所有转让专区的标地，默认利率降序排列
	 */
	@Test
	public void getTBidList(){
		String bBearingDate = "2018-06-14 00:00:00";
		int bTimelimit = 3;
		int monthLag = TimeLag.MonthTimeLag(bTimelimit,bBearingDate);
		int dayLag = TimeLag.DayTimeLag(bBearingDate);
		logger.debug(monthLag+"个月"+dayLag+"天");
		TransferBid transferBid = new TransferBid();
		transferBid.setSortName("bRate");
		transferBid.setSortType("desc");
		transferBid.setStarNum(0);
		transferBid.setPageSize(10);
		logger.debug(transferBid);
		List<TransferBid> trans = new ArrayList<TransferBid>();
		trans =transferBidServiceImpl.getTBidList(transferBid);
		logger.debug(trans);
	}
	/**
	 * 根据转让标地tId获得标地详情信息
	 */
	@Test
	public void getTBidListById(){
		int tId=7;
		TransferBid tra=transferBidServiceImpl.getTBidListById(tId);
		logger.debug(tra.toString());
	}
	/**
	 * 根据债券状态和用户id查询出借记录
	 */
	@Test
	public void getLendRecordBylStatus(){
		List<LendRecord> lists=new ArrayList<LendRecord>();
		LendRecord lendRecord = new LendRecord();
		lendRecord.setlStatus("kz");
		lendRecord.setuId(2);
		lists = lendRecordServiceImpl.getLendRecordBylStatus(lendRecord);
		logger.debug(lists);
	}
	/**
	 * 购买转让标
	 */
	@Test
	public void buyTBid(){
		int buyUserId=15;//买家用户id
		int tId =13;//转让标的id
		double money=500.00;//实际购买标额度
		double lendMoney=499.00;
		int sellUserId=transferBidServiceImpl.getTBidListById(tId).getBid().getuId();//获取卖家用户id

		User buyUser =userServiceImpl.getUserTest1(buyUserId);
		buyUser.setuBalance(buyUser.getuBalance()-lendMoney);
		User sellUser=userServiceImpl.getUserTest1(sellUserId);
		sellUser.setuBalance(sellUser.getuBalance()+lendMoney);
		TransferBid transferBid = transferBidServiceImpl.getTBidListById(tId);
		transferBid.settReTraPrice(transferBid.gettReTraPrice()-money);


		LendRecord lendRecord=new LendRecord();
		lendRecord.setbTid(3);
		lendRecord.setuId(buyUserId);
		lendRecord.setbId(tId);
		lendRecord.setlDate(new Date());
		lendRecord.setLendMoney(lendMoney);
		lendRecord.setlAmount(money);
		lendRecord.setlExTotInterest(200.00);//要算，在研究
		lendRecord.setlStatus("kz");

		FundRecord fundRecord=new FundRecord();
		fundRecord.setfCode(FastDateFormat.getInstance("yyyyMMddHHmmssSSS").format(new Date()));
		fundRecord.setuId(buyUserId);
		fundRecord.setoTypeId(5);
		fundRecord.setfTranAmount(lendMoney);
		fundRecord.setfStatus("已交易");
		fundRecord.setfDate(new Date());

		boolean flag=false;
		try {
			/*flag = transferBidServiceImpl.wd_BuyTBid(buyUser,sellUser, transferBid, lendRecord, fundRecord);*/
		} catch (Exception e) {
			logger.debug("购买失败========================================");
			e.printStackTrace();
		}
		if(flag){
			logger.debug("购买成功========================================");
		}
	}
}
