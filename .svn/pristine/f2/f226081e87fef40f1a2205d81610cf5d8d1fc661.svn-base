package cn.weidai.service.bid;

import cn.weidai.pojo.Bid;
import cn.weidai.pojo.FundRecord;
import cn.weidai.pojo.LendRecord;
import cn.weidai.pojo.Receivables;
import cn.weidai.pojo.Settlement;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
public interface BidService {
/*
 * 查询账户总金额
 * 
 * */
	public Bid getBid(int uId);
	/**
	 * 获取最近新增的优先智投债券，展示在首页界面
	 * @return
	 */
	public List<Bid> getYouBid();
	/**获得最近新增的6标地
	 * @return
	 */
	public List<Bid> getSixBid();
	
	/*@author:何小平
	 * 功能模块：优选智投标信息的展示
	 * 方法：从数据库查询
	 */
	
	public List<Bid>getzhitouBid(Integer startNum,Integer pageSize);
	
	/*<!--获取智投标的信息总条数！  -->*/
	public int getztTotalCount();
	
	
	
	/*@author:何小平
	 * 功能模块：优选智投标的信息查询功能——跟据项目期限小于3个月进行查询
	 * 方法：从数据库查询
	 */
	
	public List<Bid>getzhitouBid1();
	
	/*@author:何小平
	 * 功能模块：优选智投标的信息查询功能——跟据项目期限3-12个月进行查询
	 * 方法：从数据库查询
	 */
	
	public List<Bid>getzhitouBid2();
	
	
	/*@author:何小平
	 * 功能模块：优选智投标的信息查询功能——跟据项目期限12个月以上进行查询
	 * 方法：从数据库查询
	 */
	
	public List<Bid>getzhitouBid3();
	
	
	/*@author:何小平
	 * 功能模块：散标标的信息前台展示
	 * 方法：从数据库查询
	 */
	
	
	/*
	 * 通过标的id获取标的详细信息
	 */
	public Bid getBidById(int bId);
	
	
	 /*
	   * 点击优选智投购买按钮，该标的剩余可投金额减少相应数额
	   * 何小平
	   */
		public int updateMoneyByBid(Integer bId,Double bCanBeCastMoney);
		/*
		 * 点击购买优选智投标后产生的操作
		 */
		
		public boolean wd_BuyZhitouBid(Integer bId, Double inputmoney, Integer uId,
				 Double uBalance, Integer bTimelimit,
				Double _bCanBeCastMoney,Double bCanBeCastMoney1,
				Double boBalance,
				Double exinterest,String lStatus,
				HttpSession session	
				);

	

	/*
	 * 散标
	 * */
	public List<Bid> zhgetsblb(Integer month);
	
	public int updatebfullByBid(@Param("bId")Integer bId);
	

}
