package cn.weidai.dao.transferBid;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.weidai.pojo.TransferBid;

public interface TransferBidMapper {
	
	/**获取所有转让专区的标地，默认利率降序排列
	 * @param pageSize
	 * @return
	 */
	public List<TransferBid> getTBidList(TransferBid transferBid);
	
	/**获得转让标地的数量
	 * @param transferBid
	 * @return
	 */                                                                                                                   
	public int getTBidTotalCount(TransferBid transferBid);    
	
	/**根据转让标地tId获得标地详情信息
	 * @param tId
	 * @return
	 */
	public TransferBid getTBidListById(int tId);
	
	/**根据Id修改转让标的值
	 * @param id
	 * @param meney
	 * @return
	 */
	public int modifTraById(TransferBid transferBid);
	
	/**
	 * 增加转让债券
	 * @param transferBid
	 * @return
	 */
	public int addTBid(TransferBid transferBid);
}
                             