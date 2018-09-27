package cn.weidai.service.Receivables;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import cn.weidai.pojo.LendRecord;
import cn.weidai.pojo.Receivables;
@Service
public interface ReceivablesService {
	
	
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
