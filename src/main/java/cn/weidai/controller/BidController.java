package cn.weidai.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;

import cn.weidai.dao.settlement.SettlementMapper;
import cn.weidai.pojo.Base;
import cn.weidai.pojo.Bid;
import cn.weidai.pojo.FundRecord;
import cn.weidai.pojo.LendRecord;
import cn.weidai.pojo.Receivables;
import cn.weidai.pojo.Settlement;
import cn.weidai.pojo.TransferBid;
import cn.weidai.pojo.User;
import cn.weidai.service.Receivables.ReceivablesService;
import cn.weidai.service.bid.BidService;
import cn.weidai.service.fundRecord.FundRecordService;
import cn.weidai.service.lendRecord.LendRecordService;
import cn.weidai.service.settlement.SettlementService;
import cn.weidai.service.user.UserService;
import cn.weidai.tools.Constants;
import cn.weidai.tools.PageSupport;
import cn.weidai.tools.TimeLag;

@Controller
@RequestMapping("/bid")
public class BidController {

	private Logger logger=Logger.getLogger(BidController.class);

	@Resource
	private  BidService bidServiceImpl;

	@Resource
	private LendRecordService lendRecordServiceImpl;

	@Resource
	private UserService userServiceImpl;

	@Resource
	private ReceivablesService receivablesServiceImpl;

	@Resource
	private FundRecordService fundRecordServiceImpl;

	@Resource
	private SettlementService settlementServiceImpl;

	@RequestMapping(value="/zhitou.html",method=RequestMethod.GET)
	public String zhitou(){	
		logger.debug("这是zhitou controller======————————————————————————————————————————————");	
		return "zhitou";
	}


	@RequestMapping(value="/xBid.html",method=RequestMethod.GET)
	public String xBid(){	
		logger.debug("这是xBid controller======————————————————————————————————————————————");	
		return "x-tou";
	}


	@RequestMapping(value="/sanbiao.html",method=RequestMethod.GET)
	public String sanbiao(){	
		logger.debug("这是sanbaio controller======————————————————————————————————————————————");	
		return "sanbiao";
	}

	
	@ResponseBody
	@RequestMapping(value="/getzhitou.json",method=RequestMethod.GET,produces = {"application/json;charset=utf-8"})
	public Object getzhitou( ){
		logger.debug("进入getzhitou.json()==========================================");

		String json;
		List<Bid>  bidList = bidServiceImpl.getzhitouBid(null,null);		

				

		if(null==bidList||"".equals(bidList)){
			return "nodata";
		}
		json=JSON.toJSONString(bidList);		
		return json;
	}



	@ResponseBody
	@RequestMapping(value="/getzhitou1.json",method=RequestMethod.GET,produces = {"application/json;charset=utf-8"})
	public Object getzhitou1(){
		logger.debug("进入getzhitou1()==========================================");
		String json;
		List<Bid>  bidList=new ArrayList<Bid>();
		bidList = bidServiceImpl.getzhitouBid1();

		if(null==bidList||"".equals(bidList)){
			return "nodata";
		}
		json=JSON.toJSONString(bidList);
		logger.debug(json);
		return json;
	}


	@ResponseBody
	@RequestMapping(value="/getzhitou2.json",method=RequestMethod.GET,produces = {"application/json;charset=utf-8"})
	public Object getzhitou2(){
		logger.debug("进入getzhitou2()==========================================");
		String json;
		List<Bid>  bidList=new ArrayList<Bid>();
		bidList = bidServiceImpl.getzhitouBid2();

		if(null==bidList||"".equals(bidList)){
			return "nodata";
		}
		json=JSON.toJSONString(bidList);
		logger.debug(json);
		return json;
	}


	@ResponseBody
	@RequestMapping(value="/getzhitou3.json",method=RequestMethod.GET,produces = {"application/json;charset=utf-8"})
	public Object getzhitou3(){
		logger.debug("进入getzhitou3()==========================================");
		String json;
		List<Bid>  bidList=new ArrayList<Bid>();
		bidList = bidServiceImpl.getzhitouBid3();

		if(null==bidList||"".equals(bidList)){
			return "nodata";
		}
		json=JSON.toJSONString(bidList);
		logger.debug(json);
		return json;
	}


