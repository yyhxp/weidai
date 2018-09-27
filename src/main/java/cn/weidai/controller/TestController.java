package cn.weidai.controller;
import java.text.DecimalFormat;
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
import cn.weidai.pojo.Bid;
import cn.weidai.pojo.FundRecord;
import cn.weidai.pojo.LendRecord;
import cn.weidai.pojo.User;
import cn.weidai.service.bid.BidServiceImpl;
import cn.weidai.service.fundRecord.FundRecordServiceImpl;
import cn.weidai.service.lendRecord.LendRecordServiceImpl;
import cn.weidai.service.user.UserServiceImpl;
import cn.weidai.tools.Constants;
import cn.weidai.tools.PageSupport;

@Controller
@RequestMapping("/test")
public class TestController {
	private Logger logger = Logger.getLogger(TestController.class);
	@Resource
	private UserServiceImpl userServiceImpl;
	@Resource
	private BidServiceImpl bidService;
	@Resource
	private FundRecordServiceImpl fund;
	@Resource
	private LendRecordServiceImpl lend;
	@RequestMapping(value="/index.html",method=RequestMethod.GET)
	public String index(){
		return "index";
	}
	@RequestMapping("/zhuce")
	public String test(){
		return "userinfo";
	}
	//跳转个人中心
	//账户总览
	@RequestMapping(value="/personage.html")
	public String personage( @RequestParam(value="bid" ,required=false)Bid bid,Model modle,HttpSession session){
		//通过登入获得用户对象
		User user=(User)session.getAttribute(Constants.USER_SESSION);
		
		if(user!=null){
			user=userServiceImpl.getUserTest1(user.getuId());
			bid=bidService.getBid(user.getuId());
			double  assets= user.getuBalance()+bid.getbProjectTotolMoney();
			DecimalFormat df = new DecimalFormat("#.00");
			String assetss=df.format(assets);
			bid.setAssets(Double.parseDouble(assetss));
			System.out.println("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"+assets);
			logger.info(user.getrName());
			modle.addAttribute("user",user);
			modle.addAttribute("bid",bid);
			return "myzhanghu";
		}
		return "login";
	}
	
	
	
	
	//资金管理JAJX
	@RequestMapping(value="/management",method=RequestMethod.GET)
	@ResponseBody
	public Object zhmanagement(User user,HttpSession session,@RequestParam(value="month" ,required=false) Integer month,
			@RequestParam(value="currentPageNo" ,required=false,defaultValue="1")Integer currentPageNo ){
		PageSupport page=new PageSupport();
		System.out.println("这个是日期"+month);
		String json;
		user=(User)session.getAttribute(Constants.USER_SESSION);
		System.out.println(user.getuId());
		int totalCount=fund.getFund1(user.getuId(), month);
		System.out.println("总数"+totalCount);
			//查询的总数
			page.setPageSize(Constants.pageSize);
			page.setTotalCount(totalCount);
			System.out.println("总数"+page.getCurrentPageNo());
			System.out.println("页面容量"+page.getPageSize());
			//页面容量
			//总页码
			HashMap<String, Object> tota=new HashMap<String, Object>();
			List<FundRecord> funde= fund.getFund(user.getuId(),month,(currentPageNo-1)*2);
			for(FundRecord fund:funde){
				Double se=fund.getfTranAmount();
				Double ce=fund.getbProjectTotolMoney();
				fund.setfAfterTranAmount(ce-se);
			}
			tota.put("funde", funde);
			tota.put("page", page);
			json=JSON.toJSONString(tota);
			System.out.println(json);
		/*User user=(User)session.getAttribute(Constants.USER_SESSION);
		funds=fund.getFund(user.getuId());
		modle.addAttribute("fund", funds);*/
		return json;
	}
	//资金管理
	@RequestMapping("/managements")
	public String zhanghu(HttpSession session,Model model){
		System.out.println("进入方法");
		User user=(User)session.getAttribute(Constants.USER_SESSION);
		model.addAttribute("user", user);
		return "myzhanghu1";
	}
	
	
	//出借记录
	@RequestMapping(value="/record",method=RequestMethod.GET)
	@ResponseBody
	public String zhrecord(HttpSession session,@RequestParam(value="month" ,required=false) Integer month){
		System.out.println("月份"+month);
		String json;
		User user=(User)session.getAttribute(Constants.USER_SESSION);
	/*	//总数量
		int total= lend.getLendRecord1(user.getuId());
		//总页码
		int paging=total/1;*/
		System.out.println(user.getrName());
		
		List<LendRecord> lends=lend.getLendRecord(user.getuId(),month);
		for(LendRecord l:lends){
			System.out.println("项目名称"+l.getbProjectCode());
			System.out.println("交易时间"+l.getlDate());
			System.out.println("计息时间"+l.getbBearingDate());
			double ke=l.getLendMoney();
			double kz=l.getbRate();
			double sz=(kz/1000);
			l.setExpected(ke*sz);
			System.out.println("投资本金(元)"+l.getLendMoney());
			System.out.println("收益"+l.getExpected());
			System.out.println("利率"+l.getbRate());
			System.out.println("期限------------------------------------------------------"+l.getbTimelimit());
			
						
		}
		System.out.println("你好---------------------");
		json=JSON.toJSONString(lends);
		System.out.println(json);
		return json;
	}
	
	//出借记录
		@RequestMapping(value="/records")
		public String zhrecord(HttpSession session,Model model){
			User user=(User)session.getAttribute(Constants.USER_SESSION);
			model.addAttribute("user", user);
			return "myzhanghu2";
		}
	//收款明细
	@RequestMapping(value="/gathering")
	public String zhgathering(){
		return "myzhanghu3";
		
		
		
	}
}
