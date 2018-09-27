
package cn.weidai.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.time.FastDateFormat;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.weidai.pojo.Bid;
import cn.weidai.pojo.FundRecord;
import cn.weidai.pojo.LendRecord;
import cn.weidai.pojo.Middleman;
import cn.weidai.pojo.Settlement;
import cn.weidai.pojo.TransferBid;
import cn.weidai.pojo.User;
import cn.weidai.service.Middleman.MiddlemanServiceImpl;
import cn.weidai.service.bid.BidServiceImpl;
import cn.weidai.service.lendRecord.LendRecordServiceImpl;
import cn.weidai.service.transferBid.TransferBidServiceImpl;
import cn.weidai.service.user.UserService;
import cn.weidai.service.user.UserServiceImpl;
import cn.weidai.tools.Constants;
import cn.weidai.tools.PageSupport;
import cn.weidai.tools.TimeLag;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;

@Controller
@RequestMapping(value="/user")
public class UserloginController {

	private Logger logger = Logger.getLogger(UserloginController.class);
	@Resource
	private UserService userService;
	@Resource
	public BidServiceImpl bidServiceImpl=null;
	@Resource
	public TransferBidServiceImpl transferBidServiceImpl=null; 
	@Resource
	public UserServiceImpl userServiceImpl=null;
	@Resource
	LendRecordServiceImpl lendRecordServiceImpl=null;
	@Resource
	public MiddlemanServiceImpl middlemanServiceImpl=null;
	@RequestMapping(value="login.html")
	public String login(){
		return "login";
	}
	@RequestMapping(value="/logindo.html")
	public String doLogin(){
		logger.debug("doLogin=================----------===================");

		return "login";
	}

	@RequestMapping(value="/logindo1.html",method=RequestMethod.POST)
	public String doLogin1( String  uName ,String uPassword ,HttpServletRequest request,HttpSession session){
		User user=new User();
		user.setuName(uName);
		user.setuPassword(uPassword);
		User users = userService.logindo(user);
		if(users!= null){
			logger.debug("进入方法11111------------------------------===========");
			//登录成功
			//放入session
			session.setAttribute(Constants.USER_SESSION, users);
			//页面跳转（index.jsp）
			return "index";

		}else{
			//页面跳转（login.jsp）带出提示信息--转发
			logger.debug("登陆失败555555555555555=============------------------------------");
			request.setAttribute("error", "用户名或密码不正确");
			return "login";
		}

	}


	/**
	 * 个人账户 资料
	 * @return
	 */
	@RequestMapping( value="/myzhanghu7.html",method=RequestMethod.GET)
	public String  loginxiugai( ){

		logger.debug("-=========================================== ");
		return "myzhanghu7";

	}

