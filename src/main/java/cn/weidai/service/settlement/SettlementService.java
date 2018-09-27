package cn.weidai.service.settlement;

import java.util.List;

import cn.weidai.pojo.Borrower;
import cn.weidai.pojo.Middleman;
import cn.weidai.pojo.Settlement;
import cn.weidai.pojo.User;

public interface SettlementService {
	
	/**计算每个人汇款日可得利息
	 * @param settlement
	 * @return
	 */
	public List<Settlement> settleAccountsOfInterest(Settlement settlement);

	
	/**还款利息，金额结算
	 * @return
	 */
	public boolean wd_getSettlement(User users,Borrower  borrowers,Middleman middleman,Settlement settlements)throws Exception;



	/**点击购买按钮，添加结算记录
	 * @param settlement
	 * @return
	 */
	public int addSettlement(Settlement settlement);
	
	
	

	/**批量修改list集合
	 * @param settlement
	 * @return
	 */
	public int addSettlementList(List<User> userst)throws Exception;

	
	/*
	 * 批量插入settlementlist
	 */
	
	public int insertSettlementList(List<Settlement> Settlementlist2);
	
	
	/*
	 * 根据bId查询settlement的uId，下个回款日，债权本金
	 */
	
	public List<Settlement> selectsettlement(Integer bid);
	
	
}
