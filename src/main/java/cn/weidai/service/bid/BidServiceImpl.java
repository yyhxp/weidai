package cn.weidai.service.bid;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import cn.weidai.dao.bid.BidMapper;
import cn.weidai.dao.borrower.BorrowerMapper;
import cn.weidai.dao.fundRecord.FundRecordMapper;
import cn.weidai.dao.lendRecord.LendRecordMapper;
import cn.weidai.dao.receivables.ReceivablesMapper;
import cn.weidai.dao.settlement.SettlementMapper;
import cn.weidai.dao.user.UserMapper;
import cn.weidai.pojo.Bid;
import cn.weidai.pojo.FundRecord;
import cn.weidai.pojo.LendRecord;
import cn.weidai.pojo.Middleman;
import cn.weidai.pojo.Receivables;
import cn.weidai.pojo.Settlement;
import cn.weidai.pojo.TransferBid;
import cn.weidai.pojo.User;
import cn.weidai.tools.Constants;
import cn.weidai.tools.TimeLag;

import java.util.ArrayList;



@Service
public class BidServiceImpl implements BidService {
	@Resource
	private BidMapper bidMapper;
	
	@Resource
	private FundRecordMapper  fundRecordMapper;
	
	@Resource
	private LendRecordMapper lendRecordMapper;
		
	@Resource
	private ReceivablesMapper receivablesMapper;
	
	@Resource
	private UserMapper userMapper;
	
	@Resource
	private BorrowerMapper borrowerMapper;
	
	@Resource
	private SettlementMapper settlementMapper;
	

	
	@Override
	public Bid getBid(int uId) {
		return bidMapper.getBil(uId);
	}
	/* 获取最近新增的优先智投债券，展示在首页界面
	 * @see cn.weidai.service.bid.BidService#getYouBid()
	 */
	@Override
	public List<Bid> getYouBid() {
		return bidMapper.getYouBid();
	}
	
	/* 获得最近新增的6标地
	 * @see cn.weidai.service.bid.BidService#getSixBid()
	 */
	@Override
	public List<Bid> getSixBid() {
		return bidMapper.getSixBid();
	}
	
	/*@author:何小平
	 * 功能模块：优选智投标信息的展示
	 * 方法：从数据库查询
	 */
	@Override
	public List<Bid>getzhitouBid(Integer startNum, Integer pageSize){
				return bidMapper.getzhitouBid(startNum, pageSize);
		
	}
	
	
	/*<!--获取智投标的信息总条数！  -->*/
	public int getztTotalCount(){
		return bidMapper.getztTotalCount();
	}
	
	/*@author:何小平
	 * 功能模块：优选智投标的信息查询功能——跟据项目期限进行查询
	 * 方法：从数据库查询
	 */
	
	public List<Bid>getzhitouBid1(){
		return bidMapper.getzhitouBid1();		
	}
	@Override
	public List<Bid> getzhitouBid2() {
		// TODO Auto-generated method stub
		return bidMapper.getzhitouBid2();
	}
	@Override
	public List<Bid> getzhitouBid3() {
		// TODO Auto-generated method stub
		return bidMapper.getzhitouBid3();
	}
	
	@Override
	public Bid getBidById(int bId) {
		// TODO Auto-generated method stub
		return bidMapper.getBidById(bId);
	}
	//散标
	@Override
	public List<Bid> zhgetsblb(Integer month) {
		return bidMapper.zhgetsblb(month);
	}
	
