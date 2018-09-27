package cn.weidai.dao.receivables;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.weidai.pojo.Bid;
import cn.weidai.pojo.LendRecord;
import cn.weidai.pojo.Receivables;
import cn.weidai.pojo.Settlement;
import cn.weidai.pojo.TransferBid;

public interface ReceivablesMapper {
	
	/*
	 * 点击购买按钮，添加一条收款明细
	 */
	
	public int addReceivables(Receivables receivables);
	
	/*
	 * 获取收款明细
	 */
	
	/*public List<Receivables> getReceivablesList(Receivables receivables);*/
	
	
	/*
	 * 批量插入settlementlist
	 */
	
	public int insertReceivables(List<Receivables> receivableslist);
	
	
}
