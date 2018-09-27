package cn.weidai.service.transferBid;

import java.util.List;

import cn.weidai.pojo.FundRecord;
import cn.weidai.pojo.LendRecord;
import cn.weidai.pojo.Middleman;
import cn.weidai.pojo.Settlement;
import cn.weidai.pojo.TransferBid;
import cn.weidai.pojo.User;

public interface TransferBidService {

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
	
	/**
	 * 购买转让标的
	 * @param user
	 * @param borrower
	 * @param transferBid
	 * @param lendRecord
	 * @param fundRecord
	 * @return
	 */
	public boolean wd_BuyTBid(User buyUser,User sellUser,TransferBid transferBid,LendRecord buyLendRecord,LendRecord sellLendRecord,FundRecord fundRecord,Middleman middleman,Settlement settlement) throws Exception;
	
	/**债权转让到转让区
	 * @param transferBid
	 * @param lendRecord
	 * @return
	 * @throws Exception
	 */
	public boolean wd_ZhuangRang(TransferBid transferBid,LendRecord lendRecord)throws Exception;
}