	@RequestMapping(value="/zhuanrang.html",method=RequestMethod.GET)
	public String toZhuanrang(){
		return "zhuanrang";
	}
	@ResponseBody
	@RequestMapping(value="/tralist.json",method=RequestMethod.GET)
	public Object getTBidList(@RequestParam(value="currentPageNo",required=false,defaultValue="1") Integer currentPageNo,
			@RequestParam(value="bRemainTimelimit",required=false,defaultValue="all")String bRemainTimelimit,
			@RequestParam(value="sortName" ,required=false,defaultValue="cppx")String sortName,
			@RequestParam(value="sortType",required=false)String sortType){
		logger.debug("进入getTBidList====================================="+"bRemainTimelimit="+bRemainTimelimit
				+"======sortName="+sortName+"========sortType="+sortType);
		TransferBid transferBid = new TransferBid();
		if(!(bRemainTimelimit.equals("all"))){
			transferBid.setbRemainTimelimit(bRemainTimelimit);
		}
		if(!(sortName.equals("cppx"))){
			transferBid.setSortName(sortName);
			transferBid.setSortType(sortType);
		}
		transferBid.setPageSize(Constants.pageSize);
		transferBid.setStarNum((currentPageNo-1)*Constants.pageSize);
		HashMap resultMap = new HashMap();
		//获取所有的转让标地
		List<TransferBid> traBids = transferBidServiceImpl.getTBidList(transferBid);
		//获取转让标的总数
		int totalCount = transferBidServiceImpl.getTBidTotalCount(transferBid);
		PageSupport pageSupport = new PageSupport();
		pageSupport.setCurrentPageNo(currentPageNo);
		pageSupport.setPageSize(Constants.pageSize);
		pageSupport.setTotalCount(totalCount);
		pageSupport.setTotalPageCountByRs();
		logger.debug(traBids);
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		for(TransferBid traBid:traBids){
			traBid.setbRemainMonth(TimeLag.MonthTimeLag(traBid.getBid().getbTimelimit(),formatter.format(traBid.getBid().getbBearingDate())));
			traBid.setbRemainDay(TimeLag.DayTimeLag(formatter.format(traBid.getBid().getbBearingDate())));
			try {
				traBid.settRemittance(formatter.parse(TimeLag.subMonth(traBid.getBid().getbTimelimit(), formatter.format(traBid.getBid().getbBearingDate()))));
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		if(traBids!=null){
			resultMap.put("traBids", traBids);
			resultMap.put("pageSupport",pageSupport);
			logger.debug("pageSupport===================="+pageSupport);
		}else{
			resultMap.put("traBids","nodata");
		}
		logger.debug(traBids);
		return JSONArray.toJSONString(resultMap);
	}

	@RequestMapping(value="/transferDetail.html",method=RequestMethod.GET)
	public String toTransferDetail(){
		return "zhuanrangDetail";
	}
	@ResponseBody
	@RequestMapping(value="/getTransferDetail",method=RequestMethod.GET)
	public Object getTransferDetail(@RequestParam(value="tId")Integer tId){
		String json;
		TransferBid transferBid = transferBidServiceImpl.getTBidListById(tId);
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		transferBid.setbRemainMonth(TimeLag.MonthTimeLag(transferBid.getBid().getbTimelimit(),formatter.format(transferBid.getBid().getbBearingDate())));
		transferBid.setbRemainDay(TimeLag.DayTimeLag(formatter.format(transferBid.getBid().getbBearingDate())));
		try {
			transferBid.settRemittance(formatter.parse(TimeLag.subMonth(transferBid.getBid().getbTimelimit(), formatter.format(transferBid.getBid().getbBearingDate()))));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		json = JSON.toJSONString(transferBid);
		return json;
	}
	@ResponseBody
	@RequestMapping(value="/buyTBid.json")
	public Object wd_BuyTBid(
			@RequestParam(value="money")Double money,
			@RequestParam(value="lendMoney")Double lendMoney,
			@RequestParam(value="uId")Integer uId,
			@RequestParam(value="tId")Integer tId,
			@RequestParam(value="lExTotInterest")Double lExTotInterest,
			HttpSession session){
		logger.debug(money+"==================================");
		int sellUserId=transferBidServiceImpl.getTBidListById(tId).getBid().getuId();//获取卖家用户id

		User buyUser =userServiceImpl.getUserTest1(uId);
		buyUser.setuBalance(buyUser.getuBalance()-lendMoney);
		User sellUser=userServiceImpl.getUserTest1(sellUserId);
		sellUser.setuBalance(sellUser.getuBalance()+lendMoney);
		TransferBid transferBid = transferBidServiceImpl.getTBidListById(tId);
		transferBid.settReTraPrice(transferBid.gettReTraPrice()-money);
		LendRecord lendRecord = lendRecordServiceImpl.getLendRecordById(transferBid.getLid());
		//购买人出借记录
		LendRecord buyLendRecord=new LendRecord();
		buyLendRecord.setbTid(3);
		buyLendRecord.setuId(uId);
		buyLendRecord.setbId(tId);
		buyLendRecord.setlDate(new Date());
		buyLendRecord.setLendMoney(lendMoney);
		buyLendRecord.setlAmount(money);
		buyLendRecord.setlExTotInterest(lExTotInterest);
		buyLendRecord.setlStatus("yj");
		//转让标交易成功手续费（%）
		int days = (int) (((new Date()).getTime() - lendRecord.getlDate().getTime()) / (1000*3600*24));
		double handlingCharge=0;//百分比（%）
		if(days>365){
			handlingCharge=0;
		}else if(days>180){
			handlingCharge=0.002;
		}else if(days>90){
			handlingCharge=0.003;
		}else if(days>30){
			handlingCharge=0.005;
		}else{
			handlingCharge=0.01;
		}

		//卖方的出借记录
		LendRecord sellLendRecord=new LendRecord();
		sellLendRecord.setbTid(3);
		sellLendRecord.setuId(sellUserId);
		sellLendRecord.setbId(tId);
		sellLendRecord.setlDate(new Date());
		sellLendRecord.setLendMoney(lendMoney*(1-handlingCharge));
		sellLendRecord.setlAmount(money);
		sellLendRecord.setlExTotInterest(lExTotInterest);
		sellLendRecord.setlStatus("yz");
		//金额交易的转让操作记录
		FundRecord fundRecord=new FundRecord();
		fundRecord.setfCode(uId+"-"+sellUserId+"-"+tId+"-"+FastDateFormat.getInstance("yyyyMMddHHmmssSSS").format(new Date()));
		fundRecord.setuId(uId);
		fundRecord.setoTypeId(5);
		fundRecord.setfTranAmount(lendMoney);
		fundRecord.setfStatus("已交易");
		fundRecord.setfDate(new Date());

		//平台费用收取记录
		Middleman middleman = new Middleman();
		middleman.setfCode(fundRecord.getfCode());
		middleman.setMidDate(new Date());
		middleman.setMidMoney(lendMoney*handlingCharge);
		
		
		//回款日利息还款结算表
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Bid bid =bidServiceImpl.getBidById(transferBidServiceImpl.getTBidListById(tId).getBid().getbId());
		Settlement settlement = new Settlement();
		settlement.setUid(buyLendRecord.getuId());
		settlement.setBoId(bid.getuId());
		settlement.setBid(buyLendRecord.getbId());
		try {
			settlement.setsRemittance(format.parse(TimeLag.subMonth(bid.getbTimelimit(),format.format(bid.getbBearingDate())+" 00:00:00")));
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
		settlement.setsCapital(money);
		if(bid.getbRepayment().equals("月还息到期还本")){
			if(TimeLag.MonthTimeLag(bid.getbTimelimit(), format.format(bid.getbBearingDate())+" 00:00:00")==0){
				settlement.setsCapOfMon(money);
				settlement.setsIntOfMon(money*bid.getbRate()/100/12);
			}else{
				settlement.setsIntOfMon(money*bid.getbRate()/100/12);
			}
		}else{
			 int month=TimeLag.MonthTimeLag(bid.getbTimelimit(), format.format(bid.getbBearingDate())+" 00:00:00");
			 if(TimeLag.DayTimeLag(format.format(bid.getbBearingDate())+" 00:00:00")>0){
				 month+=1;
			 }
			 double repaymentOfMonth = (money*bid.getbRate()/100/12*Math.pow(1+bid.getbRate()/100/12, month))/(Math.pow(1+bid.getbRate()/100/12, month)-1);
			
			settlement.setsIntOfMon(money*bid.getbRate()/100/12);
			settlement.setsCapOfMon(repaymentOfMonth-settlement.getsIntOfMon());
		}
		boolean flag=false;
		String json;
		if(settlement.getUid()==sellLendRecord.getuId()){
			return JSON.toJSONString("same");
		}
		try {
			flag = transferBidServiceImpl.wd_BuyTBid(buyUser,sellUser, transferBid, buyLendRecord,sellLendRecord, fundRecord,middleman,settlement);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(flag){
			json="success";
			session.setAttribute(Constants.USER_SESSION, buyUser);
		}else{
			json="fail";
		}

		return JSON.toJSONString(json);
	}
	
	
	@RequestMapping(value="/myzhanghu5.html",method=RequestMethod.GET)
	public String toMyzhanghu5(){
		return "myzhanghu5";
	}
	@ResponseBody
	@RequestMapping(value="/getLendRecords.json",method=RequestMethod.GET)
	public Object getLendRecords(@RequestParam(value="lStatus",required=false,defaultValue="kz") String lStatus,
			@RequestParam(value="currentPageNo",required=false,defaultValue="1") Integer currentPageNo,
			HttpSession session) {

		logger.debug("进入getLendRecords====================================="+"lStatus"+lStatus+" currentPageNo"+currentPageNo);
		LendRecord lendRecord = new LendRecord();
		lendRecord.setPageSize(Constants.pageSize);
		lendRecord.setStarNum((currentPageNo-1)*Constants.pageSize);
		lendRecord.setuId(((User)session.getAttribute(Constants.USER_SESSION)).getuId());
		lendRecord.setlStatus(lStatus);
		HashMap<String,Object> resultMap =new HashMap<String,Object>();
		//获取出借记录详情
		List<LendRecord> lendRecords = lendRecordServiceImpl.getLendRecordBylStatus(lendRecord);
		logger.debug(lendRecords);
		//获取分页信息总数
		int totalCount = lendRecordServiceImpl.getLRecordTotalCount(lendRecord);
		PageSupport pageSupport = new PageSupport();
		pageSupport.setCurrentPageNo(currentPageNo);
		pageSupport.setPageSize(Constants.pageSize);
		pageSupport.setTotalCount(totalCount);
		pageSupport.setTotalPageCountByRs();
		logger.debug(lendRecords);
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		for(LendRecord record:lendRecords){
			//计算剩余期数
			if(TimeLag.DayTimeLag(formatter.format(record.getbBearingDate()))<=0){
				record.setbRemainTimelimit(TimeLag.MonthTimeLag(record.getbTimelimit(),formatter.format(record.getbBearingDate())));
			}else{
				record.setbRemainTimelimit(1+TimeLag.MonthTimeLag(record.getbTimelimit(),formatter.format(record.getbBearingDate())));
			}
			//待收本息(元)
			if(record.getbRepayment().trim().equals("月还息到期还本")){
				record.setlDuePriAndInt(record.getlAmount()*record.getbRate()/100/12*record.getbRemainTimelimit()+record.getlAmount());
			}else{
				record.setlDuePriAndInt((record.getlAmount()*record.getbRate()/100/12*Math.pow(1+record.getbRate()/100/12,record.getbRemainTimelimit())/(Math.pow(1+record.getbRate()/100/12,record.getbRemainTimelimit())-1))*record.getbRemainTimelimit());
			}
			logger.debug("已购买债权数额"+record.getlAmount()+" 利率"+record.getbRate()+" 剩余期数");
			//已收汇款(元)
			int lRecProAndIntOfMonth1=record.getbTimelimit()-record.getbRemainTimelimit();
			int lRecProAndIntOfMonth2=0;
			try {
				lRecProAndIntOfMonth2=1+TimeLag.MonthTimeLag(lRecProAndIntOfMonth1, TimeLag.subMonth(lRecProAndIntOfMonth1+1, formatter.format(record.getbBearingDate())));
				logger.debug("交易后起息时间："+TimeLag.subMonth(lRecProAndIntOfMonth1+1, formatter.format(record.getbBearingDate())));
				if(record.getbRepayment().trim().equals("月还息到期还本")){
					record.setlRecProAndInt(record.getlAmount()*record.getbRate()/100/12*(lRecProAndIntOfMonth1-lRecProAndIntOfMonth2));
				}else{
					record.setlRecProAndInt((record.getlAmount()*record.getbRate()/100/12*Math.pow(1+record.getbRate()/100/12,record.getbRemainTimelimit())/(Math.pow(1+record.getbRate()/100/12,record.getbRemainTimelimit())-1))*(lRecProAndIntOfMonth1-lRecProAndIntOfMonth2));
				}
				logger.debug("lRecProAndIntOfMonth1"+lRecProAndIntOfMonth1+" lRecProAndIntOfMonth2"+lRecProAndIntOfMonth2);
			} catch (ParseException e1) {
				e1.printStackTrace();
			}

			//剩余本金(元)
			if(record.getbRepayment().trim().equals("月还息到期还本")){
				record.setlDueCapital(record.getlAmount());
			}else{
				double capital=0;
				double lAmount = record.getlAmount();
				double repaymentOfMonth = (record.getlAmount()*record.getbRate()/100/12*Math.pow(1+record.getbRate()/100/12,record.getbRemainTimelimit())/(Math.pow(1+record.getbRate()/100/12,record.getbRemainTimelimit())-1));
				logger.debug(repaymentOfMonth+"==========================================================");
				for(int i=1;i<(lRecProAndIntOfMonth1-lRecProAndIntOfMonth2);i++){
					capital +=repaymentOfMonth-lAmount*record.getbRate()/100/12;
					lAmount=lAmount - (repaymentOfMonth-lAmount*record.getbRate()/100/12);
				}
				record.setlDueCapital(lAmount);
			}
			//下个回款日
			try {
				record.settRemittance(formatter.parse(TimeLag.subMonth(record.getbTimelimit(), formatter.format(record.getbBearingDate()))));
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		if(lendRecords!=null){
			resultMap.put("lendRecords", lendRecords);
			resultMap.put("pageSupport",pageSupport);
			logger.debug("pageSupport===================="+pageSupport);
		}else{
			resultMap.put("lendRecords","nodata");
		}
		logger.debug(lendRecords);
		return JSONArray.toJSONString(resultMap);
	}

	@ResponseBody
	@RequestMapping(value="/zhuanrang.json",method=RequestMethod.GET)
	public Object zhuanrang(@RequestParam(value="lid") Integer lid,
			@RequestParam(value="tTransferPrice")Double tTransferPrice,
			HttpSession session){
		LendRecord lendRecord = lendRecordServiceImpl.getLendRecordById(lid);
		lendRecord.setlStatus("zz");
		//创建新的转让专区标地信息
		TransferBid transferBid = new TransferBid();
		transferBid.setbTid(3);
		transferBid.setuId(((User)session.getAttribute(Constants.USER_SESSION)).getuId());
		transferBid.setbId(lendRecord.getbId());
		transferBid.setLid(lendRecord.getLid());
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Calendar c = Calendar.getInstance();
		/*	还款方式为：月还息到期还本(统一按这个)
			预期年化收益率=（利息+转让差价）/ 转让价格 /剩余天数*365
			注：转让差价=债权价格-转让价格*/
		c.setTime(bidServiceImpl.getBidById(lendRecord.getbId()).getbBearingDate());
		c.add(Calendar.MONTH,bidServiceImpl.getBidById(lendRecord.getbId()).getbTimelimit());
		int days = 0;
		try {
			days = (int) ((format.parse(format.format(c.getTime())).getTime()-(new Date()).getTime())/(1000*3600*24));
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
		double bRate=((lendRecord.getlExTotInterest()+lendRecord.getlAmount()-tTransferPrice)/tTransferPrice/days*365*100);
		transferBid.setbRate(bRate);  
		transferBid.settCapital(lendRecord.getlAmount());
		transferBid.settTransferPrice(tTransferPrice);
		transferBid.settReTraPrice(lendRecord.getlAmount());
		transferBid.settDate(new Date());
		try {
			transferBid.settRemittance(format.parse(TimeLag.subMonth(bidServiceImpl.getBidById(lendRecord.getbId()).getbTimelimit(), format.format(bidServiceImpl.getBidById(lendRecord.getbId()).getbBearingDate()))));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		transferBid.settFull("nofu");
		boolean flag=false;
		String json;
		try {
			flag=transferBidServiceImpl.wd_ZhuangRang(transferBid, lendRecord);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(flag){
			json="success";
		}else{
			json="fail";
		}
		return JSON.toJSONString(json);
	}
} 





