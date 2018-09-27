package cn.weidai.dao.lendRecord;
import cn.weidai.pojo.LendRecord;
import java.util.Date;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import cn.weidai.pojo.TransferBid;
import cn.weidai.pojo.LendRecord;
public interface LendRecordMapper {


    public List<LendRecord>  getLendRecord(@Param(value="uId")Integer uId,@Param(value="month")Integer month);

	/**根据债券状态和用户id查询出借记录
	 * @param lStatus
	 * @return
	 */
	public List<LendRecord> getLendRecordBylStatus(LendRecord lendRecord);

	/*
	 * 插入出借信息
	 */
	public int insertLendrecord(LendRecord lendRecord);
	

	/**点击购买标的增加出借记录
	 * @param lendRecord
	 * @return
	 */
	public int addLendRecord(LendRecord lendRecord);
	
	/**
	 * 根据出借记录的id查找出，出借信息
	 * @param lid
	 * @return
	 */
	public LendRecord getLendRecordById(int lid);
	
	/**根据出借记录查找分页查询出借记录条数
	 * @param lendRecord
	 * @return
	 */
	public int getLRecordTotalCount(LendRecord lendRecord); 

	
	/*
	 * 点击购买按钮，借款记录添加
	 */
	public int insertloanRecord(LendRecord lendRecord);
	
	/*
	 * 从lendRecord表中查询lid
	 */
	public LendRecord selectLidfromLendrecord(@Param("uId")Integer uId,@Param("lStatus")String lStatus);
	
	
	



	/**根据出借记录lid修改出借记录状态
	 * @param lendRecord
	 * @return
	 */
	public int modifLRecordById(LendRecord lendRecord);
	/**根据转让bId和status删除出借记录
	 * @param lendRecord
	 * @return
	 */
	public int delLRecord(int bId);
	/**根据UidTidBidDate查询lid
	 * @param lendRecord
	 * @return
	 */
	public int getLidByTUBD(LendRecord lendRecord);
	

	/*
	 * 借款记录有nz更新为kz
	 */
	
	public int updatelStatus();
	
	
	/*
	 * 从借款记录查询所有lStatus为kz
	 */
	
	public List<LendRecord> selectlendrecord();
	
	/**查询所有的债权转让记录
	 * @param uId
	 * @param lStatus
	 * @return
	 */

	/**查询所有的债权转让记录
	 * @param uId
	 * @param lStatus
	 * @return
	 */
	public List<LendRecord> getLendRecordToExcel(@Param("uId")Integer uId,@Param("lStatus")String lStatus);
	


	
	
	/**查询所有的债权转让记录
	 * @param uId
	 * @param lStatus
	 * @return
	 */

}
