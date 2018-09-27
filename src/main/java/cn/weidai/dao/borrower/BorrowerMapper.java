package cn.weidai.dao.borrower;

import org.apache.ibatis.annotations.Param;

import cn.weidai.pojo.Borrower;

/**
 * @author 6Q
 * 2018-8-21上午9:59:41
 */
public interface BorrowerMapper {
	/**根据Id修改借款人信息
	 * @param borrower
	 * @return
	 */
	public int modifBorrowerById(Borrower borrower);

	
	/*
	 * 购买智投信息，添加借款用户信息
	 */
	
	public int modifyBorrowerByzhitoubId(@Param("bId")Integer bId,@Param("boBalance")Double boBalance);
	
	

	
	/**根据boId获取借款人信息
	 * @param boId
	 * @return
	 */
	public Borrower getBorrowerById(int boId);

}
