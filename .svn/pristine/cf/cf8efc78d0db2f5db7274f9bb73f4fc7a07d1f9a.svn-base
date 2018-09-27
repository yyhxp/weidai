package cn.weidai.service.lendRecord;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import cn.weidai.dao.lendRecord.LendRecordMapper;
import cn.weidai.pojo.LendRecord;
import cn.weidai.tools.PageSupport;

@Service
public class LendRecordServiceImpl implements LendRecordService {
	@Resource
	private LendRecordMapper lendRecordMapper;
	
	@Override
	public List<LendRecord> getLendRecord(Integer uId,Integer month) {
		return lendRecordMapper.getLendRecord(uId,month);
	}
	/* 根据债券状态和用户id查询出借记录
	 * (non-Javadoc)
	 * @see cn.weidai.service.lendRecord.LendRecordService#getLendRecordBylStatus(java.lang.String, java.lang.Integer)
	 */
	public List<LendRecord> getLendRecordBylStatus(LendRecord lendRecord) {
		return lendRecordMapper.getLendRecordBylStatus(lendRecord);
	}

	//插入出借信息
	@Override
	public int insertLendrecord(LendRecord lendRecord) {
		// TODO Auto-generated method stub
		return lendRecordMapper.insertLendrecord(lendRecord);
	}
	

	/* 根据出借记录的id查找出，出借信息
	 * (non-Javadoc)
	 * @see cn.weidai.service.lendRecord.LendRecordService#getLendRecordById(int)
	 */
	@Override
	public LendRecord getLendRecordById(int lid) {
		return lendRecordMapper.getLendRecordById(lid);
	}
	/* 根据出借记录查找分页查询出借记录条数
	 * (non-Javadoc)
	 * @see cn.weidai.service.lendRecord.LendRecordService#getLRecordTotalCount(cn.weidai.pojo.LendRecord)
	 */
	@Override
	public int getLRecordTotalCount(LendRecord lendRecord) {
		return lendRecordMapper.getLRecordTotalCount(lendRecord);
	}


	

	@Override
	public LendRecord selectLidfromLendrecord(Integer uId, String lStatus) {
		// TODO Auto-generated method stub
		return lendRecordMapper.selectLidfromLendrecord(uId, lStatus);
	}

	
	@Override
	public int updatelStatus() {
		// TODO Auto-generated method stub
		return lendRecordMapper.updatelStatus();
	}

	/* 查询所有的债权转让记录
	 * (non-Javadoc)
	 * @see cn.weidai.service.lendRecord.LendRecordService#getLendRecordToExcel(java.lang.Integer, java.lang.String)
	 */
	@Override
	public List<LendRecord> getLendRecordToExcel(Integer uId, String lStatus) {
		return lendRecordMapper.getLendRecordToExcel(uId, lStatus);
	}

	/*
	 * 从借款记录查询所有lStatus为kz
	 */
	
	public List<LendRecord> selectlendrecord(){
		return lendRecordMapper.selectlendrecord();
		
	}

	

	
	
}



	


