package cn.weidai.controller;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.weidai.service.bid.BidService;


@Controller
@RequestMapping("/ditu")
public class DituController {
	
	
private Logger logger=Logger.getLogger(BidController.class);
	
	@Resource
	private  BidService bidServiceImpl;
	
	@RequestMapping(value="/ditu.html",method=RequestMethod.GET)
	public String zhitou(){	
		logger.debug("这是ditu controller======————————————————————————————————————————————");	
		return "ditu";
	}
	
	

}
