package cn.weidai.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.weidai.pojo.Bid;
import cn.weidai.pojo.TransferBid;
import cn.weidai.service.bid.BidServiceImpl;
import cn.weidai.service.transferBid.TransferBidServiceImpl;
import cn.weidai.tools.Constants;
import cn.weidai.tools.PageSupport;
import cn.weidai.tools.TimeLag;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;

/**
 * 
 * @author 6Q
 * 2018-8-10下午4:09:44
 */
@Controller
@RequestMapping("/traBid")
public class TraBidController {
	private Logger logger = Logger.getLogger(TraBidController.class);
	@Resource
	public BidServiceImpl bidServiceImpl=null;
	@Resource
	public TransferBidServiceImpl transferBidServiceImpl=null; 
	@ResponseBody
	@RequestMapping(value="/getYouBid.json",method=RequestMethod.GET)
	public Object getYouBid(){
		logger.debug("进入getYouBid()==========================================");
		String json;
		List<Bid> bids = bidServiceImpl.getYouBid();
		json=JSON.toJSONString(bids);
		logger.debug(json);
		return json;
	}
	@ResponseBody
	@RequestMapping(value="/getSixBid.json",method=RequestMethod.GET)
	public Object getSixBid(){
		logger.debug("进入getSixBid()========================================");
		String json;
		List<Bid> bids = bidServiceImpl.getSixBid();
		json=JSON.toJSONString(bids);
		logger.debug(bids);
		return json;
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

	
}
