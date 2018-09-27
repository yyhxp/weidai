package cn.weidai.service.settlement;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.weidai.dao.borrower.BorrowerMapper;
import cn.weidai.dao.middleman.MiddlemanMapper;
import cn.weidai.dao.settlement.SettlementMapper;
import cn.weidai.dao.user.UserMapper;
import cn.weidai.pojo.Borrower;
import cn.weidai.pojo.Middleman;
import cn.weidai.pojo.Settlement;
import cn.weidai.pojo.User;
@Service
public class SettlementServiceImpl implements SettlementService {
	@Resource
	private SettlementMapper settlementMapper;
	@Resource
	private UserMapper userMapper;
	@Resource
	private BorrowerMapper borrowerMapper;
	@Resource
	private MiddlemanMapper middlemanMapper;
	/* 计算每个人汇款日可得利息
	 * (non-Javadoc)
	 * @see cn.weidai.service.settlement.SettlementService#settleAccountsOfInterest(cn.weidai.pojo.Settlement)
	 */
	@Override
	public List<Settlement> settleAccountsOfInterest(Settlement settlement) {
		return settlementMapper.settleAccountsOfInterest(settlement);
	}


	/* 还款利息，金额结算
	 * (non-Javadoc)
	 * @see cn.weidai.service.settlement.SettlementService#wd_getSettlement(java.util.List, java.util.List, java.util.List)
	 */
	@Override
	public boolean wd_getSettlement(User user,Borrower  borrower, Middleman middleman,Settlement settlement)throws Exception {
			userMapper.modifUserById(user);
			borrowerMapper.modifBorrowerById(borrower);
			middlemanMapper.addMiddleman(middleman);
			settlementMapper.modifySettlementById(settlement);
		return true;
	}
	
	/**点击购买按钮，添加结算记录
	 * @param settlement
	 * @return
	 */
	public int addSettlement(Settlement settlement){
		return settlementMapper.addSettlement(settlement);
	}

	/* (non-Javadoc)
	 * @see cn.weidai.service.settlement.SettlementService#addSettlementList(java.util.List)
	 */
	@Override
	public int addSettlementList(List<User> userst) throws Exception {
		return settlementMapper.addSettlementList(userst);
	}


	@Override
	public int insertSettlementList(List<Settlement> Settlementlist2) {
		// TODO Auto-generated method stub
		return settlementMapper.insertSettlementList(Settlementlist2);
	}


	@Override
	public List<Settlement> selectsettlement(Integer bid) {
		// TODO Auto-generated method stub
		return settlementMapper.selectsettlement(bid);
	}


	

}
