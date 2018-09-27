package cn.weidai.service.transferBid;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.weidai.dao.fundRecord.FundRecordMapper;
import cn.weidai.dao.lendRecord.LendRecordMapper;
import cn.weidai.dao.middleman.MiddlemanMapper;
import cn.weidai.dao.settlement.SettlementMapper;
import cn.weidai.dao.transferBid.TransferBidMapper;
import cn.weidai.dao.user.UserMapper;
import cn.weidai.pojo.FundRecord;
import cn.weidai.pojo.LendRecord;
import cn.weidai.pojo.Middleman;
import cn.weidai.pojo.Settlement;
import cn.weidai.pojo.TransferBid;
import cn.weidai.pojo.User;

@Service
public class TransferBidServiceImpl implements TransferBidService {
	@Resource
	private TransferBidMapper transferBidMapper;
	@Resource
	private UserMapper userMapper;
	@Resource
	private LendRecordMapper lendRecordMapper;
	@Resource
	private	FundRecordMapper fundRecordMapper;
	@Resource
	private MiddlemanMapper middlemanMapper;
	@Resource
	private SettlementMapper settlementMapper;

	/**获取所有转让专区的标地，默认利率降序排列
	 * @param transferBid
	 * @return
	 */
	@Override
	public List<TransferBid> getTBidList(TransferBid transferBid) {
		return transferBidMapper.getTBidList(transferBid);
	}
	/**获得转让标地的数量
	 * @param transferBid
	 * @return
	 */     
	@Override
	public int getTBidTotalCount(TransferBid transferBid) {
		return transferBidMapper.getTBidTotalCount(transferBid);
	}
	/**根据转让标地tId获得标地详情信息
	 * @param tId
	 * @return
	 */
	@Override
	public TransferBid getTBidListById(int tId) {
		return transferBidMapper.getTBidListById(tId);
	}

	/* 
	 * 购买转让标的
	 * (non-Javadoc)
	 * @see cn.weidai.service.transferBid.TransferBidService#wdBuyTBid(cn.weidai.pojo.User, cn.weidai.pojo.Borrower, cn.weidai.pojo.TransferBid, cn.weidai.pojo.LendRecord, cn.weidai.pojo.FundRecord)
	 */
	@Override
	public synchronized boolean wd_BuyTBid (User buyUser,User sellUser,
			TransferBid transferBid, LendRecord buyLendRecord,LendRecord sellLendRecord,
			FundRecord fundRecord,Middleman middleman,Settlement settlement) throws Exception {
		if((transferBidMapper.getTBidListById(transferBid.gettId()).gettReTraPrice()-buyLendRecord.getlAmount())>=0){
			userMapper.modifUserById(buyUser);
			userMapper.modifUserById(sellUser);
			lendRecordMapper.addLendRecord(buyLendRecord);
			lendRecordMapper.addLendRecord(sellLendRecord);
			fundRecordMapper.addFundRecord(fundRecord);
			transferBidMapper.modifTraById(transferBid);
			middlemanMapper.addMiddleman(middleman);
			settlement.setLid(lendRecordMapper.getLidByTUBD(buyLendRecord));
			settlementMapper.addSettlement(settlement);
			if(transferBidMapper.getTBidListById(transferBid.gettId()).gettReTraPrice()==0){
				lendRecordMapper.delLRecord(transferBid.getbId());
			}
			return true;
		}else{
			return false;
		}
	}
	/* 债权转让到转让区
	 * (non-Javadoc)
	 * @see cn.weidai.service.transferBid.TransferBidService#wd_ZhuangRang(cn.weidai.pojo.TransferBid, cn.weidai.pojo.LendRecord)
	 */
	@Override
	public synchronized boolean wd_ZhuangRang(TransferBid transferBid, LendRecord lendRecord)
			throws Exception {
		if(lendRecordMapper.getLendRecordById(lendRecord.getLid()).getlStatus().equals("kz")){
			transferBidMapper.addTBid(transferBid);
			lendRecordMapper.modifLRecordById(lendRecord);
			settlementMapper.delSettlementByLid(lendRecord.getLid());
			return true;
		}
		return false;
	}

}
