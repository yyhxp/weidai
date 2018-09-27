package cn.weidai.service.fundRecord;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.weidai.dao.fundRecord.FundRecordMapper;

import cn.weidai.pojo.FundRecord;

import cn.weidai.pojo.FundRecord;
import cn.weidai.pojo.User;


@Service
public class FundRecordServiceImpl implements FundRecordService {
	@Resource
	private FundRecordMapper funRecordMapper;


	@Override
	public int insertFundRecord(FundRecord fundRecord) {
		// TODO Auto-generated method stub
		return funRecordMapper.insertFundRecord(fundRecord);
	}


	@Override
	public List<FundRecord> getFund(Integer uId,Integer month,Integer starNum) {
		System.out.println("这是service实现类");
		return funRecordMapper.getFund(uId,month,starNum);
	}

	@Override
	public int getFund1(Integer uId,Integer month) {
		return funRecordMapper.getFund1(uId, month);
	}

}