	@Override
	public int updateMoneyByBid(Integer bId, Double bCanBeCastMoney) {
		// TODO Auto-generated method stub
		return bidMapper.updateMoneyByBid(bId, bCanBeCastMoney);
	}
	
	
	@Override
	public synchronized boolean wd_BuyZhitouBid(Integer bId, Double inputmoney, Integer uId,
			 Double uBalance, Integer bTimelimit,
			Double _bCanBeCastMoney,Double bCanBeCastMoney1,
			Double boBalance,Double exinterest,
			String lStatus, HttpSession session	
			) {
							
			if(lStatus.equals("nz")){
System.out.println("lStatus1：————————————————————"+lStatus);
			//购买后减少相应的标的可投金额
			bidMapper.updateMoneyByBid(bId, bCanBeCastMoney1);
			bidMapper.updatebfullByBid(bId);
			
			//购买成功后用户余额做相应的减少/对用户余额进行修改
			User buyuser=new User();
			buyuser.setuId(uId);
			buyuser.setuBalance(uBalance);
			session.setAttribute(Constants.USER_SESSION,buyuser);
			userMapper.updateUBalanceById(uId, uBalance);	
			
			
			//购买成功之后插入一条资金交易记录 ，插入一条资金记录
			FundRecord fundRecord=new FundRecord();
			SimpleDateFormat  formatter= new SimpleDateFormat( "yyyy-MM-dd hh:mm:ss");

			String _fCode=uId+formatter.format(new Date());
			fundRecord.setfCode(_fCode);
			fundRecord.setuId(uId);
			fundRecord.setoTypeId(2);
			fundRecord.setfTranAmount(inputmoney);
			fundRecord.setfStatus("已交易");
			fundRecord.setfDate(new Date());
			fundRecord.setfAfterTranAmount(uBalance);
			
			fundRecordMapper.insertFundRecord(fundRecord);
			
			//购买成功后插入一条出借记录，状态为不可转//该用户的出借记录添加一条		 
			LendRecord lendRecord=new LendRecord();
			lendRecord.setbTid(2);
			lendRecord.setuId(uId);
			lendRecord.setbId(bId);
			lendRecord.setlDate(new Date());
			lendRecord.setLendMoney(inputmoney);   //出借金额
			lendRecord.setlExTotInterest(exinterest);  //总利息
			lendRecord.setlAmount(inputmoney);
			lendRecord.setlStatus(lStatus);
			
			lendRecordMapper.insertLendrecord(lendRecord);	
			
			return true;
			
		}else if(lStatus.equals("kz")){
			System.out.println("lStatus2：————————————————————"+lStatus);		
			//购买后减少相应的标的可投金额
		int e=bidMapper.updateMoneyByBid(bId, bCanBeCastMoney1);	
			if(e>0){
				System.out.println("更新成功1——————————————————");
			}
			//购买成功后用户余额做相应的减少/对用户余额进行修改
			User buyuser=new User();
			buyuser.setuId(uId);
			buyuser.setuBalance(uBalance);
			session.setAttribute(Constants.USER_SESSION,buyuser);
			int d =userMapper.updateUBalanceById(uId, uBalance);	
			if(d>0){
				System.out.println("更新成功2——————————————————");
			}
			
			//购买成功之后插入一条资金交易记录 ，插入一条资金记录
			FundRecord fundRecord=new FundRecord();
			SimpleDateFormat  formatter= new SimpleDateFormat( "yyyy-MM-dd hh:mm:ss");

			String _fCode=uId+formatter.format(new Date());
			fundRecord.setfCode(_fCode);
			fundRecord.setuId(uId);
			fundRecord.setoTypeId(2);
			fundRecord.setfTranAmount(inputmoney);
			fundRecord.setfStatus("已交易");
			fundRecord.setfDate(new Date());
			fundRecord.setfAfterTranAmount(uBalance);
			
		int m=fundRecordMapper.insertFundRecord(fundRecord);
			if(m>0){
				System.out.println("插入成功3___________");
			}
			//购买成功后插入一条出借记录，状态为不可转//该用户的出借记录添加一条		 
			LendRecord lendRecord=new LendRecord();
			lendRecord.setbTid(2);
			lendRecord.setuId(uId);
			lendRecord.setbId(bId);
			lendRecord.setlDate(new Date());
			lendRecord.setLendMoney(inputmoney);   //出借金额
			lendRecord.setlExTotInterest(exinterest);  //总利息
			lendRecord.setlAmount(inputmoney);
			lendRecord.setlStatus(lStatus);
			
		int k=lendRecordMapper.insertLendrecord(lendRecord);
		if(k>0){
			System.out.println("插入成功4————————————————————————————————");
		}
			
			//出借记录态都更新为kz
		int i=lendRecordMapper.updatelStatus();
			//查询出boId
		if(i>0){
			System.out.println("更新成功5！————————————————————-");
		}
			
			Bid bid=bidMapper.getBidById(bId);
			Integer boId=bid.getuId();
			
			
			//查询出lendRecord
			/*List<LendRecord> lendRecordList=lendRecordMapper.selectlendrecord();
			List<Settlement> Settlementlist2=new ArrayList<Settlement>();
			
			for(LendRecord lendRecord2: lendRecordList){
             System.out.println("lendRecord2__________"+lendRecord2);
				Settlement settlement=new Settlement(lendRecord2.getuId(),boId,bId,lendRecord2.getLid(), TimeLag.addMonth(),inputmoney,0.00,lendRecord2.getlExTotInterest()/bTimelimit);
				
				Settlementlist2.add(settlement);				
			}
			int c=settlementMapper.insertSettlementList(Settlementlist2);
			
			
			if(c>0){
				System.out.println("插入成功5————————————————————");
			}*/
			//查询该标的的所有记录并添加到收款明细
			
			List<Settlement> settlementlist3=settlementMapper.selectsettlement(bId);
			List<Receivables> receivableslist=new ArrayList<Receivables>();
			
			for(Settlement settlement2: settlementlist3){
				System.out.println("settlement2__________"+settlement2);
				Receivables receivables=new Receivables(1,settlement2.getsRemittance(),0.00,settlement2.getsIntOfMon(),null,null,null,"待收",bId,settlement2.getUid() );
				receivableslist.add(receivables);
			}
					
			int f =receivablesMapper.insertReceivables(receivableslist);
			
			if(f>0){
				System.out.println("插入成功6——————————————————————");
			}
			
		return true;
	}		
			return false;
	
	
	}
	/*@Override
	public int updatebfullByBid(Integer bId) {
		// TODO Auto-generated method stub
		return bidMapper.updatebfullByBid(bId);
	}*/
	
	
}
