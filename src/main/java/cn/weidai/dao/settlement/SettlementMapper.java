package cn.weidai.dao.settlement;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.weidai.pojo.Settlement;
import cn.weidai.pojo.User;

public interface SettlementMapper {
	/**计算每个人汇款日可得利息
	 * @param settlement
	 * @return
	 */
	public List<Settlement> settleAccountsOfInterest(Settlement settlement);
	
	/**刷新下次需结算的汇款日和利息
	 * @param settlement
	 * @return
	 */
	public int modifySettlementById(Settlement settlement);
	
	/**根据出借记录lid删除预结算记录
	 * @param lid
	 * @return
	 */
	public int delSettlementByLid(int lid);
	/**添加结算记录
	 * @param settlement
	 * @return
	 */
	public int addSettlement(Settlement settlement);
	
	/**批量修改list集合
	 * @param settlement
	 * @return
	 */
	public int addSettlementList(List<User> userst);

	
	/*
	 * 批量插入settlementlist
	 */
	
	public int insertSettlementList(List<Settlement> Settlementlist2);
	
	
	/*
	 * 根据bId查询settlement的uId，下个回款日，债权本金
	 */
	
	public List<Settlement> selectsettlement(@Param("bid")Integer bid);
	
	
	
	
}
