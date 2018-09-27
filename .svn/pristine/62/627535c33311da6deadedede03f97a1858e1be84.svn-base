package cn.weidai.service.fundRecord;


import cn.weidai.pojo.FundRecord;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.weidai.pojo.FundRecord;


public interface FundRecordService {

	
	
	/*
	 * 购买优选智投后产生的资金记录
	 * @何小平
	 */
	public int insertFundRecord(FundRecord fundRecord);
	
	

	
	//根据id  月份查询数据
	public List<FundRecord> getFund(Integer uId,Integer month,Integer starNum);
	
	
	
	//查询数据的总条数
		public int getFund1(Integer uId,Integer month);

}
