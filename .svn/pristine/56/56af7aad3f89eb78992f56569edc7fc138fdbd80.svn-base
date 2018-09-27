package cn.weidai.service.borrower;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.weidai.dao.borrower.BorrowerMapper;
import cn.weidai.pojo.Borrower;

@Service
public class BorrowerServiceImpl implements BorrowerService {
	@Resource
	private BorrowerMapper borrowerMapper;

	@Override
	public int modifyBorrowerByzhitoubId(Integer bId,Double boBalance) {
		// TODO Auto-generated method stub
		return borrowerMapper.modifyBorrowerByzhitoubId(bId, boBalance);
	}

	
	
	
	
	


	@Override
	public Borrower getBorrowerById(int boId) {
		return borrowerMapper.getBorrowerById(boId);
	}

}