	/*
	 * 返回购买标的页面
	 */
	@RequestMapping(value="/zhitouDetail.html",method=RequestMethod.GET)
	public String buy(){	
		logger.debug("这是buy  controller======————————————————————————————————————————————");	
		return "zhitouDetail";
	}

	/*
	 * 返回购买标的详细信息——json类型的数据
	 */

	@ResponseBody
	@RequestMapping(value="/getzhitouDetail.json",method=RequestMethod.GET)
	public Object getzhitouDetail(@RequestParam(value="bId",required=false) Integer bId){
		logger.debug("进入getzhitouDetail()==========================================");
		String json;			
		/*if(null==bId||"".equals(bId)){
			return "nodata";
		}*/
		Bid bid= bidServiceImpl.getBidById(bId);

		logger.debug(bid+"-----------------------------------------");		
		json=JSON.toJSONString(bid);
		logger.debug(json);
		return json;
	}



	//购买优选智投标的功能
	@ResponseBody
	@RequestMapping(value="/zhitoudetaildo.html",method=RequestMethod.POST)
	public Object zhitoudetaildo(@RequestParam(value="bId",required=false) String bId,
			@RequestParam(value="inputmoney",required=false) String inputmoney,
			@RequestParam(value="uId",required=false) String uId,
			@RequestParam(value="exinterest",required=false) String exinterest,
			@RequestParam(value="uBalance",required=false) String uBalance,
			@RequestParam(value="bTimelimit",required=false) String bTimelimit,
			@RequestParam(value="bCanBeCastMoney",required=false) String bCanBeCastMoney,
			@RequestParam(value="bProjectTotolMoney",required=false) String bProjectTotolMoney,
			@RequestParam(value="lStatus",required=false) String lStatus,
			HttpSession session			
			){			

		logger.debug("进入zhitoudetaildo.html==========================================");
		String json;


		//bid剩余可投金额的减少相应数额update方法

		Double _inputmoney=0.00;
		Double _bCanBeCastMoney=0.00;
		Double  bCanBeCastMoney1=0.00;
		Double _uBalance=0.00;
		Double uBalance1=0.00;
		Integer _bId=0;
		Double _exinterest=0.00;
		Integer _uId=0;
		Integer _bTimelimit=0;
		
		if(uBalance !=null && uId !=null ){
			_uId=Integer.valueOf(uId);
			_uBalance=Double.valueOf(uBalance); 
		}else{
			return "unregister";
		}
		logger.debug("项目总额："+bProjectTotolMoney);
		Double boBalance=0.00;
		if(bProjectTotolMoney !=null){
			boBalance=Double.valueOf(bProjectTotolMoney);
		}

		if(bCanBeCastMoney !=null && inputmoney !=null &&
				bId !=null &&_bTimelimit !=null){
			_inputmoney=Double.valueOf(inputmoney);		
			_bCanBeCastMoney=Double.valueOf(bCanBeCastMoney);		 				
			_exinterest=Double.valueOf(exinterest);
			_bId=Integer.valueOf(bId);
		}

		//剩余可投金额减少输入的金额
		bCanBeCastMoney1=_bCanBeCastMoney-_inputmoney;
		
		if(_uBalance==0){
			return "yuebuzu";
		}
		//用户余额减少可投的金额
		uBalance1=_uBalance-_inputmoney;

		

		if(_inputmoney-_uBalance>0 || _inputmoney<500|| _inputmoney>50000){
			return "exinput";
		}

		boolean flag=false;
		System.out.println("lStatus是"+lStatus);
		try{
			flag=bidServiceImpl.wd_BuyZhitouBid(_bId, _inputmoney, _uId, uBalance1,
					_bTimelimit, _bCanBeCastMoney,bCanBeCastMoney1,boBalance,_exinterest,
				 lStatus,session	
					     );
		}catch (Exception e){
			e.printStackTrace();
		}	
		
		if(flag){							
			return "success";

		}else{
			return "failed";
		}


	}
	


}









