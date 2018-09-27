package cn.weidai.controller;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import cn.weidai.pojo.Bid;
import cn.weidai.service.bid.BidServiceImpl;
import com.alibaba.fastjson.JSON;
@Controller
@RequestMapping("/bids")
public class BidsController {
	@Resource
	private BidServiceImpl bidServiceImpl;
	/*
	 * 散标
	 * */
	@RequestMapping(value="/bid",method=RequestMethod.GET)
	@ResponseBody
	//,method=RequestMethod.GET
	public Object zhBid(Bid bid,@RequestParam(value="month" ,required=false) Integer month
		){
		System.out.println("月份是"+month);
		System.out.println("hdaushduh");
		String jons;
		List<Bid> bids=bidServiceImpl.zhgetsblb(month);
		jons=JSON.toJSONString(bids);
		System.out.println(jons);
		return jons;
	}
	@RequestMapping(value="/zhbids.html")
	public String zhBids(){
		System.out.println("进入方法");
		return "sanbiao";
	}	

}
