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
@RequestMapping("/myzhanghu3")
public class Myzhanghu3Controller {

	private Logger logger=Logger.getLogger(Myzhanghu3Controller.class);

	
	@Resource
	private ReceivablesService receivablesServiceImpl;



	//收款明细展示功能
	@ResponseBody
	@RequestMapping(value="/myzhanghu3do.html",method=RequestMethod.POST)
	public Object myzhanghu3do(@RequestParam(value="rbTimelimit",required=false) String rbTimelimit,			
			HttpSession session			
			){			 
		logger.debug("进入zhitoudetaildo.html==========================================");
		return session;
		
	}
	
	
	
	
	
	
	
	

}









