package cn.weidai.dao.fundRecord;



import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.weidai.pojo.Bid;


import cn.weidai.pojo.FundRecord;


public interface FundRecordMapper {
/*
 * zhengheng
 * 资金管理
 * */
	
	public List<FundRecord> getFund(@Param(value="uId")Integer uId,@Param(value="month")Integer month,@Param(value="starNum")Integer starNum);
	/**增加资金记录
	 * @return
	 */
	//查询数据
	public int addFundRecord(FundRecord fundRecord);

	
	/*
	 * 购买优选智投后产生的资金记录
	 * @何小平
	 */
	public int insertFundRecord(FundRecord fundRecord);
	
	

	//查询数据的总条数
	public int getFund1(@Param(value="uId")Integer uId,@Param(value="month")Integer month);

}
